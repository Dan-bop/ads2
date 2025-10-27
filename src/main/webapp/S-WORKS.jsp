<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>S-WORKS</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    
</head>
<style>

.banner-centered {
    position: relative;
    text-align: center;
    color: white;
    overflow: hidden;
    height: 350px;
  
    }

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






/*CSSS PARA LA PARTE DE LAS ENTRELLAS*/
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




      /*CSSS PARA TACHAR PRECIO*/
.old-price {
    background-color: rgba(0, 0, 0, 0.1);
    padding: 2px 6px;
    border-radius: 4px;
    margin-right: 5px;
  }



.logo {
  height: 30px;

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





    <br>
    <h4 class="breadcrumb-title" style="z-index: 1000; ">
        Inicio / Specialized / <span>S-WORKS</span>
      </h4>
      

        <div class="banner-centered">
            <img src="images/bannerSWO.jpg" alt="Paginas S-Works" title="Banner">
            </div>

            <br>
            

        <h2 style="text-align: center; font-family: Arial, sans-serif; font-weight: 600;"><KBD>Se Mostraron 8 Productos</KBD></h2>


        <div class="team-container">

            <div class="team-member">
                <a href="S-WORKSEPIC8.jsp"><img src="images/swor.jpg" alt="Bicicleta N°1" title="S-WORKS Epic 8"></a>
                <h4>S-WORKS EPIC 8</h4>
                <p>$59,360.00</p>
                </div>


          <div class="team-member">
            <a href="S-WorksStumpjumper15LTD.jsp"><img src="images/img15.jpg" alt="Bicicleta N°15" title="S-Works Stumpjumper 15 LTD"></a>
            <h4>S-Works Stumpjumper 15 LTD</h4>
            <p>$53,795.00</p>
          </div>


          <div class="team-member">
            <a href="S-WorksEpicWorldCup.jsp"><img src="images/img16.jpg" alt="Bicicleta N°16" title="S-Works Epic World Cup"></a>
            <h4>S-Works Epic World Cup</h4>
            <p>$51,940.00</p>
            <div class="reviews">
              <span class="stars">★★★★★</span>
              <span class="review-count">7 reseñas</span>
            </div>
          </div>



          <div class="team-member">
            <a href="S-WorksStumpjumper15.jsp"><img src="images/img17.jpg" alt="Bicicleta N°17" title="S-Works Stumpjumper 15"></a>
            <h4>S-Works Stumpjumper 15</h4>
            <p>$47,490.00</p>
          </div>


          <div class="team-member">
            <a href="S-WorksEpicHardtail.jsp"><img src="images/img18.jpg" alt="Bicicleta N°18" title="S-Works Epic Hardtail"></a>
            <h4>S-Works Epic Hardtail</h4>
            <p>$40,810.00</p>
            <div class="reviews">
              <span class="stars">★★★★☆</span>
              <span class="review-count">10 reseñas</span>
            </div>
          </div>


       


          <div class="team-member">
            <a href="S-WorksStumpjumperEVO.jsp"><img src="images/img20.jpg" alt="Bcicicleta N°20" title="S-Works Stumpjumper EVO"></a>
            <h4>S-Works Stumpjumper EVO</h4>
            <p><s class="old-price">$47,490.00</s> desde $28,922.00</p>
            <div class="reviews">
              <span class="stars">★★★★☆</span>
              <span class="review-count">1 reseñas</span>
            </div>
          </div> 


          <div class="team-member">
            <a href="S-WorksTarmacSL8SRAMREDAXS.jsp"><img src="images/img21.jpg" alt="Bcicicleta N°21" title="S-Works Tarmac SL8 – SRAM RED AXS"></a>
            <h4>S-Works Tarmac SL8 – SRAM RED AXS</h4>
            <p>$55,650.00</p>
          </div>






        </div>




<br><br>








    </body>
    
    
    
    
    <script >
 
    
    
    
 // Animación al hacer clik nombre y apelldio
 


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