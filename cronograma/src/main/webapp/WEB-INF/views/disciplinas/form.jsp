<%@ include file="/WEB-INF/views/cabecalhoCoordenador.jsp" %>
<div class="container" align="center">
 <h1 class="h4 mb-3 font-weight-normal">Inserir nova UC modelo no sistema</h1>

<div class="col-md-8 order-md-1">      
      <form class="needs-validation" novalidate action="cadastrarunidadecurricular" method="post">
       <div class="mb-3">
          <label for="address">Nome</label>
          <input type="text" class="form-control" name="nome" id="nome" required>
          <div class="invalid-feedback">
           O nome da UC é obrigatório
          </div>
        </div>       

        <div class="row">
          <div class="col-md-5 mb-3">
            <label for="country">Módulo</label>
            <select class="custom-select d-block w-100" name="modulo" id="modulo" required>
              <option value="Básico">Básico</option>
              <option value="EducParaTrabalho">Educ. p/ trabalho</option>
              <option value="Introdutório">Introdutório</option>
              <option value="Específico">Específico</option>
              <option value="Específico_I">Específico I</option>
              <option value="Específico_II">Específico II</option>
              <option value="Específico_III">Específico III</option>
              <option value="Específico_IV">Específico IV</option>
              <option value="Único">Único</option>        
              
            </select>
            <div class="invalid-feedback">
              Selecione o módulo
            </div>
          </div>
          <div class="col-md-3 mb-3">
            <label>Carga horária</label>
            <input type="text" class="form-control" name="cargaHoraria" id="cargaHoraria" placeholder="" required>
            <div class="invalid-feedback">
              Carga horária é obrigatório.
            </div>
          </div>
          <div class="col-md-4 mb-3">
            <label>Número de avaliações</label>
            <input type="text" class="form-control" name="numAvaliacoes" id="numAvaliacoes" placeholder="" required>
            <div class="invalid-feedback">
              Número de avaliações é obrigatório
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