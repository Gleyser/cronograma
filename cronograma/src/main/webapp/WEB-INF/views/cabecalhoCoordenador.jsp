<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SIGEP - Dashboard</title>
<c:url value="/resources/css" var="cssPath" />
<c:url value="/images" var="images" />
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css" />
<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min.css" />
<!-- Custom styles for this template-->
<link href="${cssPath}/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom fonts for this template-->
<c:url value="/resources/vendor/fontawesome-free/css" var="vendor" />
<link href="${vendor}/all.min.css" rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Organizar isso aqui -->
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
		

	</div>

	<div class="container" align="center">

		<!-- Page Wrapper -->
		<div id="wrapper">

			<!-- Sidebar -->
			<ul
				class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
				id="accordionSidebar">

				<!-- Sidebar - Brand -->
				<a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
					<div class="sidebar-brand-icon rotate-n-15">
						<i class="fas fa-cogs"></i>
					</div>
					<div class="sidebar-brand-text mx-1">CEP IST Stenio Lopes</div>
				</a>

				<!-- Divider -->
				<hr class="sidebar-divider my-0">

				<!-- Nav Item - Dashboard -->
				<li class="nav-item active"><a class="nav-link" href="#"> <i
						class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span></a></li>

				<!-- Divider -->
				<hr class="sidebar-divider">

				<!-- Heading -->
				<div class="sidebar-heading">Educação Profissional</div>

				<!-- Nav Item - Pages Collapse Menu -->
				<li class="nav-item"><a class="nav-link collapsed" href="#"
					data-toggle="collapse" data-target="#collapseTwo"
					aria-expanded="true" aria-controls="collapseTwo"> <i
						class="fas fa-chart-line"></i> <span>Plano de Metas</span>
				</a>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
						data-parent="#accordionSidebar">
						<div class="bg-white py-2 collapse-inner rounded">
							<!-- <h6 class="collapse-header">Opções:</h6>-->
							<a class="collapse-item" href="inserirnovoplanodemeta">Novo</a> 
							<a class="collapse-item" href="#">Atual</a>
							<a class="collapse-item" href="planosdemetarascunhos">Rascunhos</a>							
							<a class="collapse-item" href="#">Anteriores</a>
						</div>
					</div></li>

				<!-- Nav Item - Utilities Collapse Menu -->
				<li class="nav-item"><a class="nav-link collapsed" href="#"
					data-toggle="collapse" data-target="#collapseCronograma"
					aria-expanded="true" aria-controls="collapseCronograma"> <i
						class="fas fa-calendar-alt"></i> <span>Cronograma</span>
				</a>
					<div id="collapseCronograma" class="collapse"
						aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
						<div class="bg-white py-2 collapse-inner rounded">
							<!-- <h6 class="collapse-header">Opções:</h6>-->
							 <a	class="collapse-item" href="#">Página geral</a> 
							 <a class="collapse-item" href="#">Calendário escolar</a>
							 
						</div>
					</div></li>


				<!-- Nav Item - Utilities Collapse Menu -->
				<li class="nav-item"><a class="nav-link collapsed" href="#"
					data-toggle="collapse" data-target="#collapseCursoModelo"
					aria-expanded="true" aria-controls="collapseCursoModelo"> <i
						class="fas fa-graduation-cap"></i> <span>Cursos modelo</span>
				</a>
					<div id="collapseCursoModelo" class="collapse"
						aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
						<div class="bg-white py-2 collapse-inner rounded">
							<!-- <h6 class="collapse-header">Opções:</h6>-->
							<a class="collapse-item" href="inserircursomodelo">Inserir curso modelo</a>
							<a class="collapse-item" href="editarcursomodelo">Editar curso modelo</a> 
							<a class="collapse-item" href="inserirunidadecurricularmodelo">Inserir UC modelo</a> 
							<a class="collapse-item" href="#">Editar UC modelo</a> 
						</div>
					</div></li>


				<!-- Nav Item - Utilities Collapse Menu -->
				<li class="nav-item"><a class="nav-link collapsed" href="#"
					data-toggle="collapse" data-target="#collapseInstrutores"
					aria-expanded="true" aria-controls="collapseInstrutores"> <i
						class="fas fa-book-reader"></i> <span>Instrutores</span>
				</a>
					<div id="collapseInstrutores" class="collapse"
						aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
						<div class="bg-white py-2 collapse-inner rounded">
							<!-- <h6 class="collapse-header">Opções:</h6>-->
							<a class="collapse-item" href="#">Inserir</a> 
							<a class="collapse-item" href="#">Editar</a> 
						    <a class="collapse-item" href="#">Matriz de polivalência</a>							
						</div>
					</div></li>


				<!-- Divider -->
				<hr class="sidebar-divider">







			</ul>
			<!-- End of Sidebar -->

			<!-- Content Wrapper -->
			<div id="content-wrapper" class="d-flex flex-column">

				<!-- Main Content -->
				<div id="content">

					<!-- Topbar -->
					<nav
						class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
						<h5>Sistema de Informação Gerencial <br> Centro de Formação Profissional Prof. Stenio Lopes <br> Instituto SENAI de Tecnologia em Automação</h5>	
						
                        
						<!-- Sidebar Toggle (Topbar) -->
						<button id="sidebarToggleTop"
							class="btn btn-link d-md-none rounded-circle mr-3">
							<i class="fa fa-bars"></i>
						</button>




						<!-- Topbar Navbar -->
						<ul class="navbar-nav ml-auto">

							<!-- Nav Item - Solicitações -->
							<li class="nav-item dropdown no-arrow mx-1"><a
								class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i>
									<!-- Counter - Messages --> <span
									class="badge badge-danger badge-counter">7</span>
							</a> <!-- Dropdown - Solicitações -->
								<div
									class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
									aria-labelledby="messagesDropdown">
									<h6 class="dropdown-header">Solicitações diversas</h6>
									<a class="dropdown-item d-flex align-items-center" href="#">
										<div class="dropdown-list-image mr-3">
											<img class="rounded-circle"
												src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
											<div class="status-indicator bg-success"></div>
										</div>
										<div class="font-weight-bold">
											<div class="text-truncate">Impressão de Provas</div>
											<div class="small text-gray-500">Alcione</div>
										</div>
									</a> <a class="dropdown-item d-flex align-items-center" href="#">
										<div class="dropdown-list-image mr-3">
											<img class="rounded-circle"
												src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
											<div class="status-indicator"></div>
										</div>
										<div>
											<div class="text-truncate">Reserva de laboratório</div>
											<div class="small text-gray-500">Julionito</div>
										</div>
									</a> <a class="dropdown-item d-flex align-items-center" href="#">
										<div class="dropdown-list-image mr-3">
											<img class="rounded-circle"
												src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
											<div class="status-indicator bg-warning"></div>
										</div>
										<div>
											<div class="text-truncate">Solicitação de livros</div>
											<div class="small text-gray-500">Gleyser</div>
										</div>
									</a> 
									<a class="dropdown-item text-center small text-gray-500"
										href="#">Veja todas as solicitações</a>
								</div></li>

							<div class="topbar-divider d-none d-sm-block"></div>

							<!-- Nav Item - User Information -->
							<li class="nav-item dropdown no-arrow"><a
								class="nav-link dropdown-toggle" href="#" id="userDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <span
									class="mr-2 d-none d-lg-inline text-gray-600 small">${usuarioLogado.nome}</span>
									<img class="img-profile rounded-circle"
									src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
							</a> <!-- Dropdown - User Information -->
								<div
									class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
									aria-labelledby="userDropdown">
									<a class="dropdown-item" href="#"> <i
										class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
										Meu perfil
									</a> <a class="dropdown-item" href="#"> <i
										class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
										Configurações
									</a> <a class="dropdown-item" href="#"> <i
										class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
										Log de atividades
									</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="sair" data-toggle="modal"
										data-target="#logoutModal"> <i
										class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
										Sair
									</a>
								</div></li>

						</ul>

					</nav>
					<!-- End of Topbar -->

					<!-- Scroll to Top Button-->
					<a class="scroll-to-top rounded" href="#"> <i
						class="fas fa-angle-up"></i>
					</a>

					<!-- Logout Modal-->
					<div class="modal fade" id="logoutModal" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalLabel"
						aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">Preparado
										para sair?</h5>
									<button class="close" type="button" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">×</span>
									</button>
								</div>
								<div class="modal-body">Selecione "Sair" se você está
									preparado para encerrar essa sessão.</div>
								<div class="modal-footer">
									<button class="btn btn-secondary" type="button"
										data-dismiss="modal">Cancelar</button>
									<a class="btn btn-primary" href="sair">Sair</a>
								</div>
							</div>
						</div>
					</div>