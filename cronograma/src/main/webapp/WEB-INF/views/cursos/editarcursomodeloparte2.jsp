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
				<div class="invalid-feedback">O nome do curso � obrigat�rio</div>
			</div>

			<div class="row">
				<div class="col-md-5 mb-3">
					<label for="country">Modalidade</label> <select
						class="custom-select d-block w-100" name="modalidade"
						id="modalidade" required>

						<%-- aprendizagem b�sica --%>
						<c:if test="${cursosModelo.modalidade eq 'APRENDIZAGEM_B�SICA'}">
							<option selected value="APRENDIZAGEM_B�SICA">Aprendizagem
								b�sica</option>
						</c:if>

						<c:if test="${cursosModelo.modalidade ne 'APRENDIZAGEM_B�SICA'}">
							<option value="APRENDIZAGEM_B�SICA">Aprendizagem
								b�sica</option>
						</c:if>

						<%-- aprendizagem t�cnica --%>
						<c:if test="${cursosModelo.modalidade eq 'APRENDIZAGEM_T�CNICA'}">
							<option selected value="APRENDIZAGEM_T�CNICA">Aprendizagem
								t�cnica</option>
						</c:if>

						<c:if test="${cursosModelo.modalidade ne 'APRENDIZAGEM_T�CNICA'}">
							<option value="APRENDIZAGEM_T�CNICA">Aprendizagem
								t�cnica</option>
						</c:if>

						<%-- habilita��o t�cnica paga --%>
						<c:if test="${cursosModelo.modalidade eq 'HAB_TEC_PAGO'}">
							<option selected value="HAB_TEC_PAGO">Habilita��o
								t�cnica paga</option>
						</c:if>

						<c:if test="${cursosModelo.modalidade ne 'HAB_TEC_PAGO'}">
							<option value="HAB_TEC_PAGO">Habilita��o
								t�cnica paga</option>
						</c:if>

						<%-- habilita��o t�cnica gratuita --%>
						<c:if test="${cursosModelo.modalidade eq 'HAB_TEC_GRATUITA'}">
							<option selected value="HAB_TEC_GRATUITA">Habilita��o
								t�cnica gratuita</option>
						</c:if>

						<c:if test="${cursosModelo.modalidade ne 'HAB_TEC_GRATUITA'}">
							<option value="HAB_TEC_GRATUITA">Habilita��o
								t�cnica gratuita</option>
						</c:if>
						
						<%-- Habilita��o t�cnica - novo EM --%>
						<c:if test="${cursosModelo.modalidade eq 'HAB_TEC_NEM'}">
							<option selected value="HAB_TEC_NEM">Habilita��o t�cnica - novo EM</option>
						</c:if>

						<c:if test="${cursosModelo.modalidade ne 'HAB_TEC_NEM'}">
							<option value="HAB_TEC_NEM">Habilita��o t�cnica - novo EM</option>
						</c:if>
						
						<%-- Habilita��o t�cnica
							gratuita - EAD --%>
						<c:if test="${cursosModelo.modalidade eq 'HAB_TEC_EAD_GRATUITO'}">
							<option selected value="HAB_TEC_EAD_GRATUITO">Habilita��o t�cnica
							gratuita - EAD</option>
						</c:if>

						<c:if test="${cursosModelo.modalidade ne 'HAB_TEC_EAD_GRATUITO'}">
							<option value="HAB_TEC_EAD_GRATUITO">Habilita��o t�cnica
							gratuita - EAD</option>
						</c:if>
						
						<%-- Habilita��o t�cnica paga
							- EAD --%>
						<c:if test="${cursosModelo.modalidade eq 'HAB_TEC_EAD_PAGO'}">
							<option selected value="HAB_TEC_EAD_PAGO">Habilita��o t�cnica paga
							- EAD</option>
						</c:if>

						<c:if test="${cursosModelo.modalidade ne 'HAB_TEC_EAD_PAGO'}">
							<option value="HAB_TEC_EAD_PAGO">Habilita��o t�cnica paga
							- EAD</option>
						</c:if>						

					</select>
					<div class="invalid-feedback">Selecione a modalidade</div>
				</div>

				<div class="col-md-4 mb-3">
					<label for="country">Setor respons�vel</label> <select
						class="custom-select d-block w-100" name="setor" id="setor"
						required>
						<%-- Alimentos --%>
						<c:if test="${cursosModelo.setor eq 'ALIMENTOS'}">
							<option selected value="ALIMENTOS">Alimentos</option>
						</c:if>

						<c:if test="${cursosModelo.setor ne 'ALIMENTOS'}">
							<option value="ALIMENTOS">Alimentos</option>
						</c:if>
							
						<option value="AUTOMA��O">Automa��o</option>
						<option value="ELETROELETR�NICA">Eletroeletr�nica</option>
						<option value="GEST�O">Gest�o</option>
						<option value="GR�FICA">Gr�fica</option>
						<option value="REFRIGERA��O">Refrigera��o</option>
						<option value="METALMEC�NICA">MetalMec�nica</option>
						<option value="TI">TI</option>


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

			<h1 class="h4 mb-3 font-weight-normal">Remover unidades curriculares do
				curso:</h1>

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
						<th scope="col">Inserirr</th>
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






			<button class="btn btn-lg btn-primary btn-block col-sm-3"
				type="submit">Salvar curso</button>
		</form>
	</div>
</div>