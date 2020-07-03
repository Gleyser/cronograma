<%@ include file="/WEB-INF/views/cabecalhoCoordenador.jsp"%>
<div class="container" align="center">
	<h1 class="h4 mb-3 font-weight-normal">
		<b>Plano de Metas:</b> ${plano.titulo}
	</h1>
	<h1 class="h4 mb-3 font-weight-normal">
		<b>Ano:</b> ${plano.ano}
	</h1>

	<a href="#" data-toggle="modal" data-target="#editarModal"
		class="btn btn-primary btn-circle"> <i class="fa fa-cog"></i>
	</a> <a href="#" data-toggle="modal" data-target="#metasModal"
		class="btn btn-success btn-circle"> <i class="fas fa-tasks"></i>
	</a> <a href="#" class="btn btn-warning btn-circle"> <i
		class="fas fa-thumbtack"></i>
	</a> <a href="#" class="btn btn-danger btn-circle"> <i
		class="fas fa-trash"></i>
	</a> <br> <br>

	<!-- Modal de Exibir Metas -->
	<div class="modal fade" id="metasModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Metas do Plano</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>

				<!-- Project Card Example -->

				<!-- Basic Card Example -->
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">Educação
							Profissional - Gratuito</h6>
					</div>
					<div class="card-body">
						<h4 class="small font-weight-bold">
							Meta de Matrículas Gratuitas: 500 /
							${plano.meta.metaMatriculasGratuitas} <span class="float-right">${(500/plano.meta.metaMatriculasGratuitas)*100}%</span>
						</h4>
						<div class="progress mb-4">
							<div
								class="progress-bar progress-bar-striped progress-bar-animated"
								role="progressbar"
								style="width: ${(500/plano.meta.metaMatriculasGratuitas)*100}%"
								aria-valuenow="${(500/plano.meta.metaMatriculasGratuitas)*100}"
								aria-valuemin="0" aria-valuemax="100"></div>
						</div>
						<h4 class="small font-weight-bold">
							Meta de Aluno/hora Gratuitas: 500 /
							${plano.meta.metaAlunoHoraGratuitas} <span class="float-right">${(500/plano.meta.metaAlunoHoraGratuitas)*100}%</span>
						</h4>
						<div class="progress mb-4">
							<div
								class="progress-bar progress-bar-striped progress-bar-animated"
								role="progressbar"
								style="width: ${(500/plano.meta.metaAlunoHoraGratuitas)*100}%"
								aria-valuenow="${(500/plano.meta.metaAlunoHoraGratuitas)*100}"
								aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>
				</div>

				<!-- Basic Card Example -->
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">Educação
							Profissional - Pago</h6>
					</div>
					<div class="card-body">
						<h4 class="small font-weight-bold">
							Meta de Matrículas Pagas: 500 / ${plano.meta.metaMatriculasPagas}
							<span class="float-right">${(500/plano.meta.metaMatriculasPagas)*100}%</span>
						</h4>
						<div class="progress mb-4">
							<div
								class="progress-bar progress-bar-striped progress-bar-animated"
								role="progressbar"
								style="width: ${(500/plano.meta.metaMatriculasPagas)*100}%"
								aria-valuenow="${(500/plano.meta.metaMatriculasPagas)*100}"
								aria-valuemin="0" aria-valuemax="100"></div>
						</div>
						<h4 class="small font-weight-bold">
							Meta de Aluno/hora Pagas: 500 / ${plano.meta.metaAlunoHoraPagas}
							<span class="float-right">${(500/plano.meta.metaAlunoHoraPagas)*100}%</span>
						</h4>
						<div class="progress mb-4">
							<div
								class="progress-bar progress-bar-striped progress-bar-animated"
								role="progressbar"
								style="width: ${(500/plano.meta.metaAlunoHoraPagas)*100}%"
								aria-valuenow="${(500/plano.meta.metaAlunoHoraPagas)*100}%"
								aria-valuemin="0" aria-valuemax="100"></div>
						</div>


					</div>
				</div>

				<!-- Basic Card Example -->
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">Meta total</h6>
					</div>
					<div class="card-body">
						<h4 class="small font-weight-bold">
							Meta<span class="float-right">${(((500/plano.meta.metaMatriculasGratuitas) + (500/plano.meta.metaAlunoHoraGratuitas) + (500/plano.meta.metaMatriculasPagas) + (500/plano.meta.metaAlunoHoraPagas))/4)*100}%</span>
						</h4>
						<div class="progress mb-4">
							<div
								class="progress-bar progress-bar-striped progress-bar-animated"
								role="progressbar"
								style="width: ${(((500/plano.meta.metaMatriculasGratuitas) + (500/plano.meta.metaAlunoHoraGratuitas) + (500/plano.meta.metaMatriculasPagas) + (500/plano.meta.metaAlunoHoraPagas))/4)*100}%"
								aria-valuenow="${(((500/plano.meta.metaMatriculasGratuitas) + (500/plano.meta.metaAlunoHoraGratuitas) + (500/plano.meta.metaMatriculasPagas) + (500/plano.meta.metaAlunoHoraPagas))/4)*100}"
								aria-valuemin="0" aria-valuemax="100"></div>
						</div>

					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- Fim do Modal de Exibir Metas -->

	<!-- Modal de Editar titulo e ano -->
	<div class="modal fade" id="editarModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Editar Título e
						Ano do Plano de Metas</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<form class="needs-validation" novalidate
						action="editaranotitulodameta" method="post">
						<div class="row">
							<input type="hidden" name="id" value="${plano.id}" />
							<div class="col-md-9 mb-3">
								<label for="address">Título</label> <input type="text"
									class="form-control" name="titulo" id="titulo"
									value="${plano.titulo}" required>
								<div class="invalid-feedback">O título do plano de metas é
									obrigatório</div>
							</div>
							<div class="col-md-3 mb-5">
								<label for="country">Ano</label> <select
									class="custom-select d-block w-100" name="ano" id="ano"
									required>
									<option value="2019" ${plano.ano eq '2019' ? 'selected':''}>2019</option>
									<option value="2020" ${plano.ano eq '2020' ? 'selected':''}>2020</option>
									<option value="2021" ${plano.ano eq '2021' ? 'selected':''}>2021</option>
									<option value="2022" ${plano.ano eq '2022' ? 'selected':''}>2022</option>
									<option value="2023" ${plano.ano eq '2023' ? 'selected':''}>2023</option>
									<option value="2024" ${plano.ano eq '2024' ? 'selected':''}>2024</option>
									<option value="2025" ${plano.ano eq '2025' ? 'selected':''}>2025</option>
									<option value="2026" ${plano.ano eq '2026' ? 'selected':''}>2026</option>
								</select>
								<div class="invalid-feedback">O ano do plano de metas é
									obrigatório</div>

							</div>

							<div class="col-md-12 mb-5">

								<button class="btn btn-success" type="submit">Salvar</button>

							</div>

						</div>
					</form>

				</div>

			</div>
		</div>
	</div>
	<!-- Fim do Modal de Editar titulo e ano -->

<!-- EP - Quadro Geral -->
<%@ include file="/WEB-INF/views/plano/quadrogeral.jsp"%>

<!-- EP - Gratuito -->
<%@ include file="/WEB-INF/views/plano/quadroepgratuito.jsp"%>

<!-- EP - Pago -->
<%@ include file="/WEB-INF/views/plano/quadroeppago.jsp"%>


<!-- Rodape -->
<%@ include file="/WEB-INF/views/rodape.jsp"%>