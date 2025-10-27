<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cambiar Contraseña</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow-lg border-0 rounded-3">
                <div class="card-body p-4">
                    <h3 class="text-center mb-4 text-primary">Actualizar Contraseña</h3>

                 <form action="CambiarContrasenaServlet" method="post">

                        <!-- Contraseña temporal -->
                        <div class="mb-3">
                            <label class="form-label">Contraseña actual</label>
                            <input type="password" class="form-control" name="contrasenaActual" required>
                        </div>
<!-- Nueva contraseña -->
<div class="mb-3">
    <label class="form-label">Nueva contraseña</label>
    <input type="password" class="form-control" 
           name="nuevaContrasena" 
           pattern="[A-Za-z0-9]{4,12}" 
           title="Debe tener entre 4 y 12 caracteres (letras o números)"
           required>
</div>

<!-- Confirmar nueva contraseña -->
<div class="mb-3">
    <label class="form-label">Confirmar nueva contraseña</label>
    <input type="password" class="form-control" 
           name="confirmarContrasena" 
           pattern="[A-Za-z0-9]{4,12}" 
           title="Debe coincidir y tener entre 4 y 12 caracteres"
           required>
</div>


                        <button type="submit" class="btn btn-primary w-100">Guardar Contraseña</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
