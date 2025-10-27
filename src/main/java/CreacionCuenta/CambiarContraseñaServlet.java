package CreacionCuenta;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class CambiarContraseña
 */
@WebServlet("/CambiarContrasenaServlet")
public class CambiarContraseñaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	  private static final String URL = "jdbc:mysql://localhost:3306/UsuariosSpecialized?characterEncoding=latin1";
	    private static final String USER = "root";
	    private static final String PASS = "mysql";

	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {

	        int idUsuario = 1; // ⚠️ OJO: deberías obtenerlo de sesión o del login
	        String contrasenaActual = request.getParameter("contrasenaActual");
	        String nuevaContrasena = request.getParameter("nuevaContrasena");
	        String confirmarContrasena = request.getParameter("confirmarContrasena");

	        try (Connection conn = DriverManager.getConnection(URL, USER, PASS)) {
	            
	            // 1. Verificar contraseña actual
	            String sqlSelect = "SELECT contraseña FROM UsuariosSpecialized WHERE id = ?";
	            PreparedStatement psSelect = conn.prepareStatement(sqlSelect);
	            psSelect.setInt(1, idUsuario);
	            ResultSet rs = psSelect.executeQuery();

	            if (rs.next()) {
	                String contrasenaBD = rs.getString("contraseña");

	                if (!contrasenaBD.equals(contrasenaActual)) {
	                    request.setAttribute("error", "La contraseña actual no coincide.");
	                    request.getRequestDispatcher("CambiarContraseña.jsp").forward(request, response);
	                    return;
	                }
	            }

	            // 2. Validar que la nueva y confirmación coinciden
	            if (nuevaContrasena.length() < 4 || nuevaContrasena.length() > 12) {
	                request.setAttribute("error", "La contraseña debe tener entre 4 y 12 caracteres.");
	                request.getRequestDispatcher("CambiarContraseña.jsp").forward(request, response);
	                return;
	            }

	            if (!nuevaContrasena.equals(confirmarContrasena)) {
	                request.setAttribute("error", "Las contraseñas no coinciden.");
	                request.getRequestDispatcher("CambiarContraseña.jsp").forward(request, response);
	                return;
	            }


	            // 3. Actualizar la contraseña
	            String sqlUpdate = "UPDATE UsuariosSpecialized SET contraseña = ? WHERE id = ?";
	            PreparedStatement psUpdate = conn.prepareStatement(sqlUpdate);
	            psUpdate.setString(1, nuevaContrasena); // se guarda directo
	            psUpdate.setInt(2, idUsuario);

	            int filas = psUpdate.executeUpdate();

	            if (filas > 0) {
	                request.setAttribute("mensaje", "Contraseña actualizada correctamente.");
	            } else {
	                request.setAttribute("error", "No se pudo actualizar la contraseña.");
	            }

	            request.getRequestDispatcher("login.jsp").forward(request, response);

	            //ACA ES DONDE LE DECIMOS A DONDE QUIERE QUE VALLA SIEMPRE Y CUANDO CAMBIE SU CONTRASEÑA.
	            
	            
	            
	        } catch (SQLException e) {
	            e.printStackTrace();
	            request.setAttribute("error", "Error en la base de datos: " + e.getMessage());
	            request.getRequestDispatcher("CambiarContraseña.jsp").forward(request, response);
	        }
	    }}