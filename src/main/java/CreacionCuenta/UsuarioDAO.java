package CreacionCuenta;

import java.sql.*;


//ESTE USUARIO DAO ES PARA QUE PUEDA CAMBIAR LA CONTRASEÑA DE LA BASE DE DATOS CUANDO EL USUARIO CAMBIE SU CONTRA

public class UsuarioDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/UsuariosSpecialized";
    private static final String USER = "root";
    private static final String PASS = "mysql";

    // Obtener usuario por correo
    public static Usuario obtenerPorCorreo(String correo) {
        Usuario usuario = null;
        String sql = "SELECT * FROM UsuariosSpecialized WHERE correo = ?";

        try (Connection conn = DriverManager.getConnection(URL, USER, PASS);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, correo);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                usuario = new Usuario(
                    rs.getInt("id"),
                    rs.getString("nombre"),
                    rs.getString("apellido"),
                    rs.getString("correo"),
                    rs.getString("contraseña")
                );
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return usuario;
    }

    // Actualizar contraseña
 // 2. Actualizar la contraseña en la BD (se guarda en texto plano)
    public static boolean actualizarContrasena(int id, String nuevaContrasena) {
        String sql = "UPDATE UsuariosSpecialized SET contraseña = ? WHERE id = ?";
        try (Connection conn = DriverManager.getConnection(URL, USER, PASS);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, nuevaContrasena); // 👉 Aquí se guardan los 4 caracteres directos
            stmt.setInt(2, id);

            int filas = stmt.executeUpdate();
            return filas > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

}

