<%@ include file="/WEB-INF/views/cabecalhoCoordenador.jsp" %>
<div class="container" align="center">
 <h1 class="h4 mb-3 font-weight-normal">Inserir nova UC modelo no sistema</h1>

<div class="col-md-8 order-md-1">      
      <form class="needs-validation" novalidate action="cadastrarunidadecurricular" method="post">
       <div class="mb-3">
          <label for="address">Nome</label>
          <input type="text" class="form-control" name="nome" id="nome" required>
          <div class="invalid-feedback">
           O nome da UC � obrigat�rio
          </div>
        </div>       

        <div class="row">
          <div class="col-md-5 mb-3">
            <label for="country">M�dulo</label>
            <select class="custom-select d-block w-100" name="modulo" id="modulo" required>
              <option value="B�sico">B�sico</option>
              <option value="EducParaTrabalho">Educ. p/ trabalho</option>
              <option value="Introdut�rio">Introdut�rio</option>
              <option value="Espec�fico">Espec�fico</option>
              <option value="Espec�fico_I">Espec�fico I</option>
              <option value="Espec�fico_II">Espec�fico II</option>
              <option value="Espec�fico_III">Espec�fico III</option>
              <option value="Espec�fico_IV">Espec�fico IV</option>
              <option value="�nico">�nico</option>        
              
            </select>
            <div class="invalid-feedback">
              Selecione o m�dulo
            </div>
          </div>
          <div class="col-md-3 mb-3">
            <label>Carga hor�ria</label>
            <input type="text" class="form-control" name="cargaHoraria" id="cargaHoraria" placeholder="" required>
            <div class="invalid-feedback">
              Carga hor�ria � obrigat�rio.
            </div>
          </div>
          <div class="col-md-4 mb-3">
            <label>N�mero de avalia��es</label>
            <input type="text" class="form-control" name="numAvaliacoes" id="numAvaliacoes" placeholder="" required>
            <div class="invalid-feedback">
              N�mero de avalia��es � obrigat�rio
            </div>
          </div>
        </div>
        <br>
        
        <button class="btn btn-lg btn-primary btn-block col-sm-3" type="submit">Salvar UC</button>
      </form>
    </div>
  </div>


</div>
</body>
</html>