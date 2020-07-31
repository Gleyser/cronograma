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

		<a href="#" data-toggle="modal" data-target="#editarModalidadeGratuita${modalidadeGratuitaDoPlano.tipoModalidade}"  class="btn btn-success btn-circle"> <i
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



			<!-- Inserir os cursos dessa modalidade -->			
			<%@ include file="/WEB-INF/views/plano/cursoGratuito.jsp"%>

		</div>
	</div>

</div>

	<!-- Modal para inserir um novo curso -->
		<!-- Modal de Editar titulo, ano e modalidades -->
	<div class="modal fade" id="editarModalidadeGratuita${modalidadeGratuitaDoPlano.tipoModalidade}" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Inserir curso gratuito na modalidade 
						${modalidadeGratuitaDoPlano.tipoModalidade.descricao}</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
				
						<div class="row">
												
						<table class="table table-hover">
								<thead>
									<tr>
										<th scope="col">Curso</th>
										<th scope="col">Quantidade de turmas</th>
										<th scope="col">Inserir</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach items="${cursosModelo}" var="cursosModeloGratuito">
										<c:forEach items="${cursosModeloGratuito.modalidades}" var="modalidadeDoCurso">
											<c:if test="${modalidadeDoCurso.tipoModalidade eq modalidadeGratuitaDoPlano.tipoModalidade && modalidadeDoCurso.tipoDePagamento eq 'GRATUITO'}">
												<tr>
												
												<form:form action="inserircursogratuitonoplano" method="post">
												<input type="hidden" name="idPlano" value="${plano.id}" />
												<input type="hidden" name="idCurso"	value="${cursosModeloGratuito.id}" />
												<input type="hidden" name="modalidadeGratuitaDoPlano"	value="${modalidadeGratuitaDoPlano.id}" />
													<th>${cursosModeloGratuito.nome}</th>
													<td>
														<div class="col-md-8 mb-8">
															<input type="number" class="form-control" id="quantidade"
																name="quantidade">
														</div>
													</td>
													<td>
														<div class="col-md-12 mb-5">

															<button class="btn btn-success" type="submit">Inserir</button>

														</div>

													</td>
													


												</tr>
												</form:form>
											</c:if>
										</c:forEach>
									</c:forEach>

								</tbody>
							</table>

							
						</div>
					

				

				</div>

			</div>
		</div>
	</div> <!-- Fim do Modal de Editar titulo e ano -->
<!-- fim de uma modalidade gratuita -->
</c:forEach>