<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="fr">

<head>
    <spring:url value="src/bootstrap" var="bts"></spring:url>
    <link rel="stylesheet" href="${bts}/css/bootstrap.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projets Freelance</title>
    <style>
        body {
            padding-top: 56px;
        }

        .card-img-top {
            max-height: 200px;
            object-fit: cover;
        }

        .card-body {
            height: 250px;
            overflow: hidden;
        }

        .card-title {
            font-size: 1.25rem;
            font-weight: bold;
        }

        .card-text {
            font-size: 1rem;
            color: #6c757d;
        }

        .btn-block {
            width: 100%;
        }

        /* Positionner le bouton de déconnexion */
        .logout-btn {
            position: absolute;
            right: 20px;
            top: 20px;
        }
    </style>
</head>

<body>

    <jsp:include page="header.jsp" />

    <header class="bg-primary text-white text-center py-5">
        <div class="container">
            <h1>Bienvenue sur FreelanceESSAT</h1>
            <p class="lead">Connectez-vous avec des freelancers de talent et trouvez le projet idéal.</p>
            <a class="btn btn-light btn-lg" href="#projects">Voir les Projets</a>

            <!-- Bouton Se Déconnecter si l'utilisateur est connecté -->
            <sec:authorize access="isAuthenticated()">
                <form action="${pageContext.request.contextPath}/logout" method="post" style="display:inline;">
                    <button type="submit" class="btn btn-danger btn-lg mt-3 logout-btn">Se Déconnecter</button>
                </form>
            </sec:authorize>
        </div>
    </header>

    <section id="projects" class="py-5">
        <div class="container">
            <h2 class="text-center mb-4">Projets Recents</h2>
            <div class="row">
                <c:forEach items="${projs}" var="p">
                    <div class="col-md-4 mb-4">
                        <div class="card shadow-sm">
                            <img src="https://via.placeholder.com/350" class="card-img-top" alt="Image du projet ${p.titre}">
                            <div class="card-body">
                                <h5 class="card-title">${p.titre}</h5>
                                <p class="card-text">${p.description}</p>
                                <a href="${pageContext.request.contextPath}/detail_project?id=${p.id}" class="btn btn-primary btn-block">Voir le Projet</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </section>

    <section class="py-5 bg-light">
        <div class="container text-center">
            <h2 class="mb-4">Actions Disponibles</h2>
            <div class="row">
                <div class="col-md-3 mb-4">
                    <a href="${pageContext.request.contextPath}/add_profile" class="btn btn-info btn-lg btn-block">Ajouter un Profil</a>
                </div>
                <div class="col-md-3 mb-4">
                    <a href="${pageContext.request.contextPath}/projets_clients" class="btn btn-success btn-lg btn-block">Projets Clients</a>
                </div>
                <div class="col-md-3 mb-4">
                    <a href="${pageContext.request.contextPath}/projets_freelancers" class="btn btn-warning btn-lg btn-block">Projets Freelancers</a>
                </div>
            </div>
        </div>
    </section>

    <footer class="bg-dark text-white py-4">
        <div class="container text-center">
            <p>&copy; 2024 FreelanceESSAT. Tous droits réservés.</p>
            <a href="#about" class="text-white">À Propos</a> |
            <a href="#contact" class="text-white">Contact</a>
        </div>
    </footer>

    <script src="${bts}/js/bootstrap.bundle.min.js"></script>
</body>

</html>
