<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Capacitación</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
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
                        <a class="nav-link text-light" href="capacitacion.jsp">Capacitacion</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<body>
<h1 class="text-center">Capacitacion</h1>
<div class="b-example-divider mt-5"></div>
<div class="text-center">
    <button id="mostrarInfo" type="button" class="btn btn-outline-success ">Mostrar Info</button>
    <div id="info" class="alert alert-success mt-3" role="alert" style="display:none">
        Rut del Cliente: ${rutCliente}<br>
        Dia: ${dia}<br>
        Hora: ${hora}<br>
        Lugar: ${lugar}<br>
        Duracion: ${duracion}<br>
        Cantidad de Asistentes: ${cantidadAsistentes}
    </div>
</div>
<form id="formulario" action="Capacitacion" method="POST">
    <div class="container">
        <!-- Name input -->
        <div class="form-outline mb-4">
            <label class="form-label" for="rut_cliente">Rut Cliente</label>
            <input name="rutCliente" type="text" id="rut_cliente" class="form-control"/>
            <label class="d-none text-danger" id="alertaRut_cliente">Falta agregar el rut del cliente</label>
        </div>
        <div class="form-group">
            <label for="Dia">Dia</label>
            <select name="dia" class="form-control" id="Dia">
                <% for (int i = 1; i <= 31; i++) { %>
                <option><%= i %>
                </option>
                <% } %>
            </select>
        </div>
        <div class="form-group">
            <label for="Hora">Hora</label>
            <select name="hora" class="form-control" id="Hora">
                <% for (int i = 8; i <= 23; i++) { %>
                <option><%= String.format("%02d", i) %>:00</option>
                <% } %>
            </select>
        </div>
        <div class="form-outline mb-4">
            <label class="form-label" for="lugar">Lugar</label>
            <input name="lugar" type="text" id="lugar" class="form-control"/>
            <label class="d-none text-danger" id="alertaLugar">Falta agregar el lugar</label>
        </div>
        <div class="form-outline mb-4">
            <label class="form-label" for="duracion">Duracion</label>
            <input name="duracion" type="text" id="duracion" class="form-control"/>
            <label class="d-none text-danger" id="alertaDuracion">Falta agregar la Duracion</label>
        </div>
        <div class="form-outline mb-4">
            <label class="form-label" for="cantidadAsistentes">Cantidad de Asistentes</label>
            <input name="cantidadAsistentes" type="text" id="cantidadAsistentes" class="form-control"/>
            <label class="d-none text-danger" id="alertaCantidadAsistentes">Falta agregar la cantidad de
                Asistentes</label>
        </div>
        <!-- Submit button -->
        <button id="botonCrear" type="submit" class="btn btn-primary btn-block mb-4">Crear</button>
        <div class="center" style="margin-top:10px; margin-bottom: 20px;">
            <label class="d-none text-success " id="C">Su capacitacion ha sido creada</label>
        </div>
    </div>
</form>
<script>
    var divVisible = false;
    document.getElementById('mostrarInfo').addEventListener('click', function () {
        var div = document.getElementById('info');
        if (divVisible) {
            div.style.display = 'none';
            divVisible = false;
            document.getElementById('mostrarInfo').textContent = 'Mostrar Info'
        } else {
            div.style.display = 'block';
            divVisible = true;
            document.getElementById('mostrarInfo').textContent = 'Cerrar Info'
        }
    });
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
<footer class="bg-dark text-light text-center fixed-bottom p-2">
    Bastián Mariangel | Roberto Rivas | Patricio Bonnin | Ivan Mieres
</footer>
</html>