<%-- 
    Document   : sobre-mi
    Created on : 12 ago 2024, 9:50:53 p.m.
    Author     : default
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Sobre Mí</title>
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
                        <a class="nav-link active" href="sobre-mi.jsp">Sobre Mí</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contacto.jsp">Contacto</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Contenido Sobre Mí -->
    <div class="container mt-5">
        <h1>Sobre Mí</h1>
        
        <% 
            // Datos personales
            String nombre = "Giancarlo Piero";
            String descripcion = "Soy un estudiante de programación, con conocimientos básicos en Java y Python. Estoy en proceso de aprender más sobre diversos lenguajes y tecnologías.";
            
            // Estadísticas
            int añosExperiencia = 1;
            int proyectosCompletados = 3;
            
            // Obtener fecha actual
            java.util.Date fechaActual = new java.util.Date();
        %>
        
        <p>Me llamo <%= nombre %>, <%= descripcion %></p>
        <p>En esta sección, quiero compartir un poco más sobre mi experiencia, mis habilidades y lo que me motiva en el mundo del desarrollo de software, como mis proyectos grupales e individuales.</p>
        
        <!-- Información dinámica -->
        <div class="alert alert-info">
            <p><strong>Fecha Actual:</strong> <%= fechaActual.toString() %></p>
            <p><strong>Años de Experiencia:</strong> <%= añosExperiencia %></p>
            <p><strong>Proyectos Completados:</strong> <%= proyectosCompletados %></p>
        </div>
        
        <!-- Imagen -->
        <img src="https://res.cloudinary.com/dq6cfkrrz/image/upload/v1723605573/aaaa_bm0jsl.webp" alt="Foto sobre mí" class="img-fluid">
    </div>
</body>
</html>
