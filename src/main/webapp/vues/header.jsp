<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<sec:authentication property="principal" var="u" />

<!-- Navbar avec style selon le rôle de l'utilisateur -->
<c:if test="${ u.role.role == 'ROLE_CLIENT' }">
    <nav class="navbar navbar-expand-lg navbar-light bg-warning fixed-top">
</c:if>

<c:if test="${ u.role.role == 'ROLE_FREELANCER' }">
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
</c:if>

<div class="container">
    <a class="navbar-brand" href=''>FreelanceESSAT</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
            <li class="nav-item">
                <a class="nav-link" href=''>Projets</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href=''>À Propos</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href=''>Contact</a>
            </li>

            <!-- Afficher le bouton Se Déconnecter si l'utilisateur est connecté -->
            <sec:authorize access="isAuthenticated()">
                <li class="nav-item">
                    <form action="${pageContext.request.contextPath}/logout" method="post" style="display:inline;">
                        <button type="submit" class="btn btn-danger" style="border: none; background: none;">Se Déconnecter</button>
                    </form>
                </li>
            </sec:authorize>

            <!-- Afficher le bouton Se Connecter si l'utilisateur n'est pas connecté -->
            <sec:authorize access="isAnonymous()">
                <li class="nav-item">
                    <a class="btn btn-primary" href=''>Se Connecter</a>
                </li>
            </sec:authorize>
        </ul>
    </div>
</div>

</nav>
