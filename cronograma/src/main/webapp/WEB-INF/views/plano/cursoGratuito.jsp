<c:forEach items="${plano.cursosGratuitos}" var="cursoGratuito">
<c:forEach items="${cursoGratuito.modalidades}" var="modalidadeDoCursoGratuito">
<c:if test="${modalidadeDoCursoGratuito.tipoModalidade eq modalidadeGratuitaDoPlano.tipoModalidade}">
<!-- Um curso -->
<div class="card-body">
	<div class="table-responsive">
		<table class="table table-hover" id="dataTable" width="100%"
			cellspacing="0">
			<thead>
				<tr>
					<th colspan="6">Curso: ${cursoGratuito.nome}</th>
					<!-- rowspan se quiser mesclar linhas -->
						<td style="width:100px"><a href="#" data-toggle="modal" data-target="#editarCurso${cursoGratuito.id}" class="btn btn-primary btn-circle"> <i
							class="fa fa-cog" ></i>
							
							
					</a>
					
						<a href="#" data-toggle="modal" data-target="#removerCurso${cursoGratuito.id}" class="btn btn-danger btn-circle"> <i
							class="fas fa-trash"></i>
					</a></td>
					
						
				</tr>
			</thead>

			<tbody>
				<tr>
					<td colspan="3"><b>Ano, Semestre e Trimestre:</b> ${cursoGratuito.ano}.${cursoGratuito.semestre}.${cursoGratuito.trimestre}
				     </td>						
					<td><b>Dias de aula:</b> 23456SaDo</td>
					<td><b>Turno:</b> ${cursoGratuito.turno.descricao}</td>		
					<td><b>C. Horária Total: </b>${cursoGratuito.cargaHorariaTotal}</td>
					<td><b>C. Horária Anual:</b> 0 </td>
					
					
				</tr>

				<tr>
					
					<td colspan="3"><b>Setor:</b> ${cursoGratuito.setor.descricao}</td>
					<td><b>Matrículas totais: </b>0</td>
					<td><b>Residuais: </b>0</td>
					<td><b>Novas: </b><br> 0</td>
					<td><b>Alunos/hora:</b> 0</td>
					

				</tr>

			</tbody>
		</table>
	</div>


	<!-- Um curso fim -->
	
	
	<!-- Modal para inserir um novo curso -->
		<!-- Modal de Editar titulo, ano e modalidades -->
	<div class="modal fade" id="editarCurso${cursoGratuito.id}" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Editar curso ${cursoGratuito.nome}</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					

				</div>

			</div>
		</div>
	</div> <!-- Fim do Modal de Editar titulo e ano -->
	
    <!-- Fim Modal para inserir um novo curso -->
    
    <!-- Modal para inserir um novo curso -->
		<!-- Modal de Editar titulo, ano e modalidades -->
	<div class="modal fade" id="removerCurso${cursoGratuito.id}" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Você tem certeza?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="removercursogratuitonoplano" method="post">
					<input type="hidden" name="plano" value="${plano}" />
					<input type="hidden" name="idCurso"	value="${cursosModeloGratuito.id}" />
					<input type="hidden" name="modalidadeGratuitaDoPlano"	value="${modalidadeGratuitaDoPlano.id}" />
												
							Ao remover o curso ${cursoGratuito.nome} da modalidade ${modalidadeGratuitaDoPlano.tipoModalidade.descricao} todas as informações serão perdidas!
							
							<div class="modal-footer">				
						<div class="col-md-12 mb-5">

							<button class="btn btn-danger" type="submit">Remover!</button>

						</div>
						</div>

													
													


					</form:form>

				</div>

			</div>
		</div>
	</div> <!-- Fim do Modal de Editar titulo e ano -->
	
    <!-- Fim Modal para inserir um novo curso -->
</div>
</c:if>
</c:forEach>
</c:forEach>
