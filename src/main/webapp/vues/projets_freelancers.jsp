<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mes Projets</title>

    <!-- Use Spring URL tag to generate the path for Bootstrap CSS -->
    <spring:url value="/src/bootstrap" var="bts" />
    <link href="${bts}/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            padding-top: 56px;
            background-color: #f8f9fa;
        }
        .projects-container {
            margin: auto;
            padding: 20px;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">FreelanceESSAT</a>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Accueil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Mon Profil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Déconnexion</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container my-5">
    <div class="projects-container">
        <h2 class="text-center">Mes Projets</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Titre</th>
                    <th scope="col">Description</th>
                    <th scope="col">Statut</th>
                    <th scope="col">Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Example Project Rows -->
                <tr>
                    <td>Développement d'un site web</td>
                    <td>Création d'un site e-commerce pour un client.</td>
                    <td>Terminé</td>
                    <td>
                        <a href="/projects/1" class="btn btn-info btn-sm">Voir Détails</a>
                        <button class="btn btn-danger btn-sm" onclick="confirmDelete(1)">Supprimer</button>
                    </td>
                </tr>
                <tr>
                    <td>Application mobile</td>
                    <td>Développement d'une application de suivi de la santé.</td>
                    <td>En cours</td>
                    <td>
                        <a href="/projects/2" class="btn btn-info btn-sm">Voir Détails</a>
                        <button class="btn btn-danger btn-sm" onclick="confirmDelete(2)">Supprimer</button>
                    </td>
                </tr>
                <!-- Add more project rows as needed -->
            </tbody>
        </table>
    </div>
</div>

<footer class="bg-light py-4">
    <div class="container text-center">
        <p>&copy; 2024 FreelanceESSAT. Tous droits réservés.</p>
    </div>
</footer>

<script>
    function confirmDelete(projectId) {
        if (confirm("Êtes-vous sûr de vouloir supprimer ce projet ?")) {
            // Redirect or make a request to delete the project
            window.location.href = `/projects/delete/${projectId}`;
        }
    }
</script>

</body>
</html>
