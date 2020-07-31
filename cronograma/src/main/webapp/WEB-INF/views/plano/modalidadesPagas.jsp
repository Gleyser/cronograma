<c:forEach items="${modalidadesPagasDoPlano}"
	var="modalidadePagaDoPlano">
	<!-- inicio de uma modalidade paga -->
	<div class="card shadow mb-4">
		<!-- Card Header - Accordion -->
		<a
			href="#collapseCardModalidadePaga_${modalidadePagaDoPlano.tipoModalidade}"
			class="d-block card-header py-3" data-toggle="collapse" role="button"
			aria-expanded="true" aria-controls="collapseCardModalidadePaga_ID">
			<h6 class="m-0 font-weight-bold text-primary">${modalidadePagaDoPlano.tipoModalidade.descricao}</h6>
		</a>
		<!-- Card Content - Collapse -->
		<div class="collapse"
			id="collapseCardModalidadePaga_${modalidadePagaDoPlano.tipoModalidade}">

			<!-- Card Body -->
			<div class="card-body">

				<a href="#" data-toggle="modal"
					data-target="#editarModalidadePaga${modalidadePagaDoPlano.tipoModalidade}"
					class="btn btn-success btn-circle"> <i
					class="far fa-plus-square"></i>
				</a> 
				
				<a href="#" class="btn btn-info btn-circle"> <i
					class="fas fa-sort-alpha-down"></i>
				</a> 
				
				<a href="#" class="btn btn-warning btn-circle"> <i
					class="fas fa-sort-amount-down"></i>
				</a> 
				
				<a href="#" class="btn btn-danger btn-circle"> <i
					class="fas fa-trash"></i>
				</a>

				<!-- Dropdown Card Ações -->
				<!-- Os cursos dessa modalidade -->

				<!-- Inserir os cursos dessa modalidade -->	
				<!-- Atualizar isso aqui -->			
			<%@ include file="/WEB-INF/views/plano/cursoGratuito.jsp"%>

			</div>
		</div>

	</div>
	<!-- Modal para inserir um novo curso -->
	<!-- Modal de Editar titulo, ano e modalidades -->
	<div class="modal fade"
		id="editarModalidadePaga${modalidadePagaDoPlano.tipoModalidade}"
		tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Inserir curso pago na modalidade 
						${modalidadePagaDoPlano.tipoModalidade.descricao}</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body"></div>

			</div>
		</div>
	</div>
	<!-- Fim do Modal de Editar titulo e ano -->

	
</c:forEach>
<!-- fim de uma modalidade paga -->
