<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title> SpecializedPeru</title>
   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">




    <style>

/*CSSS PARA MOVIL*/






/*ESTILOS PARA EL NAVEGADOR JUNTO CON LA IMG*/ 

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







/*CSSS PARA  EL BANNER*/

.banner-centered {
  position: relative;
  text-align: center;
  color: white;
  overflow: hidden;
  height: 400px;
}

.banner-video {
  position: absolute;
  top: 50%;
  left: 50%;
  min-width: 100%;
  min-height: 100%;
  width: auto;
  height: auto;
  transform: translate(-50%, -50%);
  z-index: 0;
  object-fit: cover;
  filter: brightness(0.6);
}

.banner-text {
  position: relative;
  z-index: 1;
  padding: 20px;
}

.banner-text h1 {
  font-size: 36px;
  margin-bottom: 10px;
}

.banner-text p {
  font-size: 18px;
  margin-bottom: 20px;
}

.banner-button {
  display: inline-block;
  padding: 10px 25px;
  background-color: #007bff;
  color: white;
  text-decoration: none;
  border-radius: 30px;
  font-weight: bold;
  transition: background-color 0.3s;
}

.banner-button:hover {
  background-color: #0056b3;
}








/*CSS PARA LAS SECCIONES DE LAS IMG CON TEXTOS*/

/* Estilos para cada sección */
.seccion {
  position: relative;
  width: 500px;
  height: 700px;
  overflow: hidden;
  /*border: 10px inset #83898b; /* Bordes alrededor de la imagen */
}

/* Estilos para las imágenes dentro de cada sección */
.seccion img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  display: block;
  filter: brightness(0.7); /* Oscurecer la imagen */
}

/* Estilo para el texto que aparece sobre la imagen */
.texto-encima {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: rgb(215, 209, 209); /* Color del texto */
  text-align: center;
  padding: 20px;
  z-index: 2;
  background-color: rgba(0, 0, 0, 0.5); /* Fondo oscuro y transparente para mejorar la legibilidad */
  border-radius: 10px;
}

/* Estilo para el título dentro del texto encima */
.texto-encima h2 {
  font-size: 24px;
  margin-bottom: 10px;
}

/* Estilo para el párrafo dentro del texto encima */
.texto-encima p {
  font-size: 16px;
}

/* Contenedor que agrupa todas las secciones */
.contenedor1 {
  display: flex;
  justify-content: space-around; /* Distribuye las secciones con espacio alrededor */
  gap: 20px; /* Espacio entre cada sección */
  flex-wrap: nowrap; /* No permite que las secciones se envuelvan, todas deben estar en una fila */
  overflow-x: auto; /* Permite el desplazamiento horizontal si el contenido excede el ancho de la pantalla */
}

/* Media queries para pantallas pequeñas (tabletas y móviles) */


  /* Asegura que las secciones se mantengan en fila pero con desplazamiento horizontal */
  .contenedor1 {
    flex-direction: row; /* Mantiene las secciones en fila en pantallas pequeñas */
    justify-content: space-between; /* Ajusta el espaciado entre las secciones */
    gap: 10px; /* Menor espacio entre las secciones */
  }

  

  
/*CSS PARA LA IMG CON SU RESPECTIVO DESCRIPCION */


section {
  display: flex;
  justify-content: space-around; /* Distribuye el contenido de las secciones */
  flex-wrap: wrap; /* Hace que las secciones se ajusten en nuevas filas si es necesario */
  gap: 20px; /* Espacio entre las secciones */
  margin: 20px 0;
}

.blok {
  width: 300px; /* Ajusta el tamaño de cada bloque */
  padding: 15px;
  background-color: #f4f4f4;
  border-radius: 10px;
  text-align: center;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Sombra ligera */
}

.blok img {
  width: 100%;
  height: auto; /* Mantiene la proporción de la imagen */
  border-radius: 8px; /* Redondea los bordes de la imagen */
}

.blok h3 {
  font-size: 18px;
  font-family: Arial, sans-serif;
  color: #333;
  margin-top: 10px;
}

.blok .p {
  font-size: 14px;
  color: #666;
  margin-top: 10px;
  line-height: 1.5;
}




/*CSS PARA EL CENTRO DESTACADO */


.destacado{
  text-align: center;
  padding: 30px;
  font-family: 'Bebas Neue', sans-serif;
  font-size: 48px;
  letter-spacing: 2px;
  color: #333;


}

/*CSS PARA EL MODOD DE OFERTA*/

.oferta{
  text-align: center;
  padding: 30px;
  font-family: 'Bebas Neue', sans-serif;
  color: #db1818;


}



/*CSS PARA LA SESION DE BICICLETA EN OFERTA CON CADA UNO DE SUS RESEÑAS*/


.container {
    position: relative;
  
    padding: 15px;
    border: 1px solid #ddd;
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    background-color: white;
    text-align: center;
  }

  .discount-badge {
    background-color: red;
    color: white;
    padding: 5px 10px;
    font-weight: bold;
    position: absolute;
    top: 10px;
    left: 10px;
    border-radius: 4px;
    z-index: 1;
  }

  .product-image {
    width: 100%;
    height: auto;
    border-radius: 5px;
    transition: transform 0.3s ease-in-out;
  }

  .product-image:hover {
    transform: scale(1.05);
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

  .old-price {
    background-color: rgba(0, 0, 0, 0.1);
    padding: 2px 6px;
    border-radius: 4px;
    margin-right: 5px;
  }

  .sold {
    font-size: 0.95em;
    color: #444;
    transition: color 0.3s ease;
  }

  .sold:hover {
    color: red;
  }

  .fire-icon {
    margin-left: 5px;
    font-size: 1.2em;
  }

  h3 {
    margin: 10px 0 5px;
    font-size: 1.1em;
  }

  p {
    margin: 5px 0;
  }


  /*CSSS PARA FONFO Y SU DESCRIPCION*/



  .img-miniatura {
  width: 80px;
  height: 80px;
  object-fit: cover;       /* Mantiene el recorte proporcional */
  border-radius: 10px;      /* Bordes redondeados */
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);  /* Sombra suave */
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.img-miniatura:hover {
  transform: scale(1.05);  /* Ligeramente más grande al pasar el mouse */
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);  /* Sombra más marcada */
}

/*img de lectura i contecto*/
.seccion1 {
  position: relative;
  width:450px;
  height: 450px;
  border-radius: 10px;
  overflow: hidden;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
}

.img-mediana {
  width: 100%;
  height: 100%;
  object-fit: cover;
  border-radius: 10px;
  transition: transform 0.3s ease;
}

.img-mediana:hover {
  transform: scale(1.05);
}


.texto-encima1{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: rgb(215, 209, 209); /* Color del texto */
  text-align: center;
  padding: 20px;
  z-index: 2;
 /* background-color: rgba(0, 0, 0, 0.5); /* Fondo oscuro y transparente para mejorar la legibilidad */
  border-radius: 10px;

}


/*CSSS PARA LAS SECCIONES DE METODO DE PAGO*/


/* Contenedor principal para los banners */
.banner-container {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  gap: 2rem;
  margin: 2rem auto;
}

.banner-section {
  position: relative;
  width: 100%;
  max-width: 800px; /* Asegura que cada sección no se haga demasiado ancha */
  height: 300px; /* Ajusta la altura para que las imágenes no sean tan grandes */
  border-radius: 15px;
  overflow: hidden; /* Asegura que las imágenes no sobresalgan del borde */
}

.banner-image {
  width: 100%;
  height: 100%;
  background-size: cover; /* Asegura que la imagen cubra toda el área disponible */
  background-position: center;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Añade sombra para un toque visual */
}

.banner-text {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
  color: #fff;
  background: rgba(0, 0, 0, 0.5); /* Fondo oscuro para el texto */
  padding: 1rem;
  border-radius: 10px;
  width: 80%; /* Limita el ancho del texto */
}

.banner-text h2,
.banner-text h1 {
  font-size: 2rem;
  margin-bottom: 1rem;
}

.banner-text p {
  font-size: 1rem;
  line-height: 1.5;
}


/* Sección centrada */
.center {
  display: flex;
  justify-content: center; /* Centra el tercer banner */
  align-items: center;
  width: 100%; /* El tercer banner ocupa todo el ancho disponible */
}

/* Adaptación para pantallas pequeñas */
@media (max-width: 768px) {
  .banner-container {
    flex-direction: column; /* Apilamos los banners verticalmente */
    padding: 1rem;
  }

  .banner-section {
    width: 100%; /* Los banners ocupan todo el ancho */
    margin-bottom: 2rem; /* Espacio entre los banners */
  }

  .banner-text h2, .banner-text h1 {
    font-size: 1.8rem; /* Tamaño de fuente reducido en dispositivos pequeños */
  }

  .banner-text p {
    font-size: 1rem; /* Reducimos el tamaño del párrafo */
  }
}


/*CSSS PARA EL BOTON DE SABER MASSSSSS*/


/* From Uiverse.io by Subaashbala */ 
button {
  display: flex;
  justify-content: space-around;
  align-items: center;
  padding: 1em 0em 1em 1em;
  background-color: yellow;
  cursor: pointer;
  box-shadow: 4px 6px 0px black;
  border: 4px solid;
  border-radius: 15px;
  position: relative;
  overflow: hidden;
  z-index: 100;
  transition: box-shadow 250ms, transform 250ms, filter 50ms;
}
button:hover {
  transform: translate(2px, 2px);
  box-shadow: 2px 3px 0px black;
}
button:active {
  filter: saturate(0.75);
}
button::after {
  content: "";
  position: absolute;
  inset: 0;
  background-color: pink;
  z-index: -1;
  transform: translateX(-100%);
  transition: transform 250ms;
}
button:hover::after {
  transform: translateX(0);
}
.bgContainer {
  position: relative;
  display: flex;
  justify-content: start;
  align-items: center;
  overflow: hidden;
  max-width: 35%; /* adjust this if the button text is not proper */
  font-size: 2em;
  font-weight: 600;
}
.bgContainer span {
  position: relative;
  transform: translateX(-100%);
  transition: all 250ms;
}
.button:hover .bgContainer > span {
  transform: translateX(0);
}
.arrowContainer {
  padding: 1em;
  margin-inline-end: 1em;
  border: 4px solid;
  border-radius: 50%;
  background-color: pink;
  position: relative;
  overflow: hidden;
  transition: transform 250ms, background-color 250ms;
  z-index: 100;
}
.arrowContainer::after {
  content: "";
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background-color: yellow;
  transform: translateX(-100%);
  z-index: -1;
  transition: transform 250ms ease-in-out;
}
button:hover .arrowContainer::after {
  transform: translateX(0);
}
button:hover .arrowContainer {
  transform: translateX(5px);
}
button:active .arrowContainer {
  transform: translateX(8px);
}
.arrowContainer svg {
  vertical-align: middle;
}







/*CSSS PARA LA TARJETA DE 3D CARGT*/

/* From Uiverse.io by Smit-Prajapati */ 
.parent {
  width: 200px;
  padding: 20px;
  perspective: 1000px;
}


  .card {
  position: relative;
  width: 600px; /* Ajusta el tamaño según lo necesites */
  height: 600px;
  border-radius: 15px;
  overflow: hidden; /* Para evitar que la imagen sobresalga del contorno */
  background-image: url('images/img12.jpg'); /* Ruta de la imagen de fondo */
  background-size: cover; /* Hace que la imagen cubra todo el espacio */
  background-position: center; /* Asegura que la imagen se centre */
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}




.card1 {
  position: relative;
  width: 600px; /* Ajusta el tamaño según lo necesites */
  height: 600px;
  border-radius: 15px;
  overflow: hidden; /* Para evitar que la imagen sobresalga del contorno */
  background-image: url('images/img14.jpg'); /* Ruta de la imagen de fondo */
  background-size: cover; /* Hace que la imagen cubra todo el espacio */
  background-position: center; /* Asegura que la imagen se centre */
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}













.card:hover {
  background-position: -100px 100px, -100px 100px;
  transform: rotate3d(0.5, 1, 0, 30deg);
}

.content-box {
 /* background: rgba(153, 158, 159, 0.732);
  /* border-radius: 10px 100px 10px 10px; */
  transition: all 0.5s ease-in-out;
  padding: 60px 25px 25px 25px;
  transform-style: preserve-3d;
}

.content-box .card-title {
  display: inline-block;
  color: white;
  font-size: 25px;
  font-weight: 900;
  transition: all 0.5s ease-in-out;
  transform: translate3d(0px, 0px, 50px);
}

.content-box .card-title:hover {
  transform: translate3d(0px, 0px, 60px);
}

.content-box .card-content {
  margin-top: 10px;
  font-size: 12px;
  font-weight: 700;
  color: #f2f2f2;
  transition: all 0.5s ease-in-out;
  transform: translate3d(0px, 0px, 30px);
}

.content-box .card-content:hover {
  transform: translate3d(0px, 0px, 60px);
}

.content-box .see-more {
  cursor: pointer;
  margin-top: 1rem;
  display: inline-block;
  font-weight: 900;
  font-size: 9px;
  text-transform: uppercase;
  color: rgb(7, 185, 255);
  /* border-radius: 5px; */
  background: white;
  padding: 0.5rem 0.7rem;
  transition: all 0.5s ease-in-out;
  transform: translate3d(0px, 0px, 20px);
}

.content-box .see-more:hover {
  transform: translate3d(0px, 0px, 60px);
}

.date-box {
  position: absolute;
  top: 30px;
  right: 30px;
  height: 60px;
  width: 60px;
  background: white;
  border: 1px solid rgb(7, 185, 255);
  /* border-radius: 10px; */
  padding: 10px;
  transform: translate3d(0px, 0px, 80px);
  box-shadow: rgba(100, 100, 111, 0.2) 0px 17px 10px -10px;
}

.date-box span {
  display: block;
  text-align: center;
}

.date-box .month {
  color: rgb(4, 193, 250);
  font-size: 9px;
  font-weight: 700;
}

.date-box .date {
  font-size: 20px;
  font-weight: 900;
  color: rgb(4, 193, 250);
}
 




.card-container {
  display: flex;
  justify-content: center;
  gap: 2rem;
  flex-wrap: wrap; /* Permite que se adapten en móviles */
  margin: 2rem 0;
}

.card {
  width: 700px;
  height: 800px;
  border-radius: 20px;
  background-size: cover;
  background-position: center;
  overflow: hidden;
  box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
}

/* Fondo para la primera tarjeta */
.card {
  background-image: url('images/img12.jpg');
}

/* Fondo para la segunda tarjeta */
.card1 {
  background-image: url('images/img14.jpg');
}

/* Contenido dentro de las tarjetas */
.content-box {
  background: rgba(0, 0, 0, 0.5);
  padding: 1.5rem;
  border-radius: 15px;
  color: white;
  text-align: center;
}




/*CSSSS PARA LA PARTE DEL FOOTER*/

.footer {
  background: linear-gradient(135deg, #1e1e2f, #13131a);
  color: #eee;
  padding: 50px 20px;
  font-family: 'Segoe UI', sans-serif;
  text-align: left;
}

.containerfooter {
  max-width: 900px;
  margin: 0 auto;
  padding: 0 20px;
}

.footer-title {
  font-size: 1.8rem;
  font-weight: 600;
  color: #fff;
  margin-bottom: 25px;
  border-left: 4px solid #ff3366;
  padding-left: 10px;
}

.link-title {
  font-size: 1.1rem;
  color: #bbb;
  text-decoration: none;
  display: block;
  margin-bottom: 12px;
  transition: all 0.3s ease;
}

.link-title:hover {
  color: #ffcc00;
  padding-left: 5px;
}

@media (max-width: 768px) {
  .footer {
    text-align: center;
  }

  .link-title {
    text-align: center;
  }

  .footer-title {
    text-align: center;
    border: none;
    padding-left: 0;
  }
}



.fade-in {
  opacity: 0;
  transform: translateX(-20px);
  transition: opacity 0.6s ease-out, transform 0.6s ease-out;
}

.fade-in.visible {
  opacity: 1;
  transform: translateX(0);
}



.reveal {
  opacity: 0;
  transform: translateY(30px);
  transition: all 0.6s ease;
}

.reveal.active {
  opacity: 1;
  transform: translateY(0);
}

.footer-content {
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  max-width: 1200px;
  margin: auto;
  padding: 0 20px;
  gap: 40px;
}

.containerfooter,
.contact-footer {
  flex: 1;
  min-width: 300px;
}

#SocialIcons {
  display: flex;
  gap: 30px;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  padding: 20px 0;
}

.icons {
  text-align: center;
}

.iconName {
  margin-top: 5px;
  color: #ccc;
}

/* Responsive para móviles */
@media (max-width: 768px) {
  .footer-content {
    flex-direction: column;
    align-items: center;
  }

  .containerfooter,
  .contact-footer {
    text-align: center;
  }

  #SocialIcons {
    justify-content: center;
  }
}




/*CSSS PARA LA PARTE DE FBBB*/

/* From Uiverse.io by mRcOol7 */ 
.tooltip-container {
  position: relative;
  cursor: pointer;
  transition: all 0.2s;
  font-size: 17px;
  border-radius: 10px;
}

.tooltip {
  position: absolute;
  top: 0;
  left: 50%;
  transform: translateX(-50%);
  padding: 10px;
  opacity: 0;
  pointer-events: none;
  transition: all 0.3s;
  border-radius: 15px;
  box-shadow: inset 5px 5px 5px rgba(0, 0, 0, 0.2),
    inset -5px -5px 15px rgba(255, 255, 255, 0.1),
    5px 5px 15px rgba(0, 0, 0, 0.3), -5px -5px 15px rgba(255, 255, 255, 0.1);
}

.profile {
  background: #3b5998;
  border-radius: 10px 15px;
  padding: 10px;
  border: 1px solid #29487d;
}

.tooltip-container:hover .tooltip {
  top: -150px;
  opacity: 1;
  visibility: visible;
  pointer-events: auto;
}

.icon {
  text-decoration: none;
  color: #fff;
  display: block;
  position: relative;
}
.icon .layer {
  width: 55px;
  height: 55px;
  border: 3px solid #1877f2;
  border-radius: 50%;
  transition: transform 0.3s, border 0.3s ease, box-shadow 0.3s ease;
  box-shadow: 0 0 15px rgba(24, 119, 242, 0.7), 0 0 20px rgba(24, 119, 242, 0.5);
}

.icon:hover .layer {
  transform: rotate(-35deg) skew(20deg);
  box-shadow: 0 0 30px rgba(24, 119, 242, 1), 0 0 40px rgba(24, 119, 242, 0.7);
}

.layer span {
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  border: 1px solid #fff;
  border-radius: 50%;
  transition: all 0.3s;
}

.layer span,
.text {
  color: #1877f2;
  border-color: #1877f2;
}

.icon:hover .layer span {
  box-shadow: -1px 1px 3px #1877f2;
}

.icon .text {
  position: absolute;
  left: 50%;
  bottom: -5px;
  opacity: 0;
  font-weight: 500;
  transform: translateX(-50%);
  transition: bottom 0.3s ease, opacity 0.3s ease;
}

.icon:hover .text {
  bottom: -35px;
  opacity: 1;
}

.icon:hover .layer span:nth-child(1) {
  opacity: 0.2;
}

.icon:hover .layer span:nth-child(2) {
  opacity: 0.4;
  transform: translate(5px, -5px);
}

.icon:hover .layer span:nth-child(3) {
  opacity: 0.6;
  transform: translate(10px, -10px);
}

.icon:hover .layer span:nth-child(4) {
  opacity: 0.8;
  transform: translate(15px, -15px);
}

.icon:hover .layer span:nth-child(5) {
  opacity: 1;
  transform: translate(20px, -20px);
}

.facebookSVG {
  font-size: 25px;
  display: flex;
  align-items: center;
  justify-content: center;
  background: #1877f2;
  border-radius: 50%;
  background: linear-gradient(
    45deg,
    #1877f2 0%,
    #3b5998 25%,
    #1877f2 50%,
    #3b5998 75%,
    #1877f2 100%
  );
}

.user {
  display: flex;
  gap: 10px;
}

.img {
  width: 50px;
  height: 50px;
  font-size: 25px;
  font-weight: 700;
  border: 1px solid #1877f2;
  border-radius: 10px;
  display: flex;
  align-items: center;
  justify-content: center;
  background: #fff;
}

.name {
  font-size: 17px;
  font-weight: 700;
  color: #1877f2;
}

.details {
  display: flex;
  flex-direction: column;
  gap: 0;
  color: #fff;
}

.about {
  color: #ccc;
  padding-top: 5px;
}


/*CSSS PARA LA PARTE DE IG LOGO*/
/* From Uiverse.io by vinodjangid07 */ 
.tooltip-container {
  position: relative;
  cursor: pointer;
  transition: all 0.2s;
  font-size: 17px;
  border-radius: 10px;
}

.tooltip {
  position: absolute;
  top: 0;
  left: 50%;
  transform: translateX(-50%);
  padding: 10px;
  opacity: 0;
  pointer-events: none;
  transition: all 0.3s;
  border-radius: 15px;
  box-shadow: inset 5px 5px 5px rgba(0, 0, 0, 0.2),
    inset -5px -5px 15px rgba(255, 255, 255, 0.1),
    5px 5px 15px rgba(0, 0, 0, 0.3), -5px -5px 15px rgba(255, 255, 255, 0.1);
}

.profile {
  background: #2a2b2f;
  border-radius: 10px 15px;
  padding: 10px;
  border: 1px solid #52382f;
}

.tooltip-container:hover .tooltip {
  top: -150px;
  opacity: 1;
  visibility: visible;
  pointer-events: auto;
}

.icon {
  text-decoration: none;
  color: #fff;
  display: block;
  position: relative;
}
.layer {
  width: 55px;
  height: 55px;
  transition: transform 0.3s;
}
.icon:hover .layer {
  transform: rotate(-35deg) skew(20deg);
}
.layer span {
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  border: 1px solid #fff;
  border-radius: 15px;
  transition: all 0.3s;
}

.layer span,
.text {
  color: #e6683c;
  border-color: #e6683c;
}

.icon:hover.layer span {
  box-shadow: -1px 1px 3px #e6683c;
}
.icon .text {
  position: absolute;
  left: 50%;
  bottom: -5px;
  opacity: 0;
  font-weight: 500;
  transform: translateX(-50%);
  transition: bottom 0.3s ease, opacity 0.3s ease;
}
.icon:hover .text {
  bottom: -35px;
  opacity: 1;
}

.icon:hover .layer span:nth-child(1) {
  opacity: 0.2;
}
.icon:hover .layer span:nth-child(2) {
  opacity: 0.4;
  transform: translate(5px, -5px);
}
.icon:hover .layer span:nth-child(3) {
  opacity: 0.6;
  transform: translate(10px, -10px);
}
.icon:hover .layer span:nth-child(4) {
  opacity: 0.8;
  transform: translate(15px, -15px);
}
.icon:hover .layer span:nth-child(5) {
  opacity: 1;
  transform: translate(20px, -20px);
}

.instagramSVG {
  font-size: 25px;
  display: flex;
  align-items: center;
  justify-content: center;
  background: -webkit-linear-gradient(
    45deg,
    #f09433 0%,
    #e6683c 25%,
    #dc2743 50%,
    #cc2366 75%,
    #bc1888 100%
  );
  background: linear-gradient(
    45deg,
    #f09433 0%,
    #e6683c 25%,
    #dc2743 50%,
    #cc2366 75%,
    #bc1888 100%
  );
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f09433', endColorstr='#bc1888',GradientType=1 );
}
.user {
  display: flex;
  gap: 10px;
}
.img {
  width: 50px;
  height: 50px;
  font-size: 25px;
  font-weight: 700;
  border: 1px solid #e6683c;
  border-radius: 10px;
  display: flex;
  align-items: center;
  justify-content: center;
  background: #fff;
}
.name {
  font-size: 17px;
  font-weight: 700;
  color: #e6683c;
}
.details {
  display: flex;
  flex-direction: column;
  gap: 0;
  color: #fff;
}
.about {
  color: #ccc;
  padding-top: 5px;
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

/*CODIGO CERRAR SESION*/
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

/* Mostrar el dropdown */
.dropdown-menu.show {
  opacity: 1;
  visibility: visible;
}


.user-menu:hover .dropdown-menu {
    display: block;
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
</head>
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
                <li><a href="EquipamientoS-WORKS.jsp">S-WORKS</a></li>
              
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
      


<!-- SECCION DE DONDE SALE PARA CERRAR SESION -->

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




<div class="banner-centered">
<video autoplay muted loop class="banner-video">
      <source src="video/Banner.mp4" type="video/mp4">
    </video> 

    
    
    <div class="banner-text">
      <h1>Bienvenido a Specialized</h1>
      <p>La mejor selección de bicicletas para todos los estilos.</p>
  
    </div>
  </div>
  
<br>

<div class="contenedor1">
  <div class="seccion">
    <img src="images/img1.jpg" alt="imagen N°1">
    <div class="texto-encima">
      <h2>Subéte y Arranca</h2>
      <p>Auto Record: Grabación de recorrido que comienza y termina cuando tú lo haces.</p>
    </div>
  </div>
  

  <div class="seccion">
    <img src="images/img2.jpg" alt="imagen N°2">
    <div class="texto-encima">
      <h2>Tranquilad Asegurada</h2>
      <p>Disuade el robo con el bloqueo del Sistema Turbo.</p>
    </div>
  </div>


  <div class="seccion">
  <img src="images/img3.jpg" alt="imagen N°3">
    <div class="texto-encima">
      <h2>Apple,Find My Turbo</h2>
      <p>Rastrea tu bicicleta como lo haces con tu telefono gracias a la integración con Apple Find My.</p>
    </div>
</div>

  <div class="seccion">
    <img src="images/img4.jpg" alt="imagen N°4">
    <div class="texto-encima">
        <h2>Personaliza tu Viaje</h2>
        <p>Personaliza tu expreriencia de conduccón con Tune.</p>
    </div>
  </div>

</div>
 

<h2 style="text-align: center; font-family: Arial, sans-serif; font-weight: 600;">Compara los niveles de equipamiento</h2>

<section>
  <article class="blok">
  <img src="images/bici1.jpg" alt="S-Works Levo 4" title="S-Works Levo 4">
  <h3>S-Works Levo 4</h3>
  <p class="p">
    Rendimiento más allá de la razón. Lo mejor de lo mejor. Potencia y torque incomparables.
     El viaje de tu vida. Vale la pena.
 </p>
  </article>


    <article class="blok">
      <img src="images/bici2.jpg" alt="Bicicleta Levo 4"  title="Levo 4 Pro">
      <h3> Levo 4 Pro</h3>
      <p class="p">
        Para ciclistas apasionados que saben:potencia Turbo imparable, 
        suspención de élite,transmisión XO Eagle AXS, ruedad de carbono indetenibles.
      </p>
    </article>


    <article class="blok">
      <img src="images/bici3.jpg" alt="Bicicleta Levo 4 Expert" title="Levo 4 Expert">
      <h3>Levo 4 Expert</h3>
      <p class="p">
        Construida para ciclistas que llevan los límites al maximo:Suspensión GENIE,
        potentes frenos SRAM Maven Silver,transmisión Eagle T-Type--puro Rendimiento sin concesiones.
      </p>
    </article>


    <article class="blok">
      <img src="images/bici4.jpg" alt="Bicicleta Levo 4 Comp" title="Bicicleta Levo 4 Comp">
      <p class="p">
      Mismo cuadro y sistema Turbo que el Pro, ajustado con una configuración sólida: frenos Maven Bronze, transmisión
      inalámbrica SRAM Eagle AXS--diseñada para rendir.contruida para durar.
      </p>
    </article>

</section>

    <h1 class="destacado">DESTACADOS</h1>

    <h3 class="oferta"><u>Bicis en Oferta</u></h3>


    <div style="display: flex; justify-content: space-around; flex-wrap: wrap; gap: 20px;">

      

      <!-- CUADRO 1 -->
      <div class="container my">
        <div class="discount-badge">25% Off</div>
        <img src="images/bici5.jpg" alt="Bicicleta" title="Turbo Levo Comp Carbon" class="product-image">
        
        <div class="reviews">
          <span class="stars">★★★★★</span>
          <span class="review-count">(2 reseñas)</span>
        </div>
    
        <h3>Turbo Levo Comp Carbon</h3>
        <p><s class="old-price">$33,390.00</s> Desde $25,042.50</p>
        <p class="sold">3 vendidos <span class="fire-icon">🔥</span></p>
      </div>
    
      <!-- CUADRO 2 -->
      <div class="container my">
        <div class="discount-badge">20% Off</div>
        <img src="images/bici6.jpg" alt="bicicleta" title="Turbo Levo Comp Alloy" class="product-image">
        
        <div class="reviews">
          <span class="stars">★★★★☆</span>
          <span class="review-count">(5 reseñas)</span>
        </div>
    
        <h3>Turbo Levo Comp Carbon Alloy</h3>
        <p><s class="old-price">$29,680.00</s> Desde $23,744.50</p>
        <p class="sold">5 vendidos <span class="fire-icon">🔥</span></p>
      </div>
    
      <!-- CUADRO 3 -->
      <div class="container my">
        <div class="discount-badge">25% Off</div>
        <img src="images/bici7.jpg" alt="bicicleta" title="Turbo Levo Comp Alloy" class="product-image">
        
        <div class="reviews">
          <span class="stars">★★★★½</span>
          <span class="review-count">(4 reseñas)</span>
        </div>
    
        <h3>Turbo Levo Comp Carbon Alloy</h3>
        <p><s class="old-price">$29,680.00</s> Desde $22,260.00</p>
        <p class="sold">7 vendidos <span class="fire-icon">🔥</span></p>
      </div>
    
      <!-- CUADRO 4 -->
      <div class="container my">
        <div class="discount-badge">25% Off</div>
        <img src="images/bici8.jpg" alt="bicicleta" title="Turbo Levo Alloy" class="product-image">
        
        <div class="reviews">
          <span class="stars">★★★★★</span>
          <span class="review-count">(7 reseñas)</span>
        </div>
    
        <h3>Turbo Levo Alloy</h3>
        <p><s class="old-price">$25,230.00</s> Desde $18,922.00</p>
        <p class="sold">10 vendidos <span class="fire-icon">🔥🔥</span></p>
      </div>


      <!--CUADRO 5-->
      <div class="container my">
        <div class="discount-badge">25% Off</div>
          <img src="images/bici9.jpg" alt="bicicleta" title="Turbo Levo Expert T-Type" class="product-image">
          <h3>Turbo Levo Expert T-Type</h3>
          <p><s class="old-price">$40,810.00</s> Desde $32,648.00</p>
      </div>

      <div class="container my">
        <div class="discount-badge">20 Off</div>
          <img src="images/bici10.jpg" alt="bicicleta" title="Turbo Levo Pro Carbon" clas="product-image">
          <h3>Turbo Levo Pro Carbon</h3>
          <p><s class="old-price">$44,230.00</s> Desde $38,584.00</p>
      </div>

    
    </div>
  

    
<br><br><br><br>
    <!--CODIGO PARA DISEÑO Y SU MENSAJE-->

    <div style="display: flex; justify-content: space-around; flex-wrap: wrap; gap: 20px;">
    <div class="contenedor2">
      <div class="seccion1">
        <img src="images/bici11.jpg" alt="imagen N°11" class="img-mediana">
        <div class="texto-encima1">
          <h2 style="color: #fafafa; font-size: 3em;">E-BIKES</h2>
          <p style="color: #fafafa; font-size: 3em;">Montaña</p>
        </div>
      </div>
    </div>



    <div class="contenedor1">
      <div class="seccion1">
        <img src="images/img9.jpg" alt="N°9" class="img-mediana">
        <div class="texto-encima1">
          <h2 style="color: #fafafa; font-size: 3em;">Bicis</h2>
          <p style="color: #fafafa; font-size: 3em;">Montaña</p>

        </div>
      </div>
    </div>


    <div class="contenedor1">
      <div class="seccion1">
        <img src="images/img10.jpg" alt="N°10" class="img-mediana">
        <div class="texto-encima1">
          <h2 style="color: #fafafa; font-size: 3em;">Bicis</h2>
          <p style="color: #fafafa; font-size: 3em;">Gravel</p>

        </div>
      </div>
    </div>


    <div class="contenedor1">
      <div class="seccion1">
        <img src="images/img11.jpg" alt="N°11" class="img-mediana">
        <div class="texto-encima1">
          <h2 style="color: #fafafa; font-size: 3em;">EPIC</h2>
        </div>
      </div>
    </div>







    <div class="contenedor2">
      <div class="seccion1">
        <img src="images/img5.jpg" alt="imagen N°5" class="img-mediana">
        <div class="texto-encima1">
          <h2 style="color: #fafafa; font-size: 3em;">Ropa</h2>
        </div>
      </div>
    </div>


    <div class="contenedor2">
      <div class="seccion1">
        <img src="images/img6.jpg" alt="Imagen N°6" class="img-mediana">
        <div class="texto-encima1">
          <h2 style="color: #fafafa; font-size: 3em;">Cascos</h2>
        </div>
      </div>
    </div>

    <div class="contenedor2">
      <div class="seccion1">
        <img src="images/img7.jpg" alt="Imagen N°7" class="img-mediana">
        <div class="texto-encima1">
          <h2 style="color: #fafafa; font-size: 3em;">Llantas</h2>
        </div>
      </div>
    </div>


    <div class="contenedor2">
      <div class="seccion1">
        <img src="images/img8.jpg" alt="Imagen N°8" class="img-mediana">
        <div class="texto-encima1">
          <h2 style="color: #fafafa; font-size: 3em;">Equipate para Pedalear</h2>
        </div>
      </div>
    </div>



    
  </div>



  <br><br><br>


  <h1 style="text-align: center; font-size: 3rem;"><CODE>LLEGA MÁS LEJOS</CODE></h1>



  <div style="text-align: center;">

    <!-- Contenedor padre con flexbox -->
    <div class="card-container">
      
      <!-- Tarjeta 1 -->
      <div class="card">
        <div class="content-box">
        <p class="card-content" style="font-size: 1em;">
            Proximamente.
          </p>
          <span class="card-title" style="font-size: 4em;">Financiamiento</span>
          <p class="card-content" style="font-size: 1em;">
            Hasta 6 cuotas sin intereses con BCP, Interbank, BBVA y Diners
          </p>
        </div>
      </div>
  
      <!-- Tarjeta 2 -->
      <div class="card card1">
        <div class="content-box">
          <span class="card-title" style="font-size: 4em;">Plazos de Entrega</span>
         <a href=""> <button class="button">
            <div class="bgContainer">Ver Mas</div>
            <div class="arrowContainer">
              <svg width="25" height="25" viewBox="0 0 45 38" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M43.7678 20.7678C44.7441 19.7915 44.7441 18.2085 43.7678 17.2322L27.8579 1.32233C26.8816 0.34602 25.2986 0.34602 24.3223
                     1.32233C23.346 2.29864 23.346 3.88155 24.3223 4.85786L38.4645 19L24.3223 33.1421C23.346 34.1184 23.346 35.7014 24.3223 
                     36.6777C25.2986 37.654 26.8816 37.654 27.8579 36.6777L43.7678 20.7678ZM0 21.5L42 21.5V16.5L0 16.5L0 21.5Z" fill="black"/>
              </svg>
            </div>
          </button>
        </a>
        </div>
      </div>
  
    </div>
  
  </div>
  



  <footer class="footer">
    <div class="footer-content">
      
      <!-- Columna: Nosotros -->
      <div class="containerfooter">
        <h2 class="footer-title">Nosotros</h2>
        <a href="#" class="link-title fade-in">Nuestra Historia</a>
        <a href="TerminoCondiciones.jsp" class="link-title fade-in">Términos y Condiciones</a>
        <a href="#" class="link-title fade-in">Cambios y Devoluciones</a>
        <a href="#" class="link-title fade-in">Plazos de Entrega</a>
        <a href="#" class="link-title fade-in">Guía de Tallas</a>
        <a href="#" class="link-title fade-in">Política de Privacidad</a>
        <a href="#" class="link-title fade-in">Garantía</a>
        <a href="#" class="link-title fade-in">Registro de Bicis</a>
        <a href="#" class="link-title fade-in">Libro de Reclamaciones</a>
        <a href="#" class="link-title fade-in">Contacto</a>
      </div>
  
      <!-- Columna: Contáctanos -->
      <div class="contact-footer">
        <h2 class="footer-title">CONTÁCTANOS</h2>
        <div id="SocialIcons">
          <!-- Instagram -->
         <!-- From Uiverse.io by vinodjangid07 --> 
<div class="tooltip-container">
  <div class="tooltip">
    <div class="profile">
      <div class="user">
        <div class="img">Ui</div>
        <div class="details">
          <div class="name">specializedperu</div>
          <div class="username">@specialized</div>
        </div>
      </div>
      <div class="about">800+ Followers</div>
    </div>
  </div>
  <div class="text">
    <a class="icon" href="https://www.instagram.com/specializedperu/?hl=es">
      <div class="layer">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span class="instagramSVG">
          <svg
            fill="white"
            class="svgIcon"
            viewBox="0 0 448 512"
            height="1.5em"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              d="M224.1 141c-63.6 0-114.9 51.3-114.9 114.9s51.3 114.9 114.9 114.9S339 319.5 339 255.9 287.7 141 224.1 141zm0 189.6c-41.1 0-74.7-33.5-74.7-74.7s33.5-74.7 74.7-74.7 74.7 33.5 74.7 74.7-33.6 74.7-74.7 74.7zm146.4-194.3c0 14.9-12 26.8-26.8 26.8-14.9 0-26.8-12-26.8-26.8s12-26.8 26.8-26.8 26.8 12 26.8 26.8zm76.1 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM398.8 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z"
            ></path>
          </svg>
        </span>
      </div>
      <div class="text">Instagram</div>
    </a>
  </div>
</div>

     

<!-- From Uiverse.io by mRcOol7 --> 
<div class="tooltip-container">
  <div class="tooltip">
    <div class="profile">
      <div class="user">
        <div class="img">Fb</div>
        <div class="details">
          <div class="name">SpecializedPeru</div>
          <div class="username">@Specialized</div>
        </div>
      </div>
      <div class="about">900+ Friends</div>
    </div>
  </div>
  <div class="text">
    <a class="icon" href="https://www.facebook.com/specializedperu/">
      <div class="layer">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span class="facebookSVG">
          <svg
            viewBox="0 0 40 40"
            xml:space="preserve"
            xmlns="http://www.w3.org/2000/svg"
          >
            <linearGradient
              gradientUnits="userSpaceOnUse"
              gradientTransform="matrix(40 0 0 -39.7778 11115.001 16212.334)"
              y2="407.5726"
              y1="406.6018"
              x2="-277.375"
              x1="-277.375"
              id="a"
            >
              <stop stop-color="#0062e0" offset="0"></stop>
              <stop stop-color="#19afff" offset="1"></stop>
            </linearGradient>
            <path
              d="M16.7 39.8C7.2 38.1 0 29.9 0 20 0 9 9 0 20 0s20 9 20 20c0 9.9-7.2 18.1-16.7 19.8l-1.1-.9h-4.4l-1.1.9z"
              fill="url(#a)"
            ></path>
            <path
              d="m27.8 25.6.9-5.6h-5.3v-3.9c0-1.6.6-2.8 3-2.8H29V8.2c-1.4-.2-3-.4-4.4-.4-4.6 0-7.8 2.8-7.8 7.8V20h-5v5.6h5v14.1c1.1.2 2.2.3 3.3.3 1.1 0 2.2-.1 3.3-.3V25.6h4.4z"
              fill="#fff"
            ></path>
          </svg>
        </span>
      </div>
      <div class="text">Facebook</div>
    </a>
  </div>
</div>










        </div>

<br><br>

<p style="font-size: 14px; color: #666; text-align: center; margin: 50px 0;">
  © 2025 <strong><KBD>SPECIALIZED</KBD></strong>. All rights reserved. 
</p>
      </div>
  
    </div>
  </footer>
  
  

 























    </body>


    <script>
    
    /*Este código detecta cuando un elemento con la clase .fade-in aparece en pantalla y
le aplica una animación suave para hacerlo visible. La animación se activa solo la primera
vez que el elemento entra en la vista del usuario.*/


/*para cuando  la img aparesca*/
      document.addEventListener("DOMContentLoaded", () => {
        const faders = document.querySelectorAll(".fade-in");
    
        const observer = new IntersectionObserver(entries => {
          entries.forEach(entry => {
            if (entry.isIntersecting) {
              entry.target.classList.add("visible");
              observer.unobserve(entry.target); // Para animar solo una vez
            }
          });
        }, {
          threshold: 0.1
        });
    
        faders.forEach(el => observer.observe(el));
      });






// Animación al hacer clik nombre y apelldio

//CODIGO PARA LA PARTE DE CERRAR SESIÓN
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
    