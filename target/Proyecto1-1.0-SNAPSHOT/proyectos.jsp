<%-- 
    Document   : proyectos
    Created on : 12 ago 2024, 9:50:42 p.m.
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
    <title>Mis Proyectos</title>
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
                        <a class="nav-link active" href="proyectos.jsp">Proyectos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="sobre-mi.jsp">Sobre Mí</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contacto.jsp">Contacto</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5">
        <h1>Mis Proyectos</h1>

        <% 
            // Lista de proyectos
            String[] proyectos = {"Proyecto Python, casino", "Pagina web de viajes-Travel go", "Registro de alumnos y profesores"};
            String[] descripciones = {
                "Este caso se perdio el trabajo, los documentos fueron perdidos gracias a que se borro los datos de la pc.",
                "En este caso tenemos una pagina web hecho en laravel, este lo puedes ver desde nuestro github.",
                "Este programa en java con un frame, tiene un regristo de notas de profesores, asi tambien un login que reconoce si eres alumno o profesor en base a los registros de la base de datos."
            };
            String[] imagenes = {
                "https://res.cloudinary.com/dq6cfkrrz/image/upload/v1723605014/IMAGEN1_lx5art.png",
                "https://res.cloudinary.com/dq6cfkrrz/image/upload/v1723605015/IMAGEN2_jgh8kv.png",
                "https://res.cloudinary.com/dq6cfkrrz/image/upload/v1723605014/IMAGEN2_ghma22.jpg"
            };
            
            // Mostrar el número total de proyectos
            int numeroDeProyectos = proyectos.length;
            out.println("<p>Total de Proyectos: " + numeroDeProyectos + "</p>");
            
            // Mostrar la fecha actual
            java.util.Date fechaActual = new java.util.Date();
            out.println("<p>Fecha Actual: " + fechaActual.toString() + "</p>");
        %>

        <div class="row">
            <% 
                // Iterar sobre los proyectos para mostrar cada uno
                for(int i = 0; i < proyectos.length; i++) {
            %>
            <div class="col-md-4">
                <div class="card">
                    <img src="<%= imagenes[i] %>" class="card-img-top" alt="<%= proyectos[i] %>">
                    <div class="card-body">
                        <h5 class="card-title"><%= proyectos[i] %></h5>
                        <p class="card-text"><%= descripciones[i] %></p>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>
</body>
</html>
