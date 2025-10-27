<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Nosotros - Specialized Perú</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;600&display=swap" rel="stylesheet">
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      font-family: 'Poppins', sans-serif;
      background-color: #f5f5f5;
      color: #2c3e50;
      line-height: 1.6;
    }

    section.about-us {
      max-width: 1000px;
      margin: 60px auto;
      background: white;
      padding: 40px;
      border-radius: 12px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
      opacity: 0;
      transform: translateY(40px);
      transition: all 0.8s ease-out;
    }

    section.about-us.visible {
      opacity: 1;
      transform: translateY(0);
    }

    h2 {
      text-align: center;
      font-size: 2.8em;
      color: #d32f2f;
      margin-bottom: 30px;
    }

    h3 {
      margin-top: 30px;
      color: #c62828;
      font-size: 1.6em;
    }

    p {
      margin-bottom: 20px;
    }

    ul {
      list-style: none;
      margin: 20px 0;
      padding: 0;
    }

    ul li {
      margin: 15px 0;
      font-size: 1.05em;
      display: flex;
      align-items: flex-start;
    }

    ul li::before {
      content: "✅";
      margin-right: 10px;
      color: #388e3c;
    }

    strong {
      color: #000;
    }

    footer {
      text-align: center;
      margin-top: 60px;
      font-size: 0.9em;
      color: #999;
    }

    @media (max-width: 768px) {
      section.about-us {
        padding: 20px;
      }

      h2 {
        font-size: 2em;
      }
    }
    
    
    /*CSSS PARA  VOLVER AL INICIO*/
.volver-inicio {
    font-size: 1.2em;
    font-weight: bold;
    color: #007bff; /* Color azul */
    text-decoration: none; /* Quita el subrayado */
    padding: 10px 20px;
    border-radius: 5px; /* Bordes redondeados */
    background-color: #f0f0f0; /* Fondo gris suave */
    transition: background-color 0.3s, color 0.3s; /* Transiciones suaves */
  }

  /* Efecto cuando se pasa el mouse sobre el enlace */
  .volver-inicio:hover {
    color: #fff; /* Cambiar color del texto a blanco */
    background-color: #007bff; /* Fondo azul */
  }

  .volver-inicio:active {
    transform: scale(0.98); /* Efecto de presionar el enlace */
  }

    
  </style>
</head>
<body>

  <section class="about-us" id="aboutSection">
   <div style="text-align: end">
  <a href="PaginaPrincipal.jsp" class="volver-inicio">Volver al Inicio</a>
</div>
    <h2>Sobre Nosotros</h2>
    <p>En <strong>Specialized Perú</strong>, creemos que montar bicicleta no es solo un deporte, es una forma de vida. Nos dedicamos a ofrecer bicicletas de alto rendimiento y accesorios de calidad para que cada ciclista —aficionado o profesional— disfrute de una experiencia única sobre dos ruedas.</p>

    <p>Representamos oficialmente la marca <strong>Specialized</strong> en Perú, líder mundial en innovación y diseño de bicicletas. Nuestro compromiso va más allá de la venta: te acompañamos en cada etapa de tu recorrido, con asesoría experta, mantenimiento especializado y el respaldo de una marca que confía en la evolución constante del ciclismo.</p>

    <p>Desde bicicletas de montaña hasta modelos urbanos y de ruta, en <strong>Specialized Perú</strong> tenemos el equipo perfecto para cada tipo de ciclista. Trabajamos para que vivas tu pasión con seguridad, confianza y el máximo rendimiento.</p>

    <h3>Nuestra Misión</h3>
    <p>Ofrecer productos y servicios de ciclismo de clase mundial que inspiren a las personas a moverse, competir y explorar, con el respaldo de una comunidad apasionada por el deporte.</p>

    <h3>Nuestra Visión</h3>
    <p>Ser la tienda de bicicletas más confiable del país, reconocida por su innovación, atención personalizada y compromiso con el ciclismo responsable y sostenible.</p>

    <h3>¿Por qué elegir Specialized Perú?</h3>
    <ul>
      <li><strong>Expertos en ciclismo:</strong> Asesoramiento profesional por ciclistas apasionados.</li>
      <li><strong>Tecnología de punta:</strong> Bicicletas y componentes con ingeniería de precisión.</li>
      <li><strong>Servicio postventa:</strong> Taller certificado Specialized con mantenimiento garantizado.</li>
      <li><strong>Compromiso ambiental:</strong> Promovemos el ciclismo como estilo de vida sostenible.</li>
    </ul>

    <p>En <strong>Specialized Perú</strong>, no vendemos solo bicicletas: impulsamos experiencias, estilo de vida y comunidad. ¡Súmate al cambio y pedalea con nosotros! 🚴‍♀️🚴‍♂️</p>
  </section>

  <footer>
    &copy; 2025 Specialized Perú. Todos los derechos reservados.
  </footer>

  <script>
    // Mostrar animadamente la sección al cargar
    document.addEventListener("DOMContentLoaded", function () {
      const section = document.getElementById("aboutSection");
      setTimeout(() => {
        section.classList.add("visible");
      }, 300);
    });
  </script>
</body>
</html>
