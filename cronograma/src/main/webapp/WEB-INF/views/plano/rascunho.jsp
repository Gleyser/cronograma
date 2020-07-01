<%@ include file="/WEB-INF/views/cabecalhoCoordenador.jsp"%>
<div class="container" align="center">
	<h1 class="h4 mb-3 font-weight-normal">Plano de Metas - Rascunhos</h1>

	<div class="col-md-8 order-md-1">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">Título</th>
					<th scope="col">Ano</th>
					<th scope="col">Ações</th>
				</tr>
			</thead>
			<tbody>


				<c:forEach items="${planos}" var="plano">
					<tr>

						<th scope="row">${plano.titulo}</th>
						<th>${plano.ano}</th>
						<th><div>
								<a href="editarrascunho?id=${plano.id}"
									class="btn btn-primary btn-circle"> <i class="fa fa-cog"></i>
								</a> <a href="escluirrascunho?id=${plano.id}"
									class="btn btn-danger btn-circle"> <i class="fas fa-trash"></i>
								</a>


							</div></th>
					</tr>
				</c:forEach>

			</tbody>
		</table>


	</div>
	<br>


</div>


<!-- End do Page Wrapper do Cabeçalho -->
</div>
<!-- End do Container do Cabeçalho -->
</div>


</body>
</html>