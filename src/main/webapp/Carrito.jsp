<%@ page contentType="text/html;charset=UTF-8" %>
	<html>
	<head>
	  <title>Carrito de Compras</title>
	  <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
	  
	  <style>
	    body {
	      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	      background-color: #f5f5f5;
	      margin: 0;
	      padding: 20px;
	    }
	
	    .container {
	      display: flex;
	      gap: 30px;
	      max-width: 1100px;
	      margin: auto;
	    }
	
	    .carrito-productos {
	      flex: 2;
	      background-color: white;
	      border-radius: 10px;
	      padding: 20px;
	      box-shadow: 0 0 10px rgba(0,0,0,0.1);
	    }
	
	    .carrito-productos h2 {
	      margin-top: 0;
	      border-bottom: 2px solid #ddd;
	      padding-bottom: 10px;
	    }
	
	    .producto {
	      display: flex;
	      gap: 20px;
	      margin-bottom: 20px;
	      align-items: center;
	    }
	
	    .producto img {
	      width: 150px;
	      border-radius: 8px;
	    }
	
	    .producto-info {
	      flex: 1;
	    }
	
	    .producto-info h3 {
	      margin: 0 0 10px;
	    }
	
	    .producto-info p {
	      margin: 5px 0;
	    }
	
	    .carrito-resumen {
	      flex: 1;
	      background-color: white;
	      border-radius: 10px;
	      padding: 20px;
	      box-shadow: 0 0 10px rgba(0,0,0,0.1);
	      height: fit-content;
	      transition: border 0.3s ease;
	    }
	
	    .carrito-resumen h3 {
	      margin-top: 0;
	      margin-bottom: 20px;
	      text-align: center;
	    }
	
	    .total {
	      font-size: 1.2em;
	      font-weight: bold;
	      margin: 20px 0;
	      text-align: center;
	    }
	
	    .btn-pagar {
	      background-color: #28a745;
	      color: white;
	      border: none;
	      width: 100%;
	      padding: 12px;
	      border-radius: 8px;
	      font-size: 1em;
	      cursor: pointer;
	      opacity: 0.5;
	      transition: background-color 0.3s ease;
	    }
	
	    .btn-pagar.enabled {
	      opacity: 1;
	      cursor: pointer;
	    }
	
	    .btn-pagar:hover.enabled {
	      background-color: #218838;
	    }
	
	    .tarjeta-form {
	      display: none;
	      margin-top: 20px;
	    }
	
	    .tarjeta-form label {
	      display: block;
	      margin-top: 10px;
	    }
	
	    .tarjeta-form input {
	      width: 100%;
	      padding: 8px;
	      margin-top: 5px;
	      box-sizing: border-box;
	      border-radius: 4px;
	      border: 1px solid #ccc;
	    }
	
	    select {
	      width: 100%;
	      padding: 10px 12px;
	      border-radius: 8px;
	      margin-bottom: 10px;
	      font-weight: bold;
	      font-size: 1em;
	      /* Quitamos el estilo default para poder personalizar */
	      -webkit-appearance: none;
	      -moz-appearance: none;
	      appearance: none;
	      background-position: right 12px center;
	      background-repeat: no-repeat;
	      background-size: 20px 20px;
	      cursor: pointer;
	      transition: background-color 0.3s ease;
	    }
	
	    /* Estilos específicos para cada opción usando un truco con emojis y color de fondo */
	    option[value="visa"] {
	      color: #1a1f71;
	      font-weight: bold;
	    }
	    option[value="mastercard"] {
	      color: #eb001b;
	      font-weight: bold;
	    }
	    option[value="amex"] {
	      color: #2e77bb;
	      font-weight: bold;
	    }
	    option[value="discover"] {
	      color: #f76b1c;
	      font-weight: bold;
	    }
	
	    /* Cambiar el fondo del select según la opción seleccionada */
	    select.visa {
	      background-color: #1a1f71;
	      color: white;
	      background-image: url('https://upload.wikimedia.org/wikipedia/commons/4/41/Visa_Logo.png');
	    }
	    select.mastercard {
	      background-color: #eb001b;
	      color: white;
	      background-image: url('https://upload.wikimedia.org/wikipedia/commons/0/04/Mastercard-logo.png');
	    }
	    select.amex {
	      background-color: #2e77bb;
	      color: white;
	      background-image: url('https://upload.wikimedia.org/wikipedia/commons/3/30/American_Express_logo_%282018%29.svg');
	      background-size: 60px 20px;
	    }
	    select.discover {
	      background-color: #f76b1c;
	      color: white;
	      background-image: url('https://upload.wikimedia.org/wikipedia/commons/5/5a/Discover_Card_logo.svg');
	    }
	
	    /* Borde del formulario de tarjeta según tipo */
	    .carrito-resumen.visa {
	      border: 3px solid #1a1f71;
	    }
	    .carrito-resumen.mastercard {
	      border: 3px solid #eb001b;
	    }
	    .carrito-resumen.amex {
	      border: 3px solid #2e77bb;
	    }
	    .carrito-resumen.discover {
	      border: 3px solid #f76b1c;
	    }
	    
	    
	    
	    .tarjeta-grid {
	  display: grid;
	  grid-template-columns: 1fr 1fr;
	  gap: 20px;
	  margin-top: 10px;
	}
	
	.tarjeta-grid .col-span-2 {
	  grid-column: span 2;
	}
	
	.tarjeta-form input:focus {
	  border-color: #007bff;
	  box-shadow: 0 0 0 2px rgba(0,123,255,0.2);
	  outline: none;
	}
	    
	    
	    
	   /*CSS PARA QUE CARGE UN POCO ANTES DE QUE ENVIE A METODO DE PAGO*/
	   .spinner-overlay {
  display: none;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(255,255,255,0.8);
  z-index: 9999;
  justify-content: center;
  align-items: center;
}

.spinner {
  border: 8px solid #f3f3f3;
  border-top: 8px solid #28a745;
  border-radius: 50%;
  width: 60px;
  height: 60px;
  animation: spin 1s linear infinite;
}

@keyframes spin {
  100% { transform: rotate(360deg); }
} 
	    
	    
	    
	    
	    
	    
	    
	    
	  </style>
	</head>
	<body>
	
	<%
  java.text.DecimalFormat formatter = new java.text.DecimalFormat("#,###.00");

  String nombre = request.getParameter("nombre");
  String imagen = request.getParameter("imagen");
  String precioStr = request.getParameter("precio");
  String cantidadStr = request.getParameter("cantidad");
  String talla = request.getParameter("talla");
  String producto = request.getParameter("producto");

  if (nombre != null && imagen != null && precioStr != null && cantidadStr != null) {
      double precio = Double.parseDouble(precioStr.replace(",", ""));
      int cantidad = Integer.parseInt(cantidadStr);
      double total = precio * cantidad;

      String precioFormateado = formatter.format(precio);
      String totalFormateado = formatter.format(total);
%>

	
	<div class="container">
	  <div class="carrito-productos">
	  <h2>Tu carrito</h2>

<div style="text-align: right; margin-bottom: 20px;">
  <a href="#" style="text-decoration: none; color: #111; font-weight: 600; font-size: 1.1em; text-shadow: 0.5px 0.5px 1px rgba(0,0,0,0.3);">
    <i class="bi bi-person-circle" style="margin-right: 5px;"></i> 
    ${sessionScope.nombre} ${sessionScope.apellido}
  </a>
</div>


	    <div class="producto">
	      <img src="<%= imagen %>" alt="Producto">
	      <div class="producto-info">
	      <h3 style="font-family: 'Poppins', sans-serif; color: #2c3e50; font-size: 1.6em; font-weight: 600; text-shadow: 1px 1px 2px rgba(0,0,0,0.1);">
  <%= nombre %>
</h3>



<p><strong>Precio unitario: $<%= precioFormateado %></strong></p>
<p><strong>Talla: <span style="color: green; font-size: 18px;"><%= talla %></span></strong></p>
<p><strong>Producto: <span style="color: green; font-size: 18px;"><%= producto %></span></strong></p>
<p><strong>Cantidad: <%= cantidad %></strong></p>
<p><strong>Total: $<%= totalFormateado %></strong></p>


<!-- CODIDO PARA LA PARTE DE SI QUIERE SEGUIR VIENDO PRODUCTOS DONDE SE QUEDO .... -->

<button id="btnVolver" style="
  margin-top: 20px;
  padding: 12px 25px;
  font-size: 18px;
  cursor: pointer;
  background: linear-gradient(90deg, #6b8e23, #8fbc8f); /* verdes suaves */
  border: none;
  border-radius: 30px;
  color: white;
  font-weight: bold;
  display: flex;
  align-items: center;
  gap: 10px;
  box-shadow: 0 4px 10px rgba(107, 142, 35, 0.4);
  transition: background 0.3s ease, transform 0.2s ease;
" onmouseover="this.style.background='linear-gradient(90deg, #8fbc8f, #6b8e23)'" onmouseout="this.style.background='linear-gradient(90deg, #6b8e23, #8fbc8f)'">
  &#8592; Volver y seguir viendo
</button>










	      </div>
	    </div>
	  </div>
	
	  <div id="carritoResumen" class="carrito-resumen">
	    <h3>Resumen</h3>
	   <p><strong>Nombre:</strong> <%= nombre %></p>
<p><strong>Talla: <span style="color: green; font-size: 18px;"><%= talla %></span></strong></p>
<p><strong>Producto: <span style="color: green; font-size: 18px;"><%= producto %></span></strong></p>
	    <p><strong>Cantidad: </strong><%= cantidad %></p>
	    
	  <p class="total">Total a pagar: $<%= totalFormateado %></p>
	
	    <!-- Selección de tarjeta -->
	<label for="tipoTarjeta" style="font-family: 'Montserrat', sans-serif; font-weight: 500; font-size: 16px; color: #2c3e50;">
	  Seleccione tipo de tarjeta:
	</label><br><br>
	    <select id="tipoTarjeta" name="tipoTarjeta" onchange="mostrarFormulario()" >
	      <option value="">-- Elija una tarjeta --</option>
	      <option value="visa">Visa</option>
	      <option value="mastercard">MasterCard</option>
	      <option value="amex">American Express</option>
	      <option value="discover">Discover</option>
	    </select>
	
	    <!-- Formulario para datos de tarjeta -->
	<!-- Formulario para datos del comprador y tarjeta -->
<form id="formPago" class="tarjeta-form" action="EnviarCorreoCompra" method="post" onsubmit="return mostrarSpinner(event)">

  <!-- Datos ocultos -->
  <input type="hidden" name="total" value="<%= total %>">
  <input type="hidden" id="tarjetaTipoInput" name="tarjetaTipo" value="">

  <!-- 🔹 Estos son los nuevos campos ocultos que faltaban -->
  <input type="hidden" name="nombre" value="<%= nombre %>">
  <input type="hidden" name="producto" value="<%= producto %>">
  <input type="hidden" name="talla" value="<%= talla %>">
  <input type="hidden" name="cantidad" value="<%= cantidad %>">

  <!-- Datos del comprador -->
  <div class="tarjeta-grid">
    <div class="col-span-2">
      <label for="nombreComprador">Nombre completo:</label>
      <input type="text" id="nombreComprador" name="nombreComprador" placeholder="Jose De Herrera"
             required maxlength="15" pattern="^[A-Za-z]+ [A-Za-z]+$"
             title="Ingrese nombre y apellido, máximo 15 caracteres">
    </div>

    <div class="col-span-2">
      <label for="correoComprador">Correo electrónico:</label>
      <input type="email" id="correoComprador" name="correoComprador" placeholder="correo@ejemplo.com"
             required pattern=".+@.+" title="Ingrese un correo válido con @">
    </div>

    <div class="col-span-2">
      <label for="telefonoComprador">Teléfono:</label>
      <input type="tel" id="telefonoComprador" name="telefonoComprador" placeholder="999999999"
             required pattern="\d{9}" maxlength="9" title="Ingrese 9 dígitos">
    </div>

    <div class="col-span-2">
      <label for="direccionComprador">Dirección:</label>
      <input type="text" id="direccionComprador" name="direccionComprador" placeholder="Calle 123"
             required maxlength="15" title="Máximo 15 caracteres">
    </div>

    <div class="col-span-2">
      <label for="ciudadComprador">Ciudad:</label>
      <input type="text" id="ciudadComprador" name="ciudadComprador" placeholder="Lima" required>
    </div>

    <div class="col-span-2">
      <label for="codigoPostal">Código Postal:</label>
      <input type="text" id="codigoPostal" name="codigoPostal" placeholder="1500"
             required pattern="\d{4}" maxlength="4" title="Ingrese 4 dígitos">
    </div>
  </div>

  <!-- Datos de la tarjeta -->
  <div class="tarjeta-grid">
    <div class="col-span-2">
      <label for="numTarjeta">Número de tarjeta:</label>
      <input type="text" id="numTarjeta" name="numTarjeta" maxlength="19" placeholder="1234-5678-9012-3456"
             required pattern="\d{13,19}" title="Ingrese un número válido">
    </div>

    <div class="col-span-2">
      <label for="nombreTarjeta">Nombre en la tarjeta:</label>
      <input type="text" id="nombreTarjeta" name="nombreTarjeta" required placeholder="Jose De Herrera"
             maxlength="15" title="Máximo 15 caracteres">
    </div>

    <div>
      <label for="fechaExp">Fecha de expiración:</label>
      <input type="month" id="fechaExp" name="fechaExp" required min="<%=java.time.YearMonth.now()%>">
    </div>

    <div>
      <label for="cvv">CVV:</label>
      <input type="text" id="cvv" name="cvv" maxlength="4" required pattern="\d{4}" title="Ingrese 4 dígitos" placeholder="124">
    </div>

    <div class="col-span-2">
      <button type="submit" id="btnPagar" class="btn-pagar" disabled>Proceder al Pago</button>
    </div>
  </div>
</form>

	
	  </div>
	</div>
	
	<script>
	  function mostrarFormulario() {
	    const select = document.getElementById('tipoTarjeta');
	    const form = document.getElementById('formPago');
	    const tipoTarjetaInput = document.getElementById('tarjetaTipoInput');
	    const resumen = document.getElementById('carritoResumen');
	
	    // Quitar clases previas de resumen
	    resumen.classList.remove('visa', 'mastercard', 'amex', 'discover');
	    select.classList.remove('visa', 'mastercard', 'amex', 'discover');
	
	    if (select.value) {
	      form.style.display = 'block';
	      tipoTarjetaInput.value = select.value;
	
	      // Añadir clase para estilo
	      resumen.classList.add(select.value);
	      select.classList.add(select.value);
	
	      validarCampos(); // para actualizar botón pagar
	    } else {
	      form.style.display = 'none';
	      tipoTarjetaInput.value = '';
	      document.getElementById('btnPagar').disabled = true;
	    }
	  }
	
	  // Validar campos para habilitar botón pagar
	  function validarCampos() {
	    const numTarjeta = document.getElementById('numTarjeta').value.trim();
	    const nombreTarjeta = document.getElementById('nombreTarjeta').value.trim();
	    const fechaExp = document.getElementById('fechaExp').value.trim();
	    const cvv = document.getElementById('cvv').value.trim();
	    const btnPagar = document.getElementById('btnPagar');
	
	    if (numTarjeta.length >= 13 && numTarjeta.length <= 19 &&
	        nombreTarjeta.length > 0 &&
	        fechaExp.length > 0 &&
	        (cvv.length === 3 || cvv.length === 4)) {
	      btnPagar.disabled = false;
	      btnPagar.classList.add('enabled');
	    } else {
	      btnPagar.disabled = true;
	      btnPagar.classList.remove('enabled');
	    }
	  }
	
	  // Agregar event listeners para validar al escribir
	  document.querySelectorAll('#formPago input').forEach(input => {
	    input.addEventListener('input', validarCampos);
	  });
	</script>
	
	<% } else { %>
	  <p style="text-align:center; color: red; font-size: 1.2em;">No hay productos en el carrito.</p>
	<% } %>
	
	<!-- Spinner cargando -->
<div class="spinner-overlay" id="spinnerOverlay">
  <div class="spinner"></div>
</div>
	
	
	
	</body>
	
	
	
	
	
	
	<script >
	
	function mostrarSpinner(event) {
		  event.preventDefault(); // Evita el envío inmediato del formulario
		  const spinner = document.getElementById('spinnerOverlay');
		  spinner.style.display = 'flex';

		  // Simula procesamiento (2 segundos) antes de enviar
		  setTimeout(() => {
		    event.target.submit();
		  }, 2000); // Puedes ajustar el tiempo si deseas
		  return false;
		}

	
	
	
	
	</script>
	
	
	
	<!-- JS PARA EL BTN VOLVER HACIA ATRAS O DONDE SE QUEDO -->
	
	<script>
  const btn = document.getElementById('btnVolver');
  btn.addEventListener('click', () => {
    if (window.history.length > 1) {
      btn.style.transform = 'scale(0.95)';
      setTimeout(() => {
        window.history.back();
      }, 150);
    } else {
      alert('No hay página anterior para volver.');
    }
  });

  btn.addEventListener('transitionend', () => {
    btn.style.transform = 'scale(1)';
  });
</script>
	
	</html>