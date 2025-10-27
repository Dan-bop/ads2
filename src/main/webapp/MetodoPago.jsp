<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*,java.io.*,java.util.*" %>

<%
    String mensajePago = (String) request.getAttribute("mensajePago");
    if (mensajePago != null) {
%>
    <div style="background:#e9f7ef; border:2px solid #28a745; color:#155724;
                padding:15px; border-radius:8px; text-align:center; margin:20px;">
        <%= mensajePago %>
    </div>
<%
    }
%>

<html>
<head>
  <title>Factura - Gracias por su compra</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
  <style>
    body {
      font-family: 'Poppins', sans-serif;
      background-color: #f0f0f0;
      padding: 30px;
      color: #333;
      background-color: #697394;
    }

    .factura {
      background-color: white;
      max-width: 700px;
      margin: auto;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 15px rgba(0,0,0,0.1);
    }

    h1 {
      color: #28a745;
      text-align: center;
    }

    .detalle {
      margin-top: 30px;
    }

    .detalle p {
      margin: 8px 0;
    }

    .total {
      font-size: 1.2em;
      font-weight: bold;
      margin-top: 20px;
      color: #000;
    }

    .gracias {
      margin-top: 40px;
      text-align: center;
      font-size: 1.2em;
      color: #555;
    }

    .volver {
      display: block;
      margin: 30px auto 0;
      text-align: center;
      padding: 10px 20px;
      background-color: #28a745;
      color: white;
      text-decoration: none;
      border-radius: 8px;
      width: fit-content;
    }

    .volver:hover {
      background-color: #218838;
    }
  </style>
</head>
<body>

<%
  String tarjetaTipo = request.getParameter("tarjetaTipo");
  String numTarjeta = request.getParameter("numTarjeta");
  String nombreTarjeta = request.getParameter("nombreTarjeta");
  String fechaExp = request.getParameter("fechaExp");
  String cvv = request.getParameter("cvv");
  String total = request.getParameter("total");
  

  // Datos del comprador
  String nombreCliente = request.getParameter("nombreComprador");
  String correo = request.getParameter("correoComprador");
  String telefono = request.getParameter("telefonoComprador");
  String direccion = request.getParameter("direccionComprador");
  String ciudad = request.getParameter("ciudadComprador");
  String codigoPostal = request.getParameter("codigoPostal");
  
  
  

  // Mostrar solo los 4 últimos dígitos de la tarjeta por seguridad
  String ultimosDigitos = "****";
  if (numTarjeta != null && numTarjeta.length() >= 4) {
      ultimosDigitos = numTarjeta.substring(numTarjeta.length() - 4);
  }

  // Formatear el total
  String totalStr = request.getParameter("total");
  double totalValor = Double.parseDouble(totalStr.replace(",", ""));
  java.text.DecimalFormat formatter = new java.text.DecimalFormat("#,###.00");
  String totalFormateado = formatter.format(totalValor);
  
//Conexion a la base de datos
Connection conn = null;
PreparedStatement stmt = null;
String dbURL = "jdbc:mysql://localhost:3306/UsuariosSpecialized"; // Cambia por el nombre correcto de tu base de datos
String dbUser = "root";  // Tu usuario de la base de datos
String dbPassword = "mysql";  // Tu contraseña de la base de datos

try {
   // Establecer la conexión a la base de datos
   Class.forName("com.mysql.cj.jdbc.Driver");
   conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
   System.out.println("Conexión establecida correctamente.");

   // Preparar el SQL para insertar los datos
   String sql = "INSERT INTO factura (tarjeta_tipo, num_tarjeta, nombre_tarjeta, fecha_exp, cvv, total, "
           + "nombre_cliente, correo, telefono, direccion, ciudad, codigo_postal) "
           + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

   stmt = conn.prepareStatement(sql);

   // Mostrar los valores antes de insertar
   System.out.println("Valores a insertar:");
   System.out.println("tarjetaTipo = " + tarjetaTipo);
   System.out.println("numTarjeta = " + numTarjeta);
   System.out.println("nombreTarjeta = " + nombreTarjeta);
   System.out.println("fechaExp = " + fechaExp);
   System.out.println("cvv = " + cvv);
   System.out.println("totalValor = " + totalValor);

   // Establecer los valores a insertar
 stmt.setString(1, tarjetaTipo);
stmt.setString(2, numTarjeta);
stmt.setString(3, nombreTarjeta);
stmt.setString(4, fechaExp);
stmt.setString(5, cvv);
stmt.setDouble(6, totalValor);
stmt.setString(7, nombreCliente);
stmt.setString(8, correo);
stmt.setString(9, telefono);
stmt.setString(10, direccion);
stmt.setString(11, ciudad);
stmt.setString(12, codigoPostal);


   // Ejecutar la inserción
   int rowsAffected = stmt.executeUpdate();
   if (rowsAffected > 0) {
       System.out.println("Los datos se han insertado con éxito.");
   } else {
       System.out.println("Hubo un error al insertar los datos.");
   }

} catch (Exception e) {
   e.printStackTrace();
} finally {
   try {
       if (stmt != null) stmt.close();
       if (conn != null) conn.close();
       System.out.println("Conexión cerrada.");
   } catch (SQLException se) {
       se.printStackTrace();
   }
}

%>

<div class="factura">
<h1>
  ¡Gracias por su compra!
</h1>

  <div class="detalle">
    <p><strong>Nombre en la tarjeta:</strong> <%= nombreTarjeta %></p>
    <p><strong>Tipo de tarjeta:</strong> <%= tarjetaTipo.toUpperCase() %></p>
    <p><strong>Últimos 4 dígitos:</strong> **** **** **** <%= ultimosDigitos %></p>
    <p><strong>Fecha de expiración:</strong> <%= fechaExp %></p>
  <p><strong>Total a pagar: $<%= totalFormateado %></strong></p>

  </div>

  <div class="gracias">
  

  ¡Nos encanta tener clientes como tú! Mientras tanto, si necesitas cualquier ayuda o tienes alguna pregunta, nuestro equipo está siempre listo para ayudarte. ¡Gracias por confiar en nosotros y esperamos verte pronto de nuevo!
  </div>

  <a href="PaginaPrincipal.jsp" class="volver">Volver a la tienda</a>
</div>

</body>
</html>
