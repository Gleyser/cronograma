<%@ include file="/WEB-INF/views/cabecalhoCoordenador.jsp"%>
<div class="container" align="center">
	<h1 class="h4 mb-3 font-weight-normal">Selecionar curso modelo no
		sistema</h1>

	<div class="col-md-8 order-md-1">
		<form class="needs-validation" novalidate action="buscarcursomodelo"
			method="post">
			<div class="row">
				<div class="input-group">
					<select class="custom-select" id="inputGroupSelect04"
						aria-label="Selecione o curso modelo a ser editado" name="id" id="idDoCurso" required>
						<option selected>Selecione o curso...</option>
						<c:forEach items="${cursosModelos}" var="curso">
						
						<option value="${curso.id}">${curso.nome} com a modalidade ${curso.modalidade} </option>
						
						</c:forEach>
						
					</select>
					<div class="input-group-append">
						<button class="btn btn-outline-secondary" type="submit">Buscar</button>
					</div>
				</div>
			</div>
		</form>
	</div>