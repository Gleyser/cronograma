<c:forEach items="${modalidadesPagasDoPlano}" var="modalidadePagaDoPlano">
<!-- inicio de uma modalidade paga -->
<div class="card shadow mb-4">
	<!-- Card Header - Accordion -->
	<a href="#collapseCardModalidadePaga_${modalidadePagaDoPlano.tipoModalidade}" class="d-block card-header py-3"
		data-toggle="collapse" role="button" aria-expanded="true"
		aria-controls="collapseCardModalidadePaga_ID">
		<h6 class="m-0 font-weight-bold text-primary">${modalidadePagaDoPlano.tipoModalidade.descricao}</h6>
	</a>
	<!-- Card Content - Collapse -->
	<div class="collapse" id="collapseCardModalidadePaga_${modalidadePagaDoPlano.tipoModalidade}">

		<!-- Card Body -->
		<div class="card-body">
		
		<a href="#" class="btn btn-success btn-circle"> <i
									class="far fa-plus-square"></i>
								</a> <a href="#" class="btn btn-info btn-circle"> <i
									class="fas fa-sort-alpha-down"></i>
								</a> <a href="#" class="btn btn-warning btn-circle"> <i
									class="fas fa-sort-amount-down"></i>
								</a> <a href="#" class="btn btn-danger btn-circle"> <i
									class="fas fa-trash"></i>
								</a>

			<!-- Dropdown Card Ações -->
			<!-- Os cursos dessa modalidade -->

			<!-- EP - Pago -->
			<%@ include file="/WEB-INF/views/plano/curso.jsp"%>

		</div>
	</div>

</div>
</div>
</c:forEach>
<!-- fim de uma modalidade paga -->
