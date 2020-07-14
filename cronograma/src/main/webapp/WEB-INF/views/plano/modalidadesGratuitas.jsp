<c:forEach items="${modalidadesGratuitasDoPlano}" var="modalidadeGratuitaDoPlano">
<!-- inicio de uma modalidade gratuita -->
<div class="card shadow mb-4">
	<!-- Card Header - Accordion -->
	<a href="#collapseCardModalidadeGratuita_${modalidadeGratuitaDoPlano.tipoModalidade}" class="d-block card-header py-3"
		data-toggle="collapse" role="button" aria-expanded="true"
		aria-controls="collapseCardModalidadeGratuita_ID"">
		<h6 class="m-0 font-weight-bold text-primary">${modalidadeGratuitaDoPlano.tipoModalidade.descricao}</h6>
	</a>
	<!-- Card Content - Collapse -->
	<div class="collapse" id="collapseCardModalidadeGratuita_${modalidadeGratuitaDoPlano.tipoModalidade}"">

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



			<!-- Os cursos dessa modalidade -->

			<!-- EP - Pago -->
			<%@ include file="/WEB-INF/views/plano/curso.jsp"%>

		</div>
	</div>

</div>
</div>
<!-- fim de uma modalidade gratuita -->
</c:forEach>