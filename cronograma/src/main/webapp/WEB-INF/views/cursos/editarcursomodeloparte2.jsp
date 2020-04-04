<%@ include file="/WEB-INF/views/cabecalhoCoordenador.jsp"%>
<div class="container" align="center">
	<h1 class="h4 mb-3 font-weight-normal">Editar curso modelo no
		sistema</h1>

	<div class="col-md-8 order-md-1">
		<form class="needs-validation" novalidate action="salvarcursomodelo"
			method="post">
			<div class="mb-3">
				<label for="address">Nome</label> <input type="text"
					class="form-control" name="nome" id="nome"
					value="${cursosModelo.nome}" required>
				<div class="invalid-feedback">O nome do curso é obrigatório</div>
			</div>

			<div class="row">
				<div class="col-md-5 mb-3">
					<label for="country">Modalidade</label> <select
						class="custom-select d-block w-100" name="modalidade"
						id="modalidade" required>

						<%-- aprendizagem básica --%>
						<c:if test="${cursosModelo.modalidade eq 'APRENDIZAGEM_BÁSICA'}">
							<option selected value="APRENDIZAGEM_BÁSICA">Aprendizagem
								básica</option>
						</c:if>

						<c:if test="${cursosModelo.modalidade ne 'APRENDIZAGEM_BÁSICA'}">
							<option value="APRENDIZAGEM_BÁSICA">Aprendizagem
								básica</option>
						</c:if>

						<%-- aprendizagem técnica --%>
						<c:if test="${cursosModelo.modalidade eq 'APRENDIZAGEM_TÉCNICA'}">
							<option selected value="APRENDIZAGEM_TÉCNICA">Aprendizagem
								técnica</option>
						</c:if>

						<c:if test="${cursosModelo.modalidade ne 'APRENDIZAGEM_TÉCNICA'}">
							<option value="APRENDIZAGEM_TÉCNICA">Aprendizagem
								técnica</option>
						</c:if>

						<%-- habilitação técnica paga --%>
						<c:if test="${cursosModelo.modalidade eq 'HAB_TEC_PAGO'}">
							<option selected value="HAB_TEC_PAGO">Habilitação
								técnica paga</option>
						</c:if>

						<c:if test="${cursosModelo.modalidade ne 'HAB_TEC_PAGO'}">
							<option value="HAB_TEC_PAGO">Habilitação
								técnica paga</option>
						</c:if>

						<%-- habilitação técnica gratuita --%>
						<c:if test="${cursosModelo.modalidade eq 'HAB_TEC_GRATUITA'}">
							<option selected value="HAB_TEC_GRATUITA">Habilitação
								técnica gratuita</option>
						</c:if>

						<c:if test="${cursosModelo.modalidade ne 'HAB_TEC_GRATUITA'}">
							<option value="HAB_TEC_GRATUITA">Habilitação
								técnica gratuita</option>
						</c:if>
						
						<%-- Habilitação técnica - novo EM --%>
						<c:if test="${cursosModelo.modalidade eq 'HAB_TEC_NEM'}">
							<option selected value="HAB_TEC_NEM">Habilitação técnica - novo EM</option>
						</c:if>

						<c:if test="${cursosModelo.modalidade ne 'HAB_TEC_NEM'}">
							<option value="HAB_TEC_NEM">Habilitação técnica - novo EM</option>
						</c:if>
						
						<%-- Habilitação técnica
							gratuita - EAD --%>
						<c:if test="${cursosModelo.modalidade eq 'HAB_TEC_EAD_GRATUITO'}">
							<option selected value="HAB_TEC_EAD_GRATUITO">Habilitação técnica
							gratuita - EAD</option>
						</c:if>

						<c:if test="${cursosModelo.modalidade ne 'HAB_TEC_EAD_GRATUITO'}">
							<option value="HAB_TEC_EAD_GRATUITO">Habilitação técnica
							gratuita - EAD</option>
						</c:if>
						
						<%-- Habilitação técnica paga
							- EAD --%>
						<c:if test="${cursosModelo.modalidade eq 'HAB_TEC_EAD_PAGO'}">
							<option selected value="HAB_TEC_EAD_PAGO">Habilitação técnica paga
							- EAD</option>
						</c:if>

						<c:if test="${cursosModelo.modalidade ne 'HAB_TEC_EAD_PAGO'}">
							<option value="HAB_TEC_EAD_PAGO">Habilitação técnica paga
							- EAD</option>
						</c:if>						

					</select>
					<div class="invalid-feedback">Selecione a modalidade</div>
				</div>

				<div class="col-md-4 mb-3">
					<label for="country">Setor responsável</label> <select
						class="custom-select d-block w-100" name="setor" id="setor"
						required>
						<%-- Alimentos --%>
						<c:if test="${cursosModelo.setor eq 'ALIMENTOS'}">
							<option selected value="ALIMENTOS">Alimentos</option>
						</c:if>

						<c:if test="${cursosModelo.setor ne 'ALIMENTOS'}">
							<option value="ALIMENTOS">Alimentos</option>
						</c:if>
							
						<option value="AUTOMAÇÃO">Automação</option>
						<option value="ELETROELETRÔNICA">Eletroeletrônica</option>
						<option value="GESTÃO">Gestão</option>
						<option value="GRÁFICA">Gráfica</option>
						<option value="REFRIGERAÇÃO">Refrigeração</option>
						<option value="METALMECÂNICA">MetalMecânica</option>
						<option value="TI">TI</option>


					</select>
					<div class="invalid-feedback">Selecione o setor responsável</div>
				</div>


				<div class="col-md-3 mb-3">
					<label>Carga horária total</label> <input type="text"
						class="form-control" name="cargaHorariaTotal"
						id="cargaHorariaTotal" placeholder=""
						value="${cursosModelo.cargaHorariaTotal}" required>
					<div class="invalid-feedback">Carga horária total é
						obrigatório.</div>
				</div>

			</div>

			<br>

			<h1 class="h4 mb-3 font-weight-normal">Remover unidades curriculares do
				curso:</h1>

			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">Nome da UC</th>
						<th scope="col">Carga Horária</th>
						<th scope="col">Módulo</th>
						<th scope="col">Avaliações</th>
						<th scope="col">Remover</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Informática Aplicada</th>
						<td>40</td>
						<td>Básico</td>
						<td>3</td>
						<td><div class="form-group form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1">

							</div></td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>Jacob</td>
						<td>Thornton</td>
						<td>@fat</td>
						<td>@mdo</td>
					</tr>

				</tbody>
			</table>

			<br>

			<h1 class="h4 mb-3 font-weight-normal">Inserir unidades
				curriculares no curso:</h1>

			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">Nome da UC</th>
						<th scope="col">Carga Horária</th>
						<th scope="col">Módulo</th>
						<th scope="col">Avaliações</th>
						<th scope="col">Inserirr</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Informática Aplicada</th>
						<td>40</td>
						<td>Básico</td>
						<td>3</td>
						<td><div class="form-group form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1">

							</div></td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>Jacob</td>
						<td>Thornton</td>
						<td>@fat</td>
						<td>@mdo</td>
					</tr>

				</tbody>
			</table>






			<button class="btn btn-lg btn-primary btn-block col-sm-3"
				type="submit">Salvar curso</button>
		</form>
	</div>
</div>