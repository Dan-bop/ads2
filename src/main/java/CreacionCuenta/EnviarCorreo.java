package CreacionCuenta;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import jakarta.mail.Session;
import jakarta.mail.internet.MimeMessage;


@WebServlet("/EnviarCorreo")
public class EnviarCorreo extends HttpServlet {
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	    String destinatario = request.getParameter("email");

	    // 1. Verificar si el correo existe en la BD
	    Usuario usuario = UsuarioDAO.obtenerPorCorreo(destinatario);
	    if (usuario == null) {
	        response.setContentType("text/plain");
	        response.getWriter().write("El correo no está registrado.");
	        return;
	    }

	    // 2. Generar nueva contraseña aleatoria

	    String nuevaContrasena = generarContrasena(); // ejemplo 8 caracteres

	    
	    // 4. Actualizar la contraseña en la BD
	    UsuarioDAO.actualizarContrasena(usuario.getId(), nuevaContrasena);


	    
	  

	    // 5. Preparar y enviar correo con la nueva contraseña
	    final String remitente = "georghisanchezabanto@gmail.com";
	    final String clave = "eviibsoqwhnrkpdc";

	    Properties props = new Properties();
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.smtp.starttls.enable", "true");
	    props.put("mail.smtp.host", "smtp.gmail.com");
	    props.put("mail.smtp.port", "587");

	    Session session = Session.getInstance(props, new Authenticator() {
	        protected PasswordAuthentication getPasswordAuthentication() {
	            return new PasswordAuthentication(remitente, clave);
	        }
	    });

	    try {
	        Message mensaje = new MimeMessage(session);
	        mensaje.setFrom(new InternetAddress(remitente));
	        mensaje.setRecipients(Message.RecipientType.TO, InternetAddress.parse(destinatario));
	        mensaje.setSubject("Recuperar contraseña");
	        
	        //ESTA PARTE ES DONDE ENVIA EL MENSAJE AL GMAIL
	        
	        mensaje.setContent(
	        	    "<html>" +
	        	    "<body style='font-family: Arial, sans-serif; color:#333; background:#f9f9f9; padding:20px;'>" +
	        	        "<div style='max-width:600px; margin:0 auto; background:#ffffff; padding:30px; border-radius:8px; " +
	        	        "box-shadow:0 2px 6px rgba(0,0,0,0.1);'>" +

	        	            "<h2 style='color:#2a5bd7; text-align:center; margin-bottom:30px;'>Specialized Perú</h2>" +

	        	            "<p style='font-size:16px;'>Estimado(a) <b>" + usuario.getNombre() + " " + usuario.getApellido() + "</b>,</p>" +

	        	            "<p style='font-size:15px; line-height:1.6;'>Recibimos tu solicitud para la recuperación de acceso a tu cuenta en <b>Specialized Perú</b>. " +
	        	            "Con el fin de proteger tu información, hemos generado una <b>contraseña temporal</b> que deberás usar para ingresar nuevamente a la plataforma.</p>" +

	        	            "<p style='font-size:16px; margin-top:20px;'><b>Tu nueva contraseña temporal es:</b></p>" +
	        	            "<div style='background:#eef3fc; padding:15px; text-align:center; border-radius:6px; " +
	        	            "font-size:20px; font-weight:bold; color:#d9534f; letter-spacing:2px;'>" +
	        	                nuevaContrasena +
	        	            "</div>" +

	        	            "<p style='font-size:15px; line-height:1.6; margin-top:25px;'>Por favor, utiliza esta contraseña únicamente para tu próximo inicio de sesión. " +
	        	            "Te recomendamos <b>actualizarla inmediatamente</b> desde la sección de configuración de tu cuenta para garantizar mayor seguridad.</p>" +

	        	            "<p style='font-size:15px; line-height:1.6; color:#444;'><b>Importante:</b> Recuerda que tus credenciales son personales e intransferibles. " +
	        	            "No las compartas con nadie y mantenlas en un lugar seguro.</p>" +

	        	            "<hr style='margin:30px 0; border:0; border-top:1px solid #ddd;'>" +

	        	            "<p style='font-size:15px; line-height:1.6;'>Gracias por confiar en <b>Specialized Perú</b>. Estamos comprometidos en ofrecerte la mejor experiencia y seguridad en cada interacción.</p>" +

	        	            "<p style='font-size:15px; margin-top:20px;'>Atentamente,<br>" +
	        	            "<b>El equipo de Specialized Perú</b></p>" +

	        	            "<p style='font-size:12px; color:gray; text-align:center; margin-top:40px;'>" +
	        	            "Este correo fue generado automáticamente. Por favor, no respondas a este mensaje." +
	        	            "</p>" +
	        	        "</div>" +
	        	    "</body>" +
	        	    "</html>",
	        	    "text/html; charset=utf-8"
	        	);


	        
	        
	        
	        
	        
	        
	        
	        

	        Transport.send(mensaje);

	        response.setContentType("text/plain");
	        //ESTA PARTE ES LO QUE SALE ABAJO DEL BTN ENVIAR EL MENSAJE DE CONFIRMACION PARA EL GMAIL.
	        response.getWriter().write("Se ha enviado una nueva contraseña a " + destinatario);

	    } catch (MessagingException e) {
	        e.printStackTrace();
	        response.setContentType("text/plain");
	        response.getWriter().write("Error al enviar el correo: " + e.getMessage());
	    }
	}

	// Método para generar contraseña aleatoria
	// Método para generar contraseña aleatoria de 4 caracteres (números + mayúsculas)
	// 1. Generar contraseña aleatoria de 4 caracteres (números y mayúsculas)
	public static String generarContrasena() {
	    String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	    StringBuilder sb = new StringBuilder();
	    Random random = new Random();
	    for (int i = 0; i < 4; i++) {
	        sb.append(chars.charAt(random.nextInt(chars.length())));
	    }
	    return sb.toString();
	}



	// Método para hashear la contraseña (ejemplo con SHA-256)
	private String hashContrasena(String password) {
	    try {
	        java.security.MessageDigest md = java.security.MessageDigest.getInstance("SHA-256");
	        byte[] hash = md.digest(password.getBytes(java.nio.charset.StandardCharsets.UTF_8));
	        StringBuilder hexString = new StringBuilder();
	        for (byte b : hash) {
	            String hex = Integer.toHexString(0xff & b);
	            if(hex.length() == 1) hexString.append('0');
	            hexString.append(hex);
	        }
	        return hexString.toString();
	    } catch (Exception ex) {
	        throw new RuntimeException(ex);
	    }
	}
}