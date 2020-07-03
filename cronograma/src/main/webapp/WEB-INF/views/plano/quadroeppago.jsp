
<!-- EP - Pago -->
<div class="card shadow mb-4">
	<!-- Card Header - EP Pago -->
	<a href="#collapseCardEPP" class="d-block card-header py-3"
		data-toggle="collapse" role="button" aria-expanded="true"
		aria-controls="collapseCardEPP">
		<h6 class="m-0 font-weight-bold text-primary">Educa��o
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
										<th>N�mero de turmas</th>
										<th>Carga Hor�ria Anual</th>
										<th>Matr�culas Residuais</th>
										<th>Matr�culas Novas</th>
										<th>Total de matr�culas</th>
										<th>Total Aluno/Hora</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td>Uma modalidade</td>
										<td>10</td>
										<td>1000</td>
										<td>1000</td>
										<td>1000</td>
										<td>2000</td>
										<td>50000</td>
									</tr>
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