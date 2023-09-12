<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Contacto</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand text-light" href="inicio.jsp">Inicio</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link text-light" href="contacto.jsp">Contacto</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light" href="capacitacion.jsp">Capacitación</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<main>
    <h1 class="text-center">Contacto</h1>
    <div class="text-center mt-5">
        <button id="mostrarInfoContacto" type="button" class="btn btn-outline-success">Mostrar Información</button>
        <div id="infoContacto" class="alert alert-success mt-3" role="alert" style="display:none">
            Nombre: ${nombre}<br>
            Correo: ${correo}<br>
            Mensaje: ${mensaje}
        </div>
    </div>
    <form id="formulario" action="Contacto" method="POST">
        <div class="container">
            <div class="form-outline mb-4">
                <label class="form-label" for="nombre">Nombre</label>
                <input name="nombre" type="text" id="nombre" class="form-control"/>
                <label class="d-none text-danger" for="" id="alertaNombre">Por favor, ingresa tu nombre</label>
            </div>
            <div class="form-outline mb-4">
                <label class="form-label" for="correo">Correo Electrónico</label>
                <input name="correo" type="email" id="correo" class="form-control"/>
                <label class="d-none text-danger" for="" id="alertaCorreo">Por favor, ingresa tu correo</label>
            </div>
            <div class="form-outline mb-4">
                <label class="form-label" for="mensaje">Mensaje</label>
                <textarea name="mensaje" class="form-control" id="mensaje" rows="4"></textarea>
                <label class="d-none text-danger" id="alertaMensaje">Por favor, ingresa un mensaje</label>
            </div>
            <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="" id="mensaje" checked/>
                <label class="form-check-label" for="mensaje">
                    Envíame una copia del mensaje
                </label>
            </div>
            <button type="submit" class="btn btn-primary btn-block mb-4">Enviar</button>
            <div class="center" style="margin-top:10px; margin-bottom: 20px;">
                <label for="" class="d-none text-success" id="mensajeEnviado">Tu mensaje ha sido enviado</label>
            </div>
        </div>
    </form>
</main>
<footer class="bg-dark text-light text-center fixed-bottom p-2">
    Bastián Mariangel | Roberto Rivas | Patricio Bonnin | Ivan Mieres
</footer>
<script>
    var divVisible = false;
    document.getElementById('mostrarInfoContacto').addEventListener('click', function () {
        var div = document.getElementById('infoContacto');
        if (divVisible) {
            div.style.display = 'none';
            divVisible = false;
            document.getElementById('mostrarInfoContacto').textContent = 'Mostrar Información';
        } else {
            div.style.display = 'block';
            divVisible = true;
            document.getElementById('mostrarInfoContacto').textContent = 'Cerrar Información';
        }
    });
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>