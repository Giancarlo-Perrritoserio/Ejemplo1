<%-- 
    Document   : contacto
    Created on : 12 ago 2024, 9:51:05 p.m.
    Author     : default
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Contacto</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.html">Mi Portafolio</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="proyectos.jsp">Proyectos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="sobre-mi.jsp">Sobre Mí</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="contacto.jsp">Contacto</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Contenido de Contacto -->
    <div class="container mt-5">
        <h1>Contacto</h1>
        <p>Si deseas ponerte en contacto conmigo, puedes hacerlo a través de los siguientes métodos:</p>
        <ul>
            <li>Email: giancarlo.munoz@tecsup.edu.pe</li>
            <li>Teléfono: 973553331</li>
        </ul>

        <%-- Procesar datos del formulario si se ha enviado --%>
        <% 
            String mensajeConfirmacion = null;
            if ("POST".equalsIgnoreCase(request.getMethod())) {
                String nombre = request.getParameter("name");
                String email = request.getParameter("email");
                String mensaje = request.getParameter("message");
                
                // Aquí podrías agregar lógica para guardar los datos en una base de datos o enviar un email
                
                mensajeConfirmacion = "Gracias, " + nombre + "! Tu mensaje ha sido enviado.";
            }
        %>

        <% if (mensajeConfirmacion != null) { %>
            <div class="alert alert-success">
                <%= mensajeConfirmacion %>
            </div>
        <% } %>

        <h2>Formulario de Contacto</h2>
        <form method="post" action="contacto.jsp">
            <div class="mb-3">
                <label for="name" class="form-label">Nombre</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Correo Electrónico</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="mb-3">
                <label for="message" class="form-label">Mensaje</label>
                <textarea class="form-control" id="message" name="message" rows="3" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Enviar</button>
        </form>
    </div>
</body>
</html>
