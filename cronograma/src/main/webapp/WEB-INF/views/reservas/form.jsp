<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SGL - Solicitar reserva de laboratório</title>
<c:url value="/resources/css" var="cssPath" />
<c:url value="/images" var="images" />
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css" />
<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min.css" />
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
		<h3>Sistema de Gerenciamento de Laboratórios</h3>
	</div>
	<form action="/cronograma/reservas" method="post">
		<div class="container" align="center">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="collapse navbar-collapse" id="navbarNavDropdown">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="#">Início
								<span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="http://localhost:8080/cronograma/laboratorios">Cronograma</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Fazer
								reserva</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Solicitar
								material impresso</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Acompanhar
								solicitações</a></li>

					</ul>
				</div>
			</nav>
		</div>
		<div class="container" align="center">
			<h3>SGL - Solicitar reserva</h3>
			<div class="form-group col-sm-3">
				Selecione o Laboratório: <select class="form-control"
					id="lab">
					<option>Lab1</option>
					<option>Lab2</option>
					<option>Lab3</option>
					<option>Lab4</option>
					<option>Lab5</option>
				</select>
			</div>

			<div class="form-group col-sm-3">
				Data inicial: <input type="date" name="dataInicial" />
			</div>
			
			<div class="form-group col-sm-3">
				Data final: <input type="date" name="dataFinal" />
			</div>
			
			<div class="form-group col-sm-3">
				<label for="exampleFormControlSelect1">Turno</label> <select class="form-control"
					id="lab">
					<option>Manhã</option>
					<option>Tarde</option>
					<option>Noite</option>					
				</select>
			</div>
			
			
			<button type="submit" class="btn btn-primary">Solicitar</button>
		</div>
	</form>

</body>
</html>