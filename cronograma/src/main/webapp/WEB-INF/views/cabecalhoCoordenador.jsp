<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SAGC - Sistema de Apoio Gerencial</title>
<c:url value="/resources/css" var="cssPath" />
<c:url value="/images" var="images" />
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css" />
<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min.css" />
<!-- Custom styles for this template-->
<link href="${cssPath}/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom fonts for this template-->
<c:url value="/resources/vendor/fontawesome-free/css" var="vendor" />
<link href="${vendor}/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">


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


<!-- Bootstrap core JavaScript-->
<c:url value="/resources/vendor/jquery" var="vendorjquery" />
<script src="${vendorjquery}/jquery.min.js"></script>

<!-- Custom scripts for all pages-->
<c:url value="/resources/js" var="js" />
<script src="${js}/sb-admin-2.min.js"></script>

<!-- Custom scripts for all pages-->
<c:url value="/resources/js" var="js" />
<script src="${js}/sb-admin-2.js"></script>

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
		<h4>Sistema de Apoio Gerencial</h4>

	</div>
	<div class="container" align="center">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="collapse navbar-collapse" id="navbarNavDropdown"
				align="center">
				<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="#">Início <span
							class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="#">Resumo</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Metas</a></li>					
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Cronograma </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">Alimentos</a> 
							<a class="dropdown-item" href="#">Automação</a> 
							<a class="dropdown-item" href="#">Eletroeletrônica</a> 
							<a class="dropdown-item" href="#">Gráfica</a>
							<a class="dropdown-item" href="#">Gestão</a>
							<a class="dropdown-item" href="#">Metalmecânica</a>
							<a class="dropdown-item" href="#">Refrigeração</a>
							<a class="dropdown-item" href="#">Tecnologia da Informação</a>
						</div>
					<li class="nav-item"><a class="nav-link" href="#">Pendências</a>
					</li>					
					
					<li class="nav-item"><a class="nav-link" href="#">Calendário</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Cursos </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="iniciarcurso">Iniciar curso</a> <a
								class="dropdown-item" href="editarcurso">Editar curso em andamento</a> <a
								class="dropdown-item" href="editarcursomodelo">Editar curso
								modelo</a> <a class="dropdown-item" href="inserircursomodelo">Inserir
								novo curso modelo</a>
						</div>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Unidades Curriculares </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">Editar unidade curricular</a> <a
								class="dropdown-item" href="#">Editar unidade curricular
								modelo</a> <a class="dropdown-item"
								href="inserirunidadecurricularmodelo">Inserir nova unidade
								curricular modelo</a>
						</div>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Usuários </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							 <a
								class="dropdown-item" href="#">Inserir instrutor</a> <a
								class="dropdown-item" href="#">Exibir instrutores</a>
								<a class="dropdown-item" href="#">Inserir coordenador</a>
						</div>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Solicitações </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">Reserva de laboratórios</a> <a
								class="dropdown-item" href="#">Impressões e Livros</a>
						</div>
					<li class="nav-item"><a class="nav-link" href="sair">Sair</a></li>
				</ul>

			</div>
		</nav>
	</div>