<%@ include file="/WEB-INF/views/cabecalhoCoordenador.jsp" %>
<div class="container" align="center">
 <h1 class="h4 mb-3 font-weight-normal">Inserir novo curso modelo no sistema</h1>
<div class="col-md-8 order-md-1">      
      <form class="needs-validation" novalidate action="salvarcursomodelo" method="post">
       <div class="mb-3">
          <label for="address">Nome</label>
          <input type="text" class="form-control" name="nome" id="nome" required>
          <div class="invalid-feedback">
           O nome do curso � obrigat�rio
          </div>
        </div>       

        <div class="row">
          <div class="col-md-5 mb-3">
            <label for="country">Modalidade</label>
            <select class="custom-select d-block w-100" name="modalidade" id="modalidade" required>
              <option value="APRENDIZAGEM_B�SICA">Aprendizagem b�sica</option>
              <option value="APRENDIZAGEM_T�CNICA">Aprendizagem t�cnica</option>
              <option value="HAB_TEC_PAGO">Habilita��o t�cnica paga</option>
              <option value="HAB_TEC_GRATUITA">Habilita��o t�cnica gratuita</option>
              <option value="HAB_TEC_NEM">Habilita��o t�cnica - novo EM</option>
              <option value="HAB_TEC_EAD_GRATUITO">Habilita��o t�cnica gratuita - EAD</option>
              <option value="HAB_TEC_EAD_PAGO">Habilita��o t�cnica paga - EAD</option>               
              
            </select>
            <div class="invalid-feedback">
              Selecione a modalidade
            </div>
          </div>
          
          <div class="col-md-4 mb-3">
            <label for="country">Setor respons�vel</label>
            <select class="custom-select d-block w-100" name="setor" id="setor" required>
              <option value="ALIMENTOS">Alimentos</option>
              <option value="AUTOMA��O">Automa��o</option>
              <option value="ELETROELETR�NICA">Eletroeletr�nica</option>
              <option value="GEST�O">Gest�o</option>
              <option value="GR�FICA">Gr�fica</option>
              <option value="REFRIGERA��O">Refrigera��o</option>
              <option value="METALMEC�NICA">MetalMec�nica</option>
              <option value="TI">TI</option>
                 
              
            </select>
            <div class="invalid-feedback">
              Selecione o setor respons�vel
            </div>
          </div> 
          
               
          <div class="col-md-3 mb-3">
            <label>Carga hor�ria total</label>
            <input type="text" class="form-control" name="cargaHorariaTotal" id="cargaHorariaTotal" placeholder="" required>
            <div class="invalid-feedback">
              Carga hor�ria total � obrigat�rio.
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