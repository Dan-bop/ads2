<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Equipo Specialized Perú</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;600&display=swap" rel="stylesheet">
  <style>
    body {
      margin: 0;
      font-family: 'Poppins', sans-serif;
      background-color: #f4f4f4;
      color: #2c3e50;
    }

    .nuestros-corredores {
      max-width: 1200px;
      margin: 60px auto;
      padding: 40px;
      background: #fff;
      border-radius: 12px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
    }

    .nuestros-corredores h2 {
      text-align: center;
      font-size: 2.5em;
      color: #d32f2f;
      margin-bottom: 20px;
    }

    .nuestros-corredores p {
      text-align: center;
      font-size: 1.1em;
      margin-bottom: 40px;
    }

    .corredores-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
      gap: 30px;
    }

    .corredor-card {
      background: #fff;
      border-radius: 12px;
      overflow: hidden;
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
      opacity: 0;
      transform: translateY(30px);
    }

    .corredor-card.visible {
      opacity: 1;
      transform: translateY(0);
    }

    .corredor-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 6px 30px rgba(0, 0, 0, 0.12);
    }

    .corredor-card img {
      width: 100%;
      height: 400px;
      object-fit: cover;
    }

    .corredor-card h3 {
      margin: 15px;
      font-size: 1.3em;
      color: #c62828;
    }

    .corredor-card p {
      margin: 0 15px 20px;
      font-size: 0.95em;
      color: #555;
    }

    @media (max-width: 768px) {
      .nuestros-corredores {
        padding: 20px;
      }
    }

    /* Estilos del Footer */
    .footer {
      background-color: #2c3e50; /* Fondo oscuro */
      color: #fff; /* Texto blanco */
      text-align: center;
      padding: 30px 0;
      position: relative;
      width: 100%;
      margin-top: 60px;
    }

    .footer-content {
      position: relative;
      display: flex;
      justify-content: center;
      align-items: center;
      flex-direction: column;
    }

    .footer-text {
      position: absolute;
      top: 30%;
      color: white;
      text-align: center;
      z-index: 2;
    }

    .footer-text h2 {
      font-size: 2em;
      font-weight: bold;
      margin-bottom: 10px;
      text-transform: uppercase;
    }

    .footer-text p {
      font-size: 1.1em;
      margin: 0 20px;
      line-height: 1.5;
    }

    .footer-logo {
      width: 100%;
      height: auto;
      max-width: 100%;
      object-fit: cover;
    }

    @media (max-width: 768px) {
      .footer-text h2 {
        font-size: 1.8em;
      }
      .footer-text p {
        font-size: 1em;
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

  <section class="nuestros-corredores">
 <div style="text-align: end">
  <a href="PaginaPrincipal.jsp" class="volver-inicio">Volver al Inicio</a>
</div>
    <h2>Nuestros Corredores</h2>
    <p>En <strong>SpecializedPeru</strong>, no solo vendemos bicicletas: las vivimos. Contamos con un equipo de corredores profesionales y embajadores apasionados que representan los valores de la marca dentro y fuera de la pista. Ellos son la prueba viviente de lo que se puede lograr con tecnología de punta, entrenamiento y una comunidad que impulsa el ciclismo en el Perú.</p>

    <div class="corredores-grid">
      <div class="corredor-card">
        <img src="images/corredor1.jpg" alt="Ned Overend - Campeón Nacional XC" />
        <h3>Ned Overend</h3>
        <p>Campeón Nacional de Cross Country (XC). Inspirando a nuevas generaciones de ciclistas peruanos.</p>
      </div>
      <div class="corredor-card">
        <img src="images/corredor2.jpg" alt="David McLaughlin - Ruta Élite" />
        <h3>David McLaughlin</h3>
        <p>Corredor élite de ruta. Ejemplo de disciplina y constancia en el ciclismo Masculino peruano.</p>
      </div>
      <div class="corredor-card">
        <img src="images/corredor3.jpg" alt="Luis Paredes - Downhill Pro" />
        <h3>Luis Paredes</h3>
        <p>Especialista en Downhill. Pura adrenalina sobre las montañas más extremas del país.</p>
      </div>

      <div class="corredor-card">
        <img src="images/corredor4.jpg" alt="Haley Batten - Downhill Pro" />
        <h3>Haley Batten</h3>
        <p>Especialista en Downhill. Pura adrenalina sobre las montañas más extremas del país.</p>
      </div>

      <div class="corredor-card">
        <img src="images/C	orredor5.jpg" alt="Laura Stigger - Downhill Pro" />
        <h3>Laura Stigger</h3>
        <p>Especialista en Downhill. Pura adrenalina sobre las montañas más extremas del país.</p>
      </div>

      <div class="corredor-card">
        <img src="images/Corredor6.jpg" alt="Kerschbaumer - MTB All Mountain" />
        <h3>Kerschbaumer</h3>
        <p>Amante del MTB All Mountain. Explora las rutas más salvajes con precisión y técnica impecable.</p>
      </div>

      <div class="corredor-card">
        <img src="images/Corredor7.jpg" alt="Sergio Ran - MTB All Mountain" />
        <h3>Sergio Ran</h3>
        <p>Amante del MTB All Mountain. Explora las rutas más salvajes con precisión y técnica impecable.</p>
      </div>

      <div class="corredor-card">
        <img src="images/Corredor8.jpg" alt="Martin Vidaurre - Downhill Pro" />
        <h3>Martin Vidaurre</h3>
        <p>Especialista en Downhill. Pura adrenalina sobre las montañas más extremas del país.</p>
      </div>

    </div>
    
  </section>

  <footer class="footer">
    <div class="footer-content">
      <div class="footer-text">
        <h2>Nuestros Corredores</h2>
        <p>Inspirados por la pasión, la perseverancia y la tecnología, nuestros corredores son un reflejo de lo mejor del ciclismo en Perú.</p>
      </div>
      <img src="images/footercorredores.jpg" alt="SpecializedPeru Logo" class="footer-logo" />
    </div>
  </footer>

  <script>
    // Animación suave al hacer scroll
    const cards = document.querySelectorAll('.corredor-card');
    const observer = new IntersectionObserver(entries => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.classList.add('visible');
          observer.unobserve(entry.target);
        }
      });
    }, {
      threshold: 0.1
    });

    cards.forEach(card => observer.observe(card));
  </script>

</body>
</html>
