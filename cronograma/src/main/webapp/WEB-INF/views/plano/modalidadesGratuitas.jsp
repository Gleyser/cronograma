<!-- inicio de Habilitação técnica -->
<div class="card shadow mb-4">
	<!-- Card Header - Accordion -->
	<a href="#collapseCardModalidadeGratuita_ID" class="d-block card-header py-3"
		data-toggle="collapse" role="button" aria-expanded="true"
		aria-controls="collapseCardModalidadeGratuita_ID"">
		<h6 class="m-0 font-weight-bold text-primary">Habilitação Técnica</h6>
	</a>
	<!-- Card Content - Collapse -->
	<div class="collapse" id="collapseCardModalidadeGratuita_ID"">

		<!-- Card Body -->
		<div class="card-body">

			<!-- Dropdown Card Ações -->
			<div class="card shadow mb-4">
				<!-- Card Header - Dropdown -->
				<div
					class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
					<h6 class="m-0 font-weight-bold text-primary">Ações:</h6>
					<div class="dropdown no-arrow">
						<a class="dropdown-toggle" href="#" role="button"
							id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i
							class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
						</a>
						<div
							class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
							aria-labelledby="dropdownMenuLink">
							<div class="dropdown-header">
								Ações: <a href="#" class="btn btn-success btn-circle"> <i
									class="far fa-plus-square"></i>
								</a> <a href="#" class="btn btn-info btn-circle"> <i
									class="fas fa-sort-alpha-down"></i>
								</a> <a href="#" class="btn btn-warning btn-circle"> <i
									class="fas fa-sort-amount-down"></i>
								</a> <a href="#" class="btn btn-danger btn-circle"> <i
									class="fas fa-trash"></i>
								</a>


							</div>
							

						</div>
					</div>

				</div>
			</div>



			<!-- Os cursos dessa modalidade -->

			<!-- EP - Pago -->
			<%@ include file="/WEB-INF/views/plano/curso.jsp"%>

		</div>
	</div>

</div>
</div>

<!-- fim de Habilitação técnica -->