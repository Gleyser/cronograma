<%@ include file="/WEB-INF/views/cabecalhoCoordenador.jsp"%>
<div class="container" align="center">
	<h1 class="h4 mb-3 font-weight-normal">Editar curso modelo no
		sistema</h1>

	<div class="col-md-8 order-md-1">
		<form class="needs-validation" novalidate action="buscarcursomodelo"
			method="post">
			<div class="row">
				<div class="input-group">
					<select class="custom-select" id="inputGroupSelect04"
						aria-label="Selecione o curso modelo a ser editado">
						<option selected>Choose...</option>
						<option value="1">One</option>
						<option value="2">Two</option>
						<option value="3">Three</option>
					</select>
					<div class="input-group-append">
						<button class="btn btn-outline-secondary" type="button">Buscar</button>
					</div>
				</div>
		</form>
	</div>