<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recuperar Contraseña</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background: #fff;
            padding: 30px 25px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h2 {
            color: #333;
            margin-bottom: 10px;
        }

        p {
            color: #555;
            font-size: 14px;
            margin-bottom: 20px;
        }

        input[type="email"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        .acciones {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 10px;
        }

        .volver-inicio {
            color: #007BFF;
            text-decoration: none;
            font-weight: bold;
            font-size: 14px;
            position: relative;
            transition: all 0.3s ease;
        }

        .volver-inicio::before {
            content: "←";
            display: inline-block;
            margin-right: 5px;
            transition: transform 0.3s ease;
        }

        .volver-inicio:hover::before {
            transform: translateX(-4px);
        }

        button {
            padding: 10px 18px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }

        .mensaje {
            margin-top: 20px;
            color: green;
            font-size: 14px;
            display: none;
        }

        @media (max-width: 400px) {
            .acciones {
                flex-direction: column;
                gap: 10px;
                align-items: stretch;
            }

            .volver-inicio, button {
                width: 100%;
                text-align: center;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <h2>¿Olvidaste tu contraseña?</h2>
    <p>Ingresa tu correo Gmail y te enviaremos instrucciones para restablecerla.</p>
    
    <input type="email" id="email" placeholder="tuusuario@gmail.com" required>

    <div class="acciones">
        <a href="login.jsp" class="volver-inicio">Volver al inicio</a>
        <button onclick="enviarCorreo()">Enviar</button>
    </div>

    <p class="mensaje" id="mensaje">En unos instantes te llegará un mensaje para cambiar tu contraseña.</p>
</div>

<script>
    function enviarCorreo() {
        const email = document.getElementById('email').value;
        const mensaje = document.getElementById('mensaje');

        if (email.trim() === "") {
            alert("Por favor ingresa tu correo.");
            return;
        }

        fetch('EnviarCorreo', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            body: 'email=' + encodeURIComponent(email)
        })
        .then(response => response.text())
        .then(data => {
            mensaje.textContent = data;
            mensaje.style.display = 'block';
        })
        .catch(error => {
            mensaje.textContent = 'Ocurrió un error al enviar el correo.';
            mensaje.style.display = 'block';
            console.error(error);
        });
    }
</script>

</body>
</html>
