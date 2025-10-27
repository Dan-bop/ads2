package CreacionCuenta;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/FacturaServlet")
public class FacturaServlet extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String tarjetaTipo = request.getParameter("tarjetaTipo");
    String numTarjeta = request.getParameter("numTarjeta");
    String nombreTarjeta = request.getParameter("nombreTarjeta");
    String fechaExp = request.getParameter("fechaExp");
    String cvv = request.getParameter("cvv");
    String total = request.getParameter("total");

    double totalValor = 0;
    try {
      totalValor = Double.parseDouble(total);
    } catch (NumberFormatException e) {
      e.printStackTrace();
      // Manejar error de conversión
    }

    // Aquí pones el código para conectar y hacer la inserción (como el que ya tienes)
    
    // Luego rediriges o muestras mensaje
  }
}
