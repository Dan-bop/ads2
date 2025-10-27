package CreacionCuenta;

import jakarta.mail.*;
import jakarta.mail.internet.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.Properties;

@WebServlet("/EnviarCorreoCompra")
public class EnviarCorreoCompra extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // ===== DATOS DEL COMPRADOR =====
        String nombreComprador = request.getParameter("nombreComprador");
        String correoComprador = request.getParameter("correoComprador");
        String telefonoComprador = request.getParameter("telefonoComprador");
        String direccionComprador = request.getParameter("direccionComprador");
        String ciudadComprador = request.getParameter("ciudadComprador");
        String codigoPostal = request.getParameter("codigoPostal");

        // ===== DATOS DE TARJETA =====
        String tarjetaTipo = request.getParameter("tarjetaTipo");
        String numTarjeta = request.getParameter("numTarjeta");
        String nombreTarjeta = request.getParameter("nombreTarjeta");
        String fechaExp = request.getParameter("fechaExp");
        String cvv = request.getParameter("cvv");

        // ===== DATOS DEL PRODUCTO =====
        String nombreProducto = request.getParameter("nombre");
        String producto = request.getParameter("producto");
        String talla = request.getParameter("talla");
        String cantidad = request.getParameter("cantidad");
        String total = request.getParameter("total");

        // ===== GMAIL REMITENTE =====
        final String remitente = "georghisanchezabanto@gmail.com";
        final String clave = "ibuhmaduughvzbth"; 

        // ===== CONFIGURACIÓN SMTP =====
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

        boolean correoEnviado = false;

        try {
            Message mensaje = new MimeMessage(session);
            mensaje.setFrom(new InternetAddress(remitente, "Specialized Perú"));
            mensaje.setRecipients(Message.RecipientType.TO, InternetAddress.parse(correoComprador));
            mensaje.setSubject("🛒 Confirmación de tu compra - Specialized Perú");

            String tarjetaEnmascarada = numTarjeta.replaceAll("\\d(?=\\d{4})", "*");

            // ===== CONTENIDO HTML =====
             String contenido = "<html><body style='font-family: \"Helvetica Neue\", Arial, sans-serif; background-color:#f4f6f8; padding:30px;'>"
                    + "<div style='max-width:650px; margin:auto; background:#ffffff; border-radius:12px; padding:40px; box-shadow:0 4px 20px rgba(0,0,0,0.08);'>"
                    + "<h1 style='color:#1a73e8; text-align:center; margin-bottom:10px;'>¡Gracias por tu compra, " + nombreComprador + "! 🎉</h1>"
                    + "<p style='text-align:center; color:#555;'>Estamos felices de que hayas elegido <b>Specialized Perú</b>. Tu pedido ha sido procesado exitosamente y está en camino de llegar a ti.</p>"
                    + "<hr style='border:none; border-top:1px solid #eee; margin:30px 0;'>"
                    
                    + "<h2 style='color:#1a73e8;'>📦 Detalles de tu pedido</h2>"
                    + "<table style='width:100%; border-collapse:collapse; margin-top:10px;'>"
                    + "<tr><td style='padding:8px;'><b>Producto:</b></td><td style='padding:8px;'>" + producto + "</td></tr>"
                    + "<tr><td style='padding:8px;'><b>Nombre:</b></td><td style='padding:8px;'>" + nombreProducto + "</td></tr>"
                    + "<tr><td style='padding:8px;'><b>Talla:</b></td><td style='padding:8px;'>" + talla + "</td></tr>"
                    + "<tr><td style='padding:8px;'><b>Cantidad:</b></td><td style='padding:8px;'>" + cantidad + "</td></tr>"
                    + "<tr><td style='padding:8px;'><b>Total pagado:</b></td><td style='padding:8px;'><b>S/ " + total + "</b></td></tr>"
                    + "</table>"

                    + "<h2 style='color:#1a73e8; margin-top:30px;'>💳 Método de pago</h2>"
                    + "<p style='margin:0; color:#555;'>"
                    + "<b>Tipo:</b> " + tarjetaTipo.toUpperCase() + "<br>"
                    + "<b>Número:</b> " + tarjetaEnmascarada + "<br>"
                    + "<b>Nombre en tarjeta:</b> " + nombreTarjeta + "<br>"
                    + "<b>Expira:</b> " + fechaExp + "</p>"

                    + "<h2 style='color:#1a73e8; margin-top:30px;'>📍 Dirección de envío</h2>"
                    + "<p style='margin:0; color:#555;'>"
                    + direccionComprador + "<br>"
                    + ciudadComprador + " - " + codigoPostal + "<br>"
                    + "Teléfono: " + telefonoComprador + "</p>"

                    + "<div style='background:#e6f4ea; padding:20px; border-radius:8px; margin-top:30px; text-align:center;'>"
                    + "<h3 style='color:#2e7d32; margin:0;'>🚚 Tu pedido está en camino</h3>"
                    + "<p style='color:#2e7d32; margin-top:5px;'>Recibirás una notificación cuando salga de nuestro almacén.</p>"
                    + "</div>"

                    + "<p style='margin-top:40px; text-align:center; color:#888; font-size:14px;'>"
                    + "Gracias por confiar en <b>Specialized Perú</b> ❤️<br>"
                    + "¡Nos vemos pronto!</p>"
                    + "</div></body></html>";


            mensaje.setContent(contenido, "text/html; charset=utf-8");
            Transport.send(mensaje);
            correoEnviado = true;

        } catch (Exception e) {
            e.printStackTrace();
            correoEnviado = false;
        }

        // ===== REDIRECCIÓN A MetodoPago.jsp =====
        if (correoEnviado) {
            // Puedes pasar un mensaje al JSP
            request.setAttribute("mensajePago", "✅ Tu compra se ha procesado correctamente. Revisa tu correo para más detalles.");
        } else {
            request.setAttribute("mensajePago", "⚠️ Hubo un problema al enviar el correo, pero tu pago fue registrado correctamente.");
        }

        // Redirigir al JSP de confirmación de pago
        request.getRequestDispatcher("MetodoPago.jsp").forward(request, response);
    }
}
