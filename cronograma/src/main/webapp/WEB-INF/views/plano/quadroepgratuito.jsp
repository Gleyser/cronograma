
<!-- EP - Gratuidade -->
<div class="card shadow mb-4">
	<!-- Card Header - EP Gratuidade -->
	<a href="#collapseCardEPG" class="d-block card-header py-3"
		data-toggle="collapse" role="button" aria-expanded="true"
		aria-controls="collapseCardEPG">
		<h6 class="m-0 font-weight-bold text-primary">Educação
			Profissional - Gratuito</h6>
	</a>

	<!-- Card Content - Collapse - EP Gratuidade -->
	<div class="collapse" id="collapseCardEPG">

		<!-- Card - Collapse - EP Gratuidade -->
		<div class="card-body">

			<!-- Card Header - EP Gratuidade Resumo -->
			<div class="card shadow mb-4">
				<!-- Card Header - EP Gratuidade Resumo -->
				<a href="#collapseCardEPGresumo" class="d-block card-header py-3"
					data-toggle="collapse" role="button" aria-expanded="true"
					aria-controls="collapseCardEPGresumo">
					<h6 class="m-0 font-weight-bold text-primary">Resumo (Sub
						total)</h6>
				</a>

				<!-- Card Content - Collapse - EP Gratuidade Resumo -->
				<div class="collapse" id="collapseCardEPGresumo">
					<!-- Tabela resumo -->
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-hover" id="dataTable" width="100%">
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
									<tr>
										<td>Nome da Modalidade</td>
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

			<!-- Modalidades Gratuitas do Plano -->
			<%@ include file="/WEB-INF/views/plano/modalidadesGratuitas.jsp"%>

		</div>
		<!-- fim do card interno do Collapse EP Gratuito -->

	</div>
	<!-- fim do Collapse EP Gratuito -->

</div>
<!-- fim do card EP Gratuito -->