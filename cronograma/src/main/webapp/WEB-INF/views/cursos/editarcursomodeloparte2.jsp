<%@ include file="/WEB-INF/views/cabecalhoCoordenador.jsp"%>
<div class="container" align="center">
	<h1 class="h4 mb-3 font-weight-normal">Editar curso modelo no
		sistema</h1>

	<c:if test="${cadastrado eq true}">

		<div class="alert alert-success alert-dismissible fade show"
			role="alert">
			Curso modelo cadastrado com sucesso!
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>

	</c:if>

	<div class="col-md-8 order-md-1">
		<form class="needs-validation" novalidate action="editarcursomodelo"
			method="post">

			<input type="hidden" name="id" value="${cursosModelo.id}" />

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
						<option value="APRENDIZAGEM_BÁSICA"
							${cursosModelo.modalidade eq 'APRENDIZAGEM_BÁSICA' ? 'selected':''}>Aprendizagem
							básica</option>

						<%-- aprendizagem técnica --%>
						<option value="APRENDIZAGEM_TÉCNICA"
							${cursosModelo.modalidade eq 'APRENDIZAGEM_TÉCNICA' ? 'selected':''}>Aprendizagem
							técnica</option>

						<%-- habilitação técnica paga --%>
						<option value="HAB_TEC_PAGO"
							${cursosModelo.modalidade eq 'HAB_TEC_PAGO' ? 'selected':''}>Habilitação
							técnica paga</option>

						<%-- habilitação técnica gratuita --%>
						<option value="HAB_TEC_GRATUITA"
							${cursosModelo.modalidade eq 'HAB_TEC_GRATUITA' ? 'selected':''}>Habilitação
							técnica gratuita</option>

						<%-- Habilitação técnica - novo EM --%>
						<option value="HAB_TEC_NEM"
							${cursosModelo.modalidade eq 'HAB_TEC_NEM' ? 'selected':''}>Habilitação
							técnica - novo EM</option>

						<%-- Habilitação técnica
							gratuita - EAD --%>
						<option value="HAB_TEC_EAD_GRATUITO"
							${cursosModelo.modalidade eq 'HAB_TEC_EAD_GRATUITO' ? 'selected':''}>Habilitação
							técnica gratuita - EAD</option>

						<%-- Habilitação técnica paga
							- EAD --%>
						<option value="HAB_TEC_EAD_PAGO"
							${cursosModelo.modalidade eq 'HAB_TEC_EAD_PAGO' ? 'selected':''}>Habilitação
							técnica paga - EAD</option>

					</select>
					<div class="invalid-feedback">Selecione a modalidade</div>
				</div>

				<div class="col-md-4 mb-3">
					<label for="country">Setor responsável</label> <select
						class="custom-select d-block w-100" name="setor" id="setor"
						required>

						<%-- Alimentos --%>
						<%-- habilitação técnica paga --%>
						<option value="ALIMENTOS"
							${cursosModelo.setor eq 'ALIMENTOS' ? 'selected':''}>Alimentos</option>

						<%-- Automação --%>
						<option value="AUTOMAÇÃO"
							${cursosModelo.setor eq 'AUTOMAÇÃO' ? 'selected':''}>Automação</option>

						<%-- Eletroeletrônica --%>
						<option value="ELETROELETRÔNICA"
							${cursosModelo.setor eq 'ELETROELETRÔNICA' ? 'selected':''}>Eletroeletrônica</option>

						<%-- Gestão --%>
						<option value="GESTÃO"
							${cursosModelo.setor eq 'GESTÃO' ? 'selected':''}>Gestão</option>

						<%-- Gráfica --%>
						<option value="GRÁFICA"
							${cursosModelo.setor eq 'GRÁFICA' ? 'selected':''}>Gráfica</option>

						<%-- Refrigeração --%>
						<option value="REFRIGERAÇÃO"
							${cursosModelo.setor eq 'REFRIGERAÇÃO' ? 'selected':''}>Refrigeração</option>

						<%-- MetalMecânica --%>
						<option value="METALMECÂNICA"
							${cursosModelo.setor eq 'METALMECÂNICA' ? 'selected':''}>MetalMecânica</option>

						<%-- TI --%>
						<option value="TI" ${cursosModelo.setor eq 'TI' ? 'selected':''}>TI</option>

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

			<h1 class="h4 mb-3 font-weight-normal">Remover unidades
				curriculares do curso:</h1>

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
						<th scope="col">Inserir</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${ucsModelos}" var="uc">
						<tr>
							<th scope="row">${uc.nome}</th>
							<td>${uc.cargaHoraria}</td>
							<td>${uc.modulo}</td>
							<td>${uc.numAvaliacoes}</td>
							<td><div class="form-group form-check">
									<input type="checkbox" class="form-check-input"
										name="inserirIds" value="${uc.id}">

								</div></td>


						</tr>
					</c:forEach>

				</tbody>
			</table>







			<button class="btn btn-lg btn-primary btn-block col-sm-3"
				type="submit">Salvar curso</button>
		</form>
	</div>
</div>