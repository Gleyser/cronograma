<%@ include file="/WEB-INF/views/cabecalhoCoordenador.jsp" %>
<div class="container" align="center">
 <h1 class="h4 mb-3 font-weight-normal">Cadastro de Unidade Curricular</h1>

<div class="alert alert-success alert-dismissible fade show" role="alert">
  UC cadastrada com sucesso!
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>

<div class="col-md-8 order-md-1">      
      <form class="needs-validation" novalidate action="/cronograma/disciplinas" method="post">
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
              <option value="EducParaTrabalho">EducParaTrabalho</option>
              <option value="Introdutório">Introdutório</option>
              <option value="Específico">Específico</option>
              <option value="Específico_I">Específico_I</option>
              <option value="Específico_II">Específico_II</option>
              <option value="Específico_III">Específico_III</option>
              <option value="Específico_IV">Específico_IV</option>
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