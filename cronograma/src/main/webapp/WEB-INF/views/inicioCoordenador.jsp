<%@ include file="/WEB-INF/views/cabecalhoCoordenador.jsp"%>
				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div class="container" align="center">
						<h1 class="h4 mb-3 font-weight-normal" align="center">Dashboard</h1>

					</div>
									
					<!-- Content Row -->

					<div class="row">

						<div class="jumbotron">
							<h1 class="display-4">Hello, ${usuarioLogado.nome}</h1>
							<p class="lead">This is a simple hero unit, a simple
								jumbotron-style component for calling extra attention to
								featured content or information.</p>
							<hr class="my-4">
							<p>It uses utility classes for typography and spacing to
								space content out within the larger container.</p>

						</div>


						<!-- Area Chart -->
						<!-- <div class="col-xl-8 col-lg-7">
							<div class="card shadow mb-4">
								Card Header - Dropdown
								<div
									class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">Earnings
										Overview</h6>
									<div class="dropdown no-arrow">
										<a class="dropdown-toggle" href="#" role="button"
											id="dropdownMenuLink" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false"> <i
											class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
										</a>
										<div
											class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
											aria-labelledby="dropdownMenuLink">
											<div class="dropdown-header">Dropdown Header:</div>
											<a class="dropdown-item" href="#">Action</a> <a
												class="dropdown-item" href="#">Another action</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item" href="#">Something else here</a>
										</div>
									</div>
								</div>
								Card Body
								<div class="card-body">
									<div class="chart-area">
										<canvas id="myAreaChart"></canvas>
									</div>
								</div>
							</div>
						</div> -->

					 	<!-- Pie Chart --><!--
						<div class="col-xl-4 col-lg-5">
							<div class="card shadow mb-4">
								Card Header - Dropdown
								<div
									class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">Revenue
										Sources</h6>
									<div class="dropdown no-arrow">
										<a class="dropdown-toggle" href="#" role="button"
											id="dropdownMenuLink" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false"> <i
											class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
										</a>
										<div
											class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
											aria-labelledby="dropdownMenuLink">
											<div class="dropdown-header">Dropdown Header:</div>
											<a class="dropdown-item" href="#">Action</a> <a
												class="dropdown-item" href="#">Another action</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item" href="#">Something else here</a>
										</div>
									</div>
								</div>
								Card Body
								<div class="card-body">
									<div class="chart-pie pt-4 pb-2">
										<canvas id="myPieChart"></canvas>
									</div>
									<div class="mt-4 text-center small">
										<span class="mr-2"> <i
											class="fas fa-circle text-primary"></i> Direct
										</span> <span class="mr-2"> <i
											class="fas fa-circle text-success"></i> Social
										</span> <span class="mr-2"> <i class="fas fa-circle text-info"></i>
											Referral
										</span>
									</div>
								</div>
							</div>
						</div> -->
					</div>

					<!-- Content Row -->
					<div class="row">

						<!-- Content Column -->
						<div class="col-lg-6 mb-4"></div>

					</div>
					<!-- /.container-fluid -->

				</div>
				<!-- End of Main Content -->

				<!-- Footer -->
				<!-- <footer class="sticky-footer bg-white">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>SIGEP - CFP SL - 2020 - v.1</span>
						</div>
					</div>
				</footer> -->
				<!-- End of Footer -->

			</div>
			<!-- End of Content Wrapper -->

		</div>
		<!-- End of Page Wrapper -->

		


	</div>
	</body>
	</html>