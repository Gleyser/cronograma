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
				<div class="invalid-feedback">O nome do curso � obrigat�rio</div>
			</div>

			<div class="row">
				<div class="col-md-5 mb-3">
					<label for="country">Modalidade</label> <select
						class="custom-select d-block w-100" name="modalidade"
						id="modalidade" required>

						<%-- aprendizagem b�sica --%>
						<option value="APRENDIZAGEM_B�SICA"
							${cursosModelo.modalidade eq 'APRENDIZAGEM_B�SICA' ? 'selected':''}>Aprendizagem
							b�sica</option>

						<%-- aprendizagem t�cnica --%>
						<option value="APRENDIZAGEM_T�CNICA"
							${cursosModelo.modalidade eq 'APRENDIZAGEM_T�CNICA' ? 'selected':''}>Aprendizagem
							t�cnica</option>

						<%-- habilita��o t�cnica paga --%>
						<option value="HAB_TEC_PAGO"
							${cursosModelo.modalidade eq 'HAB_TEC_PAGO' ? 'selected':''}>Habilita��o
							t�cnica paga</option>

						<%-- habilita��o t�cnica gratuita --%>
						<option value="HAB_TEC_GRATUITA"
							${cursosModelo.modalidade eq 'HAB_TEC_GRATUITA' ? 'selected':''}>Habilita��o
							t�cnica gratuita</option>

						<%-- Habilita��o t�cnica - novo EM --%>
						<option value="HAB_TEC_NEM"
							${cursosModelo.modalidade eq 'HAB_TEC_NEM' ? 'selected':''}>Habilita��o
							t�cnica - novo EM</option>

						<%-- Habilita��o t�cnica
							gratuita - EAD --%>
						<option value="HAB_TEC_EAD_GRATUITO"
							${cursosModelo.modalidade eq 'HAB_TEC_EAD_GRATUITO' ? 'selected':''}>Habilita��o
							t�cnica gratuita - EAD</option>

						<%-- Habilita��o t�cnica paga
							- EAD --%>
						<option value="HAB_TEC_EAD_PAGO"
							${cursosModelo.modalidade eq 'HAB_TEC_EAD_PAGO' ? 'selected':''}>Habilita��o
							t�cnica paga - EAD</option>

					</select>
					<div class="invalid-feedback">Selecione a modalidade</div>
				</div>

				<div class="col-md-4 mb-3">
					<label for="country">Setor respons�vel</label> <select
						class="custom-select d-block w-100" name="setor" id="setor"
						required>

						<%-- Alimentos --%>
						<%-- habilita��o t�cnica paga --%>
						<option value="ALIMENTOS"
							${cursosModelo.setor eq 'ALIMENTOS' ? 'selected':''}>Alimentos</option>

						<%-- Automa��o --%>
						<option value="AUTOMA��O"
							${cursosModelo.setor eq 'AUTOMA��O' ? 'selected':''}>Automa��o</option>

						<%-- Eletroeletr�nica --%>
						<option value="ELETROELETR�NICA"
							${cursosModelo.setor eq 'ELETROELETR�NICA' ? 'selected':''}>Eletroeletr�nica</option>

						<%-- Gest�o --%>
						<option value="GEST�O"
							${cursosModelo.setor eq 'GEST�O' ? 'selected':''}>Gest�o</option>

						<%-- Gr�fica --%>
						<option value="GR�FICA"
							${cursosModelo.setor eq 'GR�FICA' ? 'selected':''}>Gr�fica</option>

						<%-- Refrigera��o --%>
						<option value="REFRIGERA��O"
							${cursosModelo.setor eq 'REFRIGERA��O' ? 'selected':''}>Refrigera��o</option>

						<%-- MetalMec�nica --%>
						<option value="METALMEC�NICA"
							${cursosModelo.setor eq 'METALMEC�NICA' ? 'selected':''}>MetalMec�nica</option>

						<%-- TI --%>
						<option value="TI" ${cursosModelo.setor eq 'TI' ? 'selected':''}>TI</option>

					</select>
					<div class="invalid-feedback">Selecione o setor respons�vel</div>
				</div>


				<div class="col-md-3 mb-3">
					<label>Carga hor�ria total</label> <input type="text"
						class="form-control" name="cargaHorariaTotal"
						id="cargaHorariaTotal" placeholder=""
						value="${cursosModelo.cargaHorariaTotal}" required>
					<div class="invalid-feedback">Carga hor�ria total �
						obrigat�rio.</div>
				</div>

			</div>

			<br>

			<h1 class="h4 mb-3 font-weight-normal">Remover unidades
				curriculares do curso:</h1>

			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">Nome da UC</th>
						<th scope="col">Carga Hor�ria</th>
						<th scope="col">M�dulo</th>
						<th scope="col">Avalia��es</th>
						<th scope="col">Remover</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Inform�tica Aplicada</th>
						<td>40</td>
						<td>B�sico</td>
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
						<th scope="col">Carga Hor�ria</th>
						<th scope="col">M�dulo</th>
						<th scope="col">Avalia��es</th>
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