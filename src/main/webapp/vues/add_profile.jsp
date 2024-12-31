<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authentication property="principal" var="u" />

<c:if test="${u.role.role == 'ROLE_CLIENT'}">
    <nav class="navbar navbar-expand-lg navbar-light bg-warning fixed-top">
</c:if>

<c:if test="${u.role.role == 'ROLE_FREELANCER'}">
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
</c:if>

<div class="container">
    <a class="navbar-brand" href="#">FreelanceESSAT</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
            <li class="nav-item">
                <a class="nav-link" href="#">Projets</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">À Propos</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Contact</a>
            </li>
            <li class="nav-item">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/logout">Se Déconnecter</a>
            </li>
        </ul>
    </div>
</div>
</nav>

<div class="container py-5">
    <h2>Ajouter un Profil</h2>
    <form:form method="post" modelAttribute="profileForm" class="form-horizontal">
        <div class="form-group">
            <form:label path="name" class="col-sm-2 control-label">Nom</form:label>
            <div class="col-sm-10">
                <form:input path="name" class="form-control" />
            </div>
        </div>

        <div class="form-group">
            <form:label path="email" class="col-sm-2 control-label">Email</form:label>
            <div class="col-sm-10">
                <form:input path="email" type="email" class="form-control" />
            </div>
        </div>

        <div class="form-group">
            <form:label path="phone" class="col-sm-2 control-label">Téléphone</form:label>
            <div class="col-sm-10">
                <form:input path="phone" class="form-control" />
            </div>
        </div>

        <div class="form-group">
            <form:label path="bio" class="col-sm-2 control-label">Bio</form:label>
            <div class="col-sm-10">
                <form:textarea path="bio" class="form-control"></form:textarea>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-10 offset-sm-2">
                <button type="submit" class="btn btn-success">Enregistrer</button>
            </div>
        </div>
    </form:form>
</div>

<script src="${bts}/js/bootstrap.bundle.min.js"></script>

</body>
</html>
