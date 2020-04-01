<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SAGC - Sistema de Apoio Gerencial da Coordenação</title>
<c:url value="/resources/css" var="cssPath" />
<c:url value="/images" var="images" />
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css" />
<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min.css" />
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
</head>
<body>

	<div class="container" align="center">
		<img class="mb-4" src="${images}/logo.png" alt="" width="335"
			height="150">
		<h3>SENAI Prof. Stenio Lopes</h3>
		<h4>Sistema de Apoio Gerencial da Coordenação</h4>

	</div>
	<div class="container" align="center">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="collapse navbar-collapse" id="navbarNavDropdown"
				align="center">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="#">Início <span
							class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="#">Cronograma</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Resumo</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Metas</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Calendário</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Cursos </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="cursos/iniciar">Iniciar curso</a> <a
								class="dropdown-item" href="cursos/editar">Editar curso</a> <a
								class="dropdown-item" href="cursos/inserir">Criar novo curso
								modelo</a> <a class="dropdown-item" href="cursos/editarm">Editar
								curso modelo</a>
						</div>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Unidades Curriculares </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">Editar unidade curricular</a> <a
								class="dropdown-item" href="#">Editar unidade curricular
								modelo</a> <a class="dropdown-item" href="disciplinas/form">Criar
								nova unidade curricular modelo</a>
						</div>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Usuários </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">Inserir coordenador</a> <a
								class="dropdown-item" href="#">Inserir instrutor</a> <a
								class="dropdown-item" href="#">Exibir instrutores</a>
						</div>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Solicitações </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">Reserva de laboratórios</a> <a
								class="dropdown-item" href="#">Impressões e Livros</a>
						</div>
					<li class="nav-item"><a class="nav-link" href="#">Sair</a></li>
				</ul>

			</div>
		</nav>
	</div>