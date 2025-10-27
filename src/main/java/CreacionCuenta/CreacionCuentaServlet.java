package CreacionCuenta;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.*;

@WebServlet("/CreacionCuentaServlet")
public class CreacionCuentaServlet extends HttpServlet {

    private static final String URL = "jdbc:mysql://localhost:3306/UsuariosSpecialized?characterEncoding=latin1";
    private static final String USER = "root";
    private static final String PASSWORD = "mysql";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");

        if ("registrar".equals(accion)) {
            registrarUsuario(request, response);
        } else if ("autenticar".equals(accion)) {
            autenticarUsuario(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Acción no válida o parámetro 'accion' ausente");
        }
    }
    

    private void registrarUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String correo = request.getParameter("correo");
        String contraseña = request.getParameter("contraseña");

        if (nombre == null || apellido == null || correo == null || contraseña == null ||
            nombre.isEmpty() || apellido.isEmpty() || correo.isEmpty() || contraseña.isEmpty()) {
            request.setAttribute("errorRegistro", "Todos los campos son obligatorios.");
            request.getRequestDispatcher("/registro.jsp").forward(request, response);
            return;
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD)) {
                String sql = "INSERT INTO UsuariosSpecialized (nombre, apellido, correo, contraseña) VALUES (?, ?, ?, ?)";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, nombre);
                ps.setString(2, apellido);
                ps.setString(3, correo);
                ps.setString(4, contraseña);
                ps.executeUpdate();

                response.sendRedirect("login.jsp"); // Después de registrar, va a login
            }
        } catch (SQLIntegrityConstraintViolationException e) {
            // Este error se lanza si el correo ya existe por la restricción UNIQUE
            request.setAttribute("errorRegistro", "El correo electrónico ya está registrado.");
            request.getRequestDispatcher("/registro.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error inesperado");
        }
    }

    private void autenticarUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String correo = request.getParameter("correo");
        String contraseña = request.getParameter("contraseña");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD)) {
                String sql = "SELECT nombre, apellido FROM UsuariosSpecialized WHERE correo = ? AND contraseña = ?";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, correo);
                ps.setString(2, contraseña);
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    String nombre = rs.getString("nombre");
                    String apellido = rs.getString("apellido");

                    HttpSession session = request.getSession();
                    session.setAttribute("usuario", correo);
                    session.setAttribute("nombre", nombre);
                    session.setAttribute("apellido", apellido);

                    response.sendRedirect("PaginaPrincipal.jsp");
                } else {
                    request.setAttribute("errorLogin", "Correo o contraseña son incorrectos.");
                    request.getRequestDispatcher("/login.jsp").forward(request, response);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error inesperado");
        }
    }
}
