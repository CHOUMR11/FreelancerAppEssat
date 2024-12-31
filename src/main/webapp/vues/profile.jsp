<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profil Freelancer</title>
    
    <!-- Intégration dynamique de Bootstrap via spring:url -->
    <spring:url value="/src/bootstrap" var="bts" />
    <link href="${bts}/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            padding-top: 56px;
        }
        .profile-header {
            background-color: #f8f9fa;
            padding: 20px;
            border-radius: 0.5rem;
        }
        .rating {
            color: gold;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">FreelanceESSAT</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Accueil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Projets</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="btn btn-primary" href="#">Se Connecter</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container my-5">
    <div class="profile-header">
        <div class="row">
            <div class="col-md-3">
                <img src="https://via.placeholder.com/150" class="img-fluid rounded-circle" alt="Profile Picture">
            </div>
            <div class="col-md-9">
                <h2>Nom du Freelancer</h2>
                <p><strong>Compétences :</strong> Développement Web, Design Graphique, Rédaction</p>
                <p><strong>Tarif Horaire :</strong> 50DT/h</p>
                <div class="rating">
                    <span>&#9733;&#9733;&#9733;&#9733;&#9734;</span> (4.0/5)
                </div>
                <button class="btn btn-success mt-2">Contacter</button>
                <button class="btn btn-primary mt-2">Proposer un Projet</button>
            </div>
        </div>
    </div>

    <h3 class="mt-4">Portfolio</h3>
    <div class="row">
        <div class="col-md-4">
            <div class="card mb-4">
                <img src="https://via.placeholder.com/350" class="card-img-top" alt="Portfolio Item 1">
                <div class="card-body">
                    <h5 class="card-title">Projet 1</h5>
                    <p class="card-text">Description courte du projet 1.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card mb-4">
                <img src="https://via.placeholder.com/350" class="card-img-top" alt="Portfolio Item 2">
                <div class="card-body">
                    <h5 class="card-title">Projet 2</h5>
                    <p class="card-text">Description courte du projet 2.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card mb-4">
                <img src="https://via.placeholder.com/350" class="card-img-top" alt="Portfolio Item 3">
                <div class="card-body">
                    <h5 class="card-title">Projet 3</h5>
                    <p class="card-text">Description courte du projet 3.</p>
                </div>
            </div>
        </div>
    </div>

    <h3>Évaluations</h3>
    <div class="list-group">
        <div class="list-group-item">
            <h5 class="mb-1">Client 1</h5>
            <p class="mb-1">Excellent travail, très satisfait !</p>
            <small class="text-muted">Note: 5/5</small>
        </div>
        <div class="list-group-item">
            <h5 class="mb-1">Client 2</h5>
            <p class="mb-1">Communication rapide et efficace.</p>
            <small class="text-muted">Note: 4/5</small>
        </div>
        <div class="list-group-item">
            <h5 class="mb-1">Client 3</h5>
            <p class="mb-1">Livraison à temps, travail de qualité.</p>
            <small class="text-muted">Note: 4.5/5</small>
        </div>
    </div>
</div>

<footer class="bg-light py-4">
    <div class="container text-center">
        <p>&copy; 2024 FreelanceESSAT. Tous droits réservés.</p>
    </div>
</footer>

</body>
</html>
