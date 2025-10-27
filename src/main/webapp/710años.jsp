<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>7-10 Años</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    
</head>
<style>



    body {
  margin: 0;
  font-family: 'Segoe UI', sans-serif;
  background-color: #f8f9fa;
}

/* Navbar principal */
.navbar {
  position: fixed; /* Cambio: la barra será fija */
  top: 0;
  left: 0;
  right: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  height: 70px;
  padding: 0 40px;
  background-color: #ffffff;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
  z-index: 90; /* Asegura que la barra esté por encima de otros elementos */
}

/* Logo */
.logo {
  position: absolute;
  left: 40px;
}

/* Enlaces principales */
.nav-links {
  list-style: none;
  display: flex;
  gap: 30px;
  padding: 0;
  margin: 0;
}

.nav-links li {
  position: relative;
}

.nav-links > li > a {
  text-decoration: none;
  color: #2c3e50;
  font-weight: 600;
  font-size: 16px;
  padding: 10px 15px;
  border-radius: 6px;
  transition: background-color 0.3s, color 0.3s;
}

.nav-links > li > a:hover {
  background-color: #f1f1f1;
  color: #007bff;
}

/* Submenús */
.submenu, .otromenu {
  display: none;
  position: absolute;
  background-color: #ffffff;
  border-radius: 6px;
  list-style: none;
  padding: 10px 0;
  margin: 0;
  box-shadow: 0 8px 16px rgba(0,0,0,0.1);
  min-width: 200px;
  z-index: 1000;
}

/* Mostrar submenús al pasar el mouse */
.nav-links li:hover > .submenu,
.submenu li:hover > .otromenu {
  display: block;
}

/* Posiciones */
.submenu {
  top: 100%;
  left: 0;
}

.otromenu {
  top: 0;
  left: 100%;
}

/* Enlaces del submenú */
.submenu li a, .otromenu li a {
  display: block;
  padding: 10px 20px;
  text-decoration: none;
  color: #2c3e50;
  font-size: 15px;
  transition: background-color 0.2s, color 0.2s;
}

.submenu li a:hover, .otromenu li a:hover {
  background-color: #f1f1f1;
  color: #007bff;
}



/* Iconos a la derecha */
/* Estilos para la barra de navegación */
.navbar {
  position: fixed; /* Fija la barra de navegación en la parte superior */
  top: 0; /* Asegura que esté en la parte superior */
  left: 0; /* Asegura que esté alineada a la izquierda */
  width: 100%; /* Ocupa todo el ancho de la pantalla */
  background-color: #f8f8f8;
  box-sizing: border-box;
  z-index: 999; /* Asegura que la navbar quede encima de otros elementos */
  padding: 10px 20px; /* Asegura que tenga algo de espacio dentro */
  z-index: 1000; 
}

.nav-links, .nav-icons {
  position: relative; /* Asegura que los elementos dentro de la navbar tengan posición relativa */
}

/* Estilos para los iconos, alinearlos a la derecha */
.nav-icons {
  position: absolute;
  right: 40px; /* Los iconos estarán a 40px del borde derecho */
  top: 50%; /* Centrar verticalmente */
  transform: translateY(-50%); /* Ajustar para un centrado perfecto */
  display: flex;
  align-items: center;
  gap: 25px;
  z-index: 999; /* Asegura que los iconos estén por encima de otros elementos */
}

/* Estilo de los enlaces dentro de los iconos */
.nav-icons a {
  text-decoration: none;
  color: #2c3e50;
  font-size: 18px;
  transition: color 0.3s;
}

/* Estilo del color cuando se pasa el mouse sobre los iconos */
.nav-icons a:hover {
  color: #007bff;
}

/* Estilos para los enlaces normales en la navbar */
.nav-links {
  display: flex;
  gap: 20px;
}

.nav-links a {
  text-decoration: none;
  color: #333;
  font-size: 18px;
}

.nav-links a:hover {
  color: #007bff;
}


/*TERMINO DE ESTILOS DE */

body {
  padding-top: 50px; /* Agrega espacio para que el contenido no quede debajo de la barra fija */
}

/*ESTILOS PARA EL BUSCADOR */
.search-form {
  display: flex;
  align-items: center;
  background-color: #f1f1f1;
  border-radius: 20px;
  padding: 5px 10px;
  transition: box-shadow 0.3s;
}

.search-form input {
  border: none;
  outline: none;
  background: transparent;
  padding: 5px 10px;
  width: 150px;
  font-size: 14px;
}

.search-form button {
  border: none;
  background: none;
  color: #2c3e50;
  cursor: pointer;
  font-size: 18px;
  padding: 0 5px;
  transition: color 0.3s;
}

.search-form button:hover {
  color: #007bff;
}

.search-form:focus-within {
  box-shadow: 0 0 0 2px #007bff33;
}




/*CSSS PARA LA VERTE DE VER EN QUE SESION ANDA*/


.breadcrumb-title {
  font-size: 1rem;
  font-weight: 500;
  color: #ccc;
  margin: 10px 0;
  letter-spacing: 0.5px;
  text-transform: uppercase;
  z-index: 1000;

  
}

.breadcrumb-title span {
  color: #ff3366; /* O el color que represente tu marca */
  font-weight: 600;
}

.breadcrumb-title::before {
  content: "📍 ";
  color: #ffcc00;
}






/*CSSS PARA LA PARTE LAS BOOTS DE BIVIS*/
.team {
    padding: 60px 10%;
    background: linear-gradient(to bottom, #f5f7fa, #dfe9f3);
    text-align: center;
    border-radius: 12px;
    margin: 40px auto;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
}

.team h2 {
    font-size: 2.8em;
    color: #2c3e50;
    margin-bottom: 10px;
    font-weight: bold;
}

.team p {
    font-size: 1.3em;
    color: #555;
    margin-bottom: 30px;
}

.team-container {
    display: flex;
    justify-content: center;
    gap: 30px;
    flex-wrap: wrap;
}

.team-member {
    background: white;
    border-radius: 15px;
    padding: 20px;
    width: 260px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    text-align: center;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.team-member:hover {
    transform: scale(1.05);
    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.25);
}

.team-member img {
    width: 100%;
    border-radius: 12px;
    margin-bottom: 10px;
}

.team-member h3 {
    font-size: 1.7em;
    color: #2980b9;
    margin-bottom: 5px;
}

.team-member p {
    font-size: 1.2em;
    color: #444;
    font-weight: bold;
}

.description {
    display: block;
    font-size: 1em;
    color: #666;
    margin-top: 8px;
    opacity: 0.8;
}




/*CSSS PARA LA PARTE DE TARJETA DE CREDITO COMPRA DE  BICILERA*/








/* From Uiverse.io by Praashoo7 */ 
.flip-card {
  background-color: transparent;
  width: 240px;
  height: 154px;
  perspective: 1000px;
  color: white;
}

.heading_8264 {
  position: absolute;
  letter-spacing: .2em;
  font-size: 0.5em;
  top: 2em;
  left: 18.6em;
}

.logo1 {
  position: absolute;
  top: 6.8em;
  left: 11.7em;
}

.chip {
  position: absolute;
  top: 2.3em;
  left: 1.5em;
}

.contactless {
  position: absolute;
  top: 3.5em;
  left: 12.4em;
}

.number {
  position: absolute;
  font-weight: bold;
  font-size: .6em;
  top: 8.3em;
  left: 1.6em;
}

.valid_thru {
  position: absolute;
  font-weight: bold;
  top: 635.8em;
  font-size: .01em;
  left: 140.3em;
}

.date_8264 {
  position: absolute;
  font-weight: bold;
  font-size: 0.5em;
  top: 13.6em;
  left: 3.2em;
}

.name {
  position: absolute;
  font-weight: bold;
  font-size: 0.5em;
  top: 16.1em;
  left: 2em;
}

.strip {
  position: absolute;
  background-color: black;
  width: 15em;
  height: 1.5em;
  top: 2.4em;
  background: repeating-linear-gradient(
    45deg,
    #303030,
    #303030 10px,
    #202020 10px,
    #202020 20px
  );
}

.mstrip {
  position: absolute;
  background-color: rgb(255, 255, 255);
  width: 8em;
  height: 0.8em;
  top: 5em;
  left: .8em;
  border-radius: 2.5px;
}

.sstrip {
  position: absolute;
  background-color: rgb(255, 255, 255);
  width: 4.1em;
  height: 0.8em;
  top: 5em;
  left: 10em;
  border-radius: 2.5px;
}

.code {
  font-weight: bold;
  text-align: center;
  margin: .2em;
  color: black;
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  box-shadow: 0 8px 14px 0 rgba(0,0,0,0.2);
  position: absolute;
  display: flex;
  flex-direction: column;
  justify-content: center;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
  border-radius: 1rem;
}

.flip-card-front {
  box-shadow: rgba(0, 0, 0, 0.4) 0px 2px 2px, rgba(0, 0, 0, 0.3) 0px 7px 13px -3px, rgba(0, 0, 0, 0.2) 0px -1px 0px inset;
  background-color: #171717;
}

.flip-card-back {
  box-shadow: rgba(0, 0, 0, 0.4) 0px 2px 2px, rgba(0, 0, 0, 0.3) 0px 7px 13px -3px, rgba(0, 0, 0, 0.2) 0px -1px 0px inset;
  background-color: #171717;
  transform: rotateY(180deg);
}



/* Estilo del breadcrumb/título de ruta */
.breadcrumb-title {
  font-size: 16px;
  color: #555;
  margin: 20px;
  position: relative;
  z-index: 1000;
}

/* Estilo del contenedor de la imagen centrada */
.banner-centered {
      position: relative;
      display: inline-block;
    }

    .banner-centered img {
      width: 100%; /* Ajusta el tamaño de la imagen al contenedor */
      max-width: 400px; /* Tamaño máximo de la imagen */
      border-radius: 8px;
    }

    .etiqueta-talla {
      position: absolute;
      top: 10px;
      left: 10px;
      background-color: #4CAF50; /* Verde para disponible */
      color: white;
      font-size: 18px;
      font-weight: bold;
      padding: 5px 10px;
      border-radius: 5px;
      text-transform: uppercase;
    }

/* Título del producto */
h3 {
  font-size: 24px;
  font-weight: 600;
  color: #222;
  margin-top: 20px;
  text-align: center;
}

/* Precio del producto */
p:nth-of-type(1) {
  font-size: 20px;
  font-weight: bold;
  color: #b12704; /* color rojo típico de precios */
  text-align: center;
  margin: 10px 0;
}

/* Impuesto incluido */
p:nth-of-type(2) {
  font-size: 14px;
  color: #666;
  text-align: center;
  margin-bottom: 30px;
}

/* Separador */
hr {
  border: none;
  border-top: 1px solid #ccc;
  margin: 30px 0;
}




/*csss pars la img de la bii*/
.banner-contenedor {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 40px;
  padding: 30px;
  background: #fdfdfd;
  border-radius: 12px;
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
  animation: fadeIn 1.2s ease-in-out;
}

.banner-centered {
  background-color: #fff;
  border-radius: 12px;
  box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
  overflow: hidden;
  width: 100%;
  max-width: 250px;
  text-align: center;
  padding: 20px;
  transition: transform 0.3s ease;
}

.banner-centered:hover {
  transform: scale(1.02);
}

.banner-centered img {
  width: 100%;
  border-radius: 12px;
  transition: transform 0.6s ease;
}

.banner-centered:hover img {
  transform: scale(1.05);
}

.descripcion-banner {
  max-width: 400px;
  margin-top: 15px;
  animation: fadeInRight 1.4s ease-in-out;
}

.descripcion-banner h2 {
  font-size: 24px;
  margin-bottom: 10px;
  color: #111;
  font-weight: bold;
}

.descripcion-banner p {
  font-size: 16px;
  line-height: 1.6;
  color: #444;
  margin-bottom: 15px;
}

.descripcion-banner .precio {
  font-weight: bold;
  color: #d62424;
  font-size: 18px;
}

.descripcion-banner .precio span {
  font-weight: normal;
  color: #666;
  font-size: 14px;
}

@keyframes fadeInRight {
  from {
    opacity: 0;
    transform: translateX(40px);
  }
  to {
    opacity: 1;
    transform: translateX(0);
  }
}


/*CSSS PARA LA PART DE DISPONILES*/
.precio {
  font-weight: bold;
  color: #d62424;
  font-size: 18px;
  margin-top: 15px;
}

.precio .info-extra {
  margin-left: 20px;
  color: #1a8917;
  font-weight: 500;
  font-size: 16px;
}






/*CSS PARA LA PARTE DE AÑADIR A LA CESTA */


/* From Uiverse.io by Ali-Tahmazi99 */ 
/* From uiverse.io by @Ali-Tahmazi99 */
button {
 display: inline-block;
 width: 150px;
 height: 50px;
 border-radius: 10px;
 border: 1px solid #03045e;
 position: relative;
 overflow: hidden;
 transition: all 0.5s ease-in;
 z-index: 1;
}

button::before,
button::after {
 content: '';
 position: absolute;
 top: 0;
 width: 0;
 height: 100%;
 transform: skew(15deg);
 transition: all 0.5s;
 overflow: hidden;
 z-index: -1;
}

button::before {
 left: -10px;
 background: #240046;
}

button::after {
 right: -10px;
 background: #5a189a;
}

button:hover::before,
button:hover::after {
 width: 58%;
}

button:hover span {
 color: #e0aaff;
 transition: 0.3s;
}

button span {
 color: #03045e;
 font-size: 18px;
 transition: all 0.3s ease-in;
}



/*CSSS PARA LAS TALLAS DE LA BICICLETA*/

.breadcrumb-title {
  position: sticky;
  top: 0;
  z-index: 1000;
  font-size: 16px;
  font-weight: 500;
  color: #333;
  background: transparent;
  padding: 0;
  margin: 0;
  box-shadow: none;
  transition: transform 0.3s ease, opacity 0.3s ease;
}

.breadcrumb-hidden {
  transform: translateY(-100%);
  opacity: 0;
  pointer-events: none;
}



.logo {
  height: 30px;

}


.banner{
    height: 575px;
    width: 1500px;
}


.reviews {
    margin-top: 10px;
  }

  .stars {
    color: gold;
    font-size: 1.2em;
  }

  .review-count {
    font-size: 0.9em;
    color: #555;
    margin-left: 5px;
  }



/*CSSS PARA EL NOMBRE Y APELLIDO*/

  .nav-icons {
    display: flex;
    justify-content: flex-end; /* Alínea todo a la derecha */
    align-items: center;       /* Centra verticalmente */
    gap: 15px;
  
    padding: 0 20px; /* Opcional: margen interno a los lados */
}

.user-menu {
    position: relative;
    display: inline-block;
}

.user-menu a {
    text-decoration: none;
    color: inherit;
    cursor: pointer;
}

.dropdown-menu {
  opacity: 0;
  visibility: hidden;
  transition: opacity 0.3s ease;
  position: absolute;
  right: 0;
  top: 100%;
  background: white;
  border: 1px solid #ddd;
  padding: 8px 0;
  margin-top: 5px;
  border-radius: 4px;
  min-width: 150px;
  box-shadow: 0 2px 6px rgba(0,0,0,0.2);
  z-index: 1000;
}

.user-menu:hover .dropdown-menu {
    display: block;
}

.dropdown-menu.show {
  opacity: 1;
  visibility: visible;
}

.dropdown-menu a {
  display: block;
  padding: 8px 16px;
  color: #333;
  text-decoration: none;
}

.dropdown-menu a:hover {
  background-color: #f8f9fa;
}



</style>
    <body>
    
    
    <div class="navbar">
      <a href="PaginaPrincipal.jsp">  <img class="logo" src="images/titulo.jpg" alt="logo" height="40px"> </a>
        <ul class="nav-links">
          <li>
            <a href="#">Bicis</a>
            <ul class="submenu">
              <li><a href="S-WORKS.jsp">S-WORKS</a></li>
              <li>
                <a href="#">Montaña</a>
                <ul class="otromenu">
                  <li><a href="CrossCountry.jsp">Cross Country</a></li>
                  <li><a href="TrailEnduro.jsp">Trail / Enduro</a></li>
                </ul>
              </li>
              <li>
                <a href="#">Ruta</a>
                <ul class="otromenu">
                  <li><a href="BicisGravel.jsp">Gravel</a></li>
                </ul>
              </li>
              <li><a href="#">ACTIVE / URBANAS</a>
                <ul class="otromenu">
                    <li><a href="Roll20LowEntry.jsp">Roll 2.0 Low Entry</a></li>
                </ul>
            </li>
              <li><a href="#">NIÑOS</a>
                    <ul class="otromenu">
                        <li><a href="710años.jsp">7 - 10 Años</a></li>
                    </ul>
                   </li>
              <li><a href="bicisROCKHOPPER.jsp">ROCKHOPPER</a></li>
            </ul>
          </li>

       
            
       
       

          

          <li><a href="#">Equipamiento</a>

            <ul class="submenu">
                <li><a href="equipamiento_S-WORKS.html">S-WORKS</a></li>
              
                <li><a href="#">Ropa</a>

                    <ul class="otromenu">
                        <li><a href="#">Hombre </a>


                            <ul class="otromenu">
                                <li><a href="Jerseys.jsp">Jerseys</a></li>
                                
                            </ul>
                        </li>


                        <li><a href="#">Mujer</a>

                                
                            <ul class="otromenu">
                                <li><a href="JerseysMujer.jsp">Jerseys</a></li>

                            </ul>
                        </li>
                    </li>

                    </ul>

                </li>


                <li><a href="#">Componentes</a>
                
                        <ul class="otromenu">
                            <li><a href="Aros.jsp">Aros</a></li>
                            <li><a href="Asientos.jsp">Asientos</a></li>

                        </ul> 
                
                </li>


                <li><a href="#">Accesorios</a>
                
                    <ul class="otromenu">
                        <li><a href="PortaBotella.jsp">Porta Botella</a></li>
                        <li><a href="Luces.jsp">Luces</a></li>
                    </ul>
                
                
                
                
                
                </li>
            </ul>




          <li><a href="SobreNostros.jsp">Sobre Nosotros</a></li>
          <li><a href="NuestrosCompetidores.jsp">Nuestros Competidores</a></li>
        </ul>
      



<div class="nav-icons">
  <div class="user-menu">
    <a href="#" id="userMenuToggle"><i class="bi bi-person"></i> ${sessionScope.nombre} ${sessionScope.apellido}</a>
    
    <div class="dropdown-menu" id="userDropdown">
      <a href="login.jsp">Cerrar sesión</a>
    </div>
  </div>

  <a href="Carrito.jsp"><i class="bi bi-cart3"></i></a>
</div>


</div>







    <br><br>
    <div class="breadcrumb-container">
        <h4 class="breadcrumb-title" id="breadcrumb">
          Inicio / Specialized / S-WORKS / <span>7 - 10 Años</span>
        </h4>
      </div>
<br>

      <div class="banner">
        <img class="banner" src="images/bannerniños.jpg">
      </div>








<div class="banner-contenedor">
    <div class="banner-centered">
        <img src="images/Jett 16 Single Speed.jpg" alt="Jett 16 Single Speed" title="Jett 16 Single Speed">
         <div class="etiqueta-talla">7 - 10 años</div> <!-- Talla M como etiqueta -->
        <div class="descripcion-banner">
            <h2>Jett 16 Single Speed</h2>
            <p class="precio">$1,615.00 </p>
                <P> <span class="stars">★★★★</span></P>
              <form action="Carrito.jsp" method="post">
  <input type="hidden" name="nombre" value="Jett 16 Single Speed">
  <input type="hidden" name="imagen" value="images/Jett 16 Single Speed.jpg">
  <input type="hidden" name="precio" value="1,615.00 ">
   <input type="hidden" name="talla" value="7 - 10 años">
   <input type="hidden" name="producto" value="Bicicleta">

  <input type="hidden" name="cantidad" value="1">
  
  <center>
    <button type="submit">Agregar<span></span></button>
  </center>
</form>



        </div>
    </div>
   

</div>





























</body>
<script>
//Animación al hacer clik nombre y apelldio


 const toggleBtn = document.getElementById('userMenuToggle');
  const dropdown = document.getElementById('userDropdown');

  // Mostrar/ocultar al hacer clic en el nombre
  toggleBtn.addEventListener('click', function(event) {
    event.preventDefault(); // Evita que el enlace recargue la página
    dropdown.classList.toggle('show');
  });

  // Ocultar al hacer clic fuera del menú
  window.addEventListener('click', function(event) {
    if (!toggleBtn.contains(event.target) && !dropdown.contains(event.target)) {
      dropdown.classList.remove('show');
    }
  });

</script>
</html>