
<!-- EP - Pago -->
<div class="card shadow mb-4">
	<!-- Card Header - EP Pago -->
	<a href="#collapseCardEPP" class="d-block card-header py-3"
		data-toggle="collapse" role="button" aria-expanded="true"
		aria-controls="collapseCardEPP">
		<h6 class="m-0 font-weight-bold text-primary">Educação
			Profissional - Pago</h6>
	</a>
	<!-- Card Content - Collapse - EP Pago -->
	<div class="collapse" id="collapseCardEPP">
		<!-- Card - Collapse - EP Pago -->
		<div class="card-body">

			<!-- Card - Collapse - EP Pago -->
			<div class="card shadow mb-4">
				<!-- Card Header - EP Pago Resumo -->
				<a href="#collapseCardEPPresumo" class="d-block card-header py-3"
					data-toggle="collapse" role="button" aria-expanded="true"
					aria-controls="collapseCardEPPresumo">
					<h6 class="m-0 font-weight-bold text-primary">Resumo (Sub
						total)</h6>
				</a>

				<!-- Card Content - Collapse - EP Pago Resumo -->
				<div class="collapse" id="collapseCardEPPresumo">

					<!-- Tabela resumo -->
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-hover" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>Modalidade</th>
										<th>Número de turmas</th>
										<th>Carga Horária Anual</th>
										<th>Matrículas Residuais</th>
										<th>Matrículas Novas</th>
										<th>Total de matrículas</th>
										<th>Total Aluno/Hora</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach items="${modalidadesPagasDoPlano}" var="modalidadePagaDoPlano">
									<tr>									
										<td>${modalidadePagaDoPlano.tipoModalidade.descricao}</td>
										<td>0</td>
										<td>0</td>
										<td>0</td>
										<td>0</td>
										<td>0</td>
										<td>0</td>									
									</tr>
								</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- final da Tabela resumo -->
			</div>
			<!-- final da Collapse do resumo -->

			<!-- Modalidades Pagas do Plano -->
			<%@ include file="/WEB-INF/views/plano/modalidadesPagas.jsp"%>







		</div>
	</div>
</div>