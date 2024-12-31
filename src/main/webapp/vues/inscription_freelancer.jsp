<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription Freelancer</title>

    <!-- Use Spring URL tag to generate the path for Bootstrap CSS -->
    <spring:url value="/src/bootstrap" var="bts" />
    <link href="${bts}/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            padding-top: 56px;
            background-color: #f8f9fa;
        }
        .signup-container {
            max-width: 500px;
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
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Connexion</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container my-5">
    <div class="signup-container">
        <h2 class="text-center">Inscription Freelancer</h2>
        <form action="/freelancer/register" method="POST">
            <div class="mb-3">
                <label for="name" class="form-label">Nom Complet</label>
                <input type="text" class="form-control" name="name" placeholder="Votre nom complet" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Adresse E-mail</label>
                <input type="email" class="form-control" name="email" placeholder="Votre adresse e-mail" required>
            </div>
            <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input type="text" class="form-control" name="username" placeholder="Votre username" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Mot de Passe</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Choisissez un mot de passe" required>
            </div>

            <button type="submit" class="btn btn-primary w-100">S'inscrire</button>
        </form>
        <div class="mt-3 text-center">
            <p>Déjà un compte ? <a href="<spring:url value='/login' />">Connectez-vous ici</a></p>
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
