<%@ include file="/WEB-INF/views/cabecalhoCoordenador.jsp" %>
<div class="container" align="center">
 <h1 class="h4 mb-3 font-weight-normal"><b>Novo Plano de Metas:</b> -titulo-</h1>
 <h1 class="h4 mb-3 font-weight-normal"><b>Ano:</b> -ano- </h1>
 
 
      <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Ações:</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Ações: 
                      
                     
                  <a href="#" class="btn btn-success btn-circle">
                    <i class="fas fa-tasks"></i>
                  </a>
                  <a href="#" class="btn btn-info btn-circle">
                    <i class="fas fa-save"></i>
                  </a>
                  <a href="#" class="btn btn-warning btn-circle">
                    <i class="fas fa-thumbtack"></i>
                  </a>
                  <a href="#" class="btn btn-danger btn-circle">
                    <i class="fas fa-trash"></i>
                  </a>
                  
                  </div>
                      
                      <a class="dropdown-item" href="#">Definir metas</a> 
                      <a class="dropdown-item" href="#">Salvar rascunho</a> 
                      <a class="dropdown-item" href="#">Salvar como atual</a>
                      <a class="dropdown-item" href="#">Descartar plano</a>                      
                  </div>
                </div>          
                
              </div>
              </div>
					
					
					
<!-- Quadro Geral -->
              <div class="card shadow mb-4">
                <!-- Card Header - Accordion -->
                <a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardExample">
                  <h6 class="m-0 font-weight-bold text-primary">Educação Profissional- Quadro Geral</h6>
                </a>
                <!-- Card Content - Collapse -->
                <div class="collapse show" id="collapseCardExample">
                  <div class="card-body">
                  
                  	<!-- Content Row -->
					<div class="row">
                    
                    	<!-- Numero de turmas -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
										
										<div class="col-auto">
											<i class="far fa-chart-bar fa-3x text-gray-1000"></i>
										</div>
										<br>
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1"> Número<br> de matrículas</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">150</div>
											
											<br>
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">Mat. Residuais</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">
											1000
											</div>
											<br>
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">Mat. Novas</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">
											1000
											</div>
											
										</div>
										
									</div>
								</div>
							</div>
						</div>

						<!-- Número de matrículas -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-1">
										<div class="col-auto">
											<i class="fas fa-dollar-sign fa-3x text-gray-1000"></i>
										</div>
										<br>
											
											
											
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">Matrículas <br>Pagas</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">
											1000
											</div>
											<br>
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">Meta de matrículas</div>
											<div class="row no-gutters align-items-center">
												<div class="col-auto">
													<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
												</div>
												<div class="col">
													<div class="progress progress-sm mr-2">
														<div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar"
															style="width: 50%" aria-valuenow="50" aria-valuemin="0"
															aria-valuemax="100"></div>
													</div>
												</div>
											</div>
											<br>
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">Meta de aluno/hora</div>
											<div class="row no-gutters align-items-center">
												<div class="col-auto">
													<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
												</div>
												<div class="col">
													<div class="progress progress-sm mr-2">
														<div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar"
															style="width: 50%" aria-valuenow="50" aria-valuemin="0"
															aria-valuemax="100"></div>
													</div>
												</div>
											</div>
										
										</div>
										
										
									</div>
								</div>
							</div>
						</div>

						<!-- Metas -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
										
										<div class="col-auto">
											<i class="fas fa-clipboard-list fa-3x text-gray-1000"></i>
										</div>
										<br>
										
										<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">Matrículas Gratuitas</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">
											1000
											</div>
											<br>
											
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">Meta de matrículas</div>
											<div class="row no-gutters align-items-center">
												<div class="col-auto">
													<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
												</div>
												<div class="col">
													<div class="progress progress-sm mr-2">
														<div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar"
															style="width: 50%" aria-valuenow="50" aria-valuemin="0"
															aria-valuemax="100"></div>
													</div>
												</div>
											</div>
											<br>
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">Meta de aluno/hora</div>
											<div class="row no-gutters align-items-center">
												<div class="col-auto">
													<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
												</div>
												<div class="col">
													<div class="progress progress-sm mr-2">
														<div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar"
															style="width: 50%" aria-valuenow="50" aria-valuemin="0"
															aria-valuemax="100"></div>
													</div>
												</div>
											</div>
											
											
										</div>
										
									</div>
								</div>
							</div>
						</div>

						<!-- Alunos/Hora -->
						<!-- Numero de turmas https://www.w3schools.com/icons/fontawesome5_icons_education.asp -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
										
										<div class="col-auto">
											<i class="fas fa-users fa-3x text-gray-1000"></i>
										</div>
										<br>
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1"> Total<br> de turmas</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">150</div>
											
											<br>
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">Total alunos/hora</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">
											1000
											</div>
											<br>
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">Alunos/hora<br> com evasão (-10%)</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">
											1000
											</div>
											
										</div>
										
									</div>
								</div>
							</div>
						</div>
					</div>
                    
                    </div>
                  </div>
                
                </div>
                
                <!-- EP - Gratuidade -->
              <div class="card shadow mb-4">
                <!-- Card Header - Accordion -->
                <a href="#collapseCardEPG" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardEPG">
                  <h6 class="m-0 font-weight-bold text-primary">Educação Profissional - Gratuito</h6>       
                  </a>
                <!-- Card Content - Collapse -->
                <div class="collapse show" id="collapseCardEPG">
                  <div class="card-body">
                  
                  
                  
                  <!-- Tabela resumo -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Resumo (Sub total)</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
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
                       <td>Aprendizagem básica</td>
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
          </div> <!-- final da Tabela resumo -->
                  
                  <!-- inicio de aprendizagem basica -->
            <div class="card shadow mb-4">
                <!-- Card Header - Accordion -->
                <a href="#collapseCardEPGAB" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardEPGAB">
                  <h6 class="m-0 font-weight-bold text-primary">Aprendizagem Básica</h6>       
                  </a>
                <!-- Card Content - Collapse -->
                <div class="collapse show" id="collapseCardEPGAB">
                  <div class="card-body">
                  <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Ações:</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Ações:
                   
                   
                  <a href="#" class="btn btn-success btn-circle">
                    <i class="far fa-plus-square"></i>
                  </a>
                  <a href="#" class="btn btn-info btn-circle">
                    <i class="fas fa-sort-alpha-down"></i>
                  </a>
                  <a href="#" class="btn btn-warning btn-circle">
                    <i class="fas fa-sort-amount-down"></i>
                  </a>
                  <a href="#" class="btn btn-danger btn-circle">
                    <i class="fas fa-trash"></i>
                  </a>
                      
                      </div>
                      <a class="dropdown-item" href="#">Inserir novo curso</a>                       
                      <a class="dropdown-item" href="#">Ordenar por ordem alfabética</a> 
                      <a class="dropdown-item" href="#">Ordenar por setor</a>  
                      <a class="dropdown-item" href="#">Remover todos os cursos</a>            
                  </div>
                </div>          
                
              </div>
                
                <!-- Card Body -->
                <div class="card-body">
                          <!-- DataTales Example -->
                                  
				          <!-- Um curso -->
				             <!-- Um curso -->
				            <div class="card-body">
				              <div class="table-responsive">
				                <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
				                  <thead>
				                    <tr>
				                      <th colspan="5">Curso: Técnico em Automação Industrial  </th>
				                      <!-- rowspan se quiser mesclar linhas -->
				                      <th><a href="#" class="btn btn-primary btn-circle">
                    <i class="fa fa-cog"></i>
                  </a></th>
				                      <th><a href="#" class="btn btn-danger btn-circle">
                    <i class="fas fa-trash"></i>
                  </a></th>
				                    </tr>
				                  </thead>
				                  
				                  <tbody>
				                    <tr>
				                      <td>Ano e Semestre: 2020.2</td>
				                      <td>Trimestre: 3 </td>
				                      <td>Turno: N </td>
				                      <td>Dias de aula: 23456 </td>
				                      <td colspan="2">Setor: ELETROELETRÔNICA</td>
				                      <td>Carga Horária: 1000</td>				                      
				                    </tr>
				                    
				                    <tr>
				                      <td>Mat. <br>total: <br> 20 </td>
				                      <td>Mat. residuais: 0</td>
				                      <td>Mat. novas: 20</td>
				                      <td>Alunos/hora: 5600</td>
				                      <td>CH Anual: 280</td>
				                      <td colspan="2">Código SGE: APP.130.ED.054 </td>
				                      
				                    </tr>
				                    
				                    </tbody>
				                </table>
				              </div>
				              
				            
				            <!-- Um curso fim -->   
				            
				             <!-- Um curso -->
				            
				              <div class="table-responsive">
				                <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
				                  <thead>
				                    <tr>
				                      <th colspan="5">Curso: Técnico em Automação Industrial  </th>
				                      <!-- rowspan se quiser mesclar linhas -->
				                      <th><a href="#" class="btn btn-primary btn-circle">
                    <i class="fa fa-cog"></i>
                  </a></th>
				                      <th><a href="#" class="btn btn-danger btn-circle">
                    <i class="fas fa-trash"></i>
                    <!-- icones em https://www.w3schools.com/icons/fontawesome_icons_webapp.asp -->
                  </a></th>
				                    </tr>
				                  </thead>
				                  
				                  <tbody>
				                    <tr>
				                      <td>Ano e Semestre: 2020.2</td>
				                      <td>Trimestre: 3 </td>
				                      <td>Turno: N </td>
				                      <td>Dias de aula: 23456 </td>
				                      <td colspan="2">Setor: ELETROELETRÔNICA</td>
				                      <td>Carga Horária: 1000</td>				                      
				                    </tr>
				                    
				                    <tr>
				                      <td>Mat. <br>total: <br> 20 </td>
				                      <td>Mat. residuais: 0</td>
				                      <td>Mat. novas: 20</td>
				                      <td>Alunos/hora: 5600</td>
				                      <td>CH Anual: 280</td>
				                      <td colspan="2">Código SGE: APP.130.ED.054 </td>
				                      
				                    </tr>
				                    
				                    </tbody>
				                </table>
				              </div>
				            </div>  
				            
				            <!-- Um curso fim -->     
			
                </div>
              </div>
                    
                    </div>
                  </div>
                  
                  <!-- fim de aprendizagem basica -->
                </div>
                </div>
                
                  </div>
                  
                <!-- EP - Pago -->
              <div class="card shadow mb-4">
                <!-- Card Header - Accordion -->
                <a href="#collapseCardEPP" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardEPP">
                  <h6 class="m-0 font-weight-bold text-primary">Educação Profissional - Pago</h6>
                </a>
                <!-- Card Content - Collapse -->
                <div class="collapse show" id="collapseCardEPP">
                  <div class="card-body">
                  
                    <!-- Tabela resumo -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Resumo (Sub total)</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
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
                       <td>Habilitação técnica</td>
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
          </div> <!-- final da Tabela resumo -->
                    
                           <!-- inicio de Habilitação técnica -->
            <div class="card shadow mb-4">
                <!-- Card Header - Accordion -->
                <a href="#collapseCardEPPHT" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardEPPHT">
                  <h6 class="m-0 font-weight-bold text-primary">Habilitação Técnica</h6>       
                  </a>
                <!-- Card Content - Collapse -->
                <div class="collapse show" id="collapseCardEPPHT">
                  
                <!-- Card Body -->
                <div class="card-body">
                
                 <!-- Dropdown Card Ações -->
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Ações:</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Ações:
                       <a href="#" class="btn btn-success btn-circle">
                    <i class="far fa-plus-square"></i>
                  </a>
                  <a href="#" class="btn btn-info btn-circle">
                    <i class="fas fa-sort-alpha-down"></i>
                  </a>
                  <a href="#" class="btn btn-warning btn-circle">
                    <i class="fas fa-sort-amount-down"></i>
                  </a>
                  <a href="#" class="btn btn-danger btn-circle">
                    <i class="fas fa-trash"></i>
                  </a>
                      
                      
                      </div>
                      <a class="dropdown-item" href="#">Inserir novo curso</a>                       
                      <a class="dropdown-item" href="#">Ordenar por ordem alfabética</a> 
                      <a class="dropdown-item" href="#">Ordenar por setor</a> 
                      <a class="dropdown-item" href="#">Remover todos os cursos</a> 
                                            
                  </div>
                </div>          
                
              </div>
              </div>
                
               
                  
                          <!-- DataTales Example -->
                                  
				          <!-- Um curso -->
				            <div class="card-body">
				              <div class="table-responsive">
				                <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
				                  <thead>
				                    <tr>
				                      <th colspan="5">Curso: Técnico em Automação Industrial  </th>
				                      <!-- rowspan se quiser mesclar linhas -->
				                      <th><a href="#" class="btn btn-primary btn-circle">
                    <i class="fa fa-cog"></i>
                  </a></th>
				                      <th><a href="#" class="btn btn-danger btn-circle">
                    <i class="fas fa-trash"></i>
                  </a></th>
				                    </tr>
				                  </thead>
				                  
				                  <tbody>
				                    <tr>
				                      <td>Ano e Semestre: 2020.2</td>
				                      <td>Trimestre: 3 </td>
				                      <td>Turno: N </td>
				                      <td>Dias de aula: 23456 </td>
				                      <td colspan="2">Setor: ELETROELETRÔNICA</td>
				                      <td>Carga Horária: 1000</td>				                      
				                    </tr>
				                    
				                    <tr>
				                      <td>Mat. <br>total: <br> 20 </td>
				                      <td>Mat. residuais: 0</td>
				                      <td>Mat. novas: 20</td>
				                      <td>Alunos/hora: 5600</td>
				                      <td>CH Anual: 280</td>
				                      <td colspan="2">Código SGE: APP.130.ED.054 </td>
				                      
				                    </tr>
				                    
				                    </tbody>
				                </table>
				              </div>
				              
				            
				            <!-- Um curso fim -->   
				            
				             <!-- Um curso -->
				            
				              <div class="table-responsive">
				                <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
				                  <thead>
				                    <tr>
				                      <th colspan="5">Curso: Técnico em Automação Industrial  </th>
				                      <!-- rowspan se quiser mesclar linhas -->
				                      <th><a href="#" class="btn btn-primary btn-circle">
                    <i class="fa fa-cog"></i>
                  </a></th>
				                      <th><a href="#" class="btn btn-danger btn-circle">
                    <i class="fas fa-trash"></i>
                    <!-- icones em https://www.w3schools.com/icons/fontawesome_icons_webapp.asp -->
                  </a></th>
				                    </tr>
				                  </thead>
				                  
				                  <tbody>
				                    <tr>
				                      <td>Ano e Semestre: 2020.2</td>
				                      <td>Trimestre: 3 </td>
				                      <td>Turno: N </td>
				                      <td>Dias de aula: 23456 </td>
				                      <td colspan="2">Setor: ELETROELETRÔNICA</td>
				                      <td>Carga Horária: 1000</td>				                      
				                    </tr>
				                    
				                    <tr>
				                      <td>Mat. <br>total: <br> 20 </td>
				                      <td>Mat. residuais: 0</td>
				                      <td>Mat. novas: 20</td>
				                      <td>Alunos/hora: 5600</td>
				                      <td>CH Anual: 280</td>
				                      <td colspan="2">Código SGE: APP.130.ED.054 </td>
				                      
				                    </tr>
				                    
				                    </tbody>
				                </table>
				              </div>
				            </div>  
				            
				            <!-- Um curso fim -->       
			
                </div>
              </div>
                    
                    </div>
                  </div>
                  
                  <!-- fim de Habilitação técnica -->
                    
                    
                    
                    
                    
                    </div>
                  </div>
                



  
    


</body>
</html>