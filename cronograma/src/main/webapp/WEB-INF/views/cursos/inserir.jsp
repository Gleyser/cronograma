<%@ include file="/WEB-INF/views/cabecalhoCoordenador.jsp" %>
<div class="container" align="center">
 <h1 class="h4 mb-3 font-weight-normal">Inserir novo curso modelo no sistema</h1>
<div class="col-md-8 order-md-1">      
      <form class="needs-validation" novalidate action="salvarcursomodelo" method="post">
       <div class="mb-3">
          <label for="address">Nome</label>
          <input type="text" class="form-control" name="nome" id="nome" required>
          <div class="invalid-feedback">
           O nome do curso é obrigatório
          </div>
        </div>       

        <div class="row">
          <div class="col-md-5 mb-3">
            <label for="country">Modalidade</label>
            <select class="custom-select d-block w-100" name="modalidade" id="modalidade" required>
              <option value="APRENDIZAGEM_BÁSICA">Aprendizagem básica</option>
              <option value="APRENDIZAGEM_TÉCNICA">Aprendizagem técnica</option>
              <option value="HAB_TEC_PAGO">Habilitação técnica paga</option>
              <option value="HAB_TEC_GRATUITA">Habilitação técnica gratuita</option>
              <option value="HAB_TEC_NEM">Habilitação técnica - novo EM</option>
              <option value="HAB_TEC_EAD_GRATUITO">Habilitação técnica gratuita - EAD</option>
              <option value="HAB_TEC_EAD_PAGO">Habilitação técnica paga - EAD</option>               
              
            </select>
            <div class="invalid-feedback">
              Selecione a modalidade
            </div>
          </div>
          
          <div class="col-md-4 mb-3">
            <label for="country">Setor responsável</label>
            <select class="custom-select d-block w-100" name="setor" id="setor" required>
              <option value="ALIMENTOS">Alimentos</option>
              <option value="AUTOMAÇÃO">Automação</option>
              <option value="ELETROELETRÔNICA">Eletroeletrônica</option>
              <option value="GESTÃO">Gestão</option>
              <option value="GRÁFICA">Gráfica</option>
              <option value="REFRIGERAÇÃO">Refrigeração</option>
              <option value="METALMECÂNICA">MetalMecânica</option>
              <option value="TI">TI</option>
                 
              
            </select>
            <div class="invalid-feedback">
              Selecione o setor responsável
            </div>
          </div> 
          
               
          <div class="col-md-3 mb-3">
            <label>Carga horária total</label>
            <input type="text" class="form-control" name="cargaHorariaTotal" id="cargaHorariaTotal" placeholder="" required>
            <div class="invalid-feedback">
              Carga horária total é obrigatório.
            </div>
          </div>  
          
          </div>         
          
        <br>
        
        <button class="btn btn-lg btn-primary btn-block col-sm-3" type="submit">Salvar curso</button>
      </form>
    </div>
  </div>


</div>
</body>
</html>