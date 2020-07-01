<%@ include file="/WEB-INF/views/cabecalhoCoordenador.jsp" %>
<div class="container" align="center">
 <h1 class="h4 mb-3 font-weight-normal">Definir metas anuais</h1>

<div class="col-md-8 order-md-1">      
      <form class="needs-validation" novalidate action="salvarmetaanual" method="post">
       <div class="col-md-3 mb-5">
            <label for="country">Ano</label>
            <select class="custom-select d-block w-100" name="ano" id="ano" required>
              <option value="2019">2019</option>
              <option value="2020">2020</option>
              <option value="2021">2021</option>
              <option value="2022">2022</option>
              <option value="2023">2023</option>
              <option value="2024">2024</option>
              <option value="2025">2025</option>
              <option value="2026">2026</option>                            
            </select>
            <div class="invalid-feedback">
              O ano do plano de metas é obrigatório
            </div>
          </div>     

        <div class="row">
          
          <div class="col-md-3 mb-3">
            <label>Meta de Matrícula Gratuita</label>
            <input type="text" class="form-control" name="metaMatriculasGratuitas" id="metaMatriculasGratuitas" placeholder="" required>
            <div class="invalid-feedback">
              Meta obrigatória.
            </div>
          </div>
          
          <div class="col-md-3 mb-3">
            <label>Meta de Aluno/Hora Gratuita</label>
            <input type="text" class="form-control" name="metaAlunoHoraGratuitas" id="metaAlunoHoraGratuitas" placeholder="" required>
            <div class="invalid-feedback">
              Meta obrigatória.
            </div>
          </div>
          
          <div class="col-md-3 mb-3">
            <label>Meta de Matrícula <br> Paga</label>
            <input type="text" class="form-control" name="metaMatriculasPagas" id="metaMatriculasPagas" placeholder="" required>
            <div class="invalid-feedback">
              Meta obrigatória.
            </div>
          </div>
          
          <div class="col-md-3 mb-3">
            <label>Meta de Aluno/Hora Paga</label>
            <input type="text" class="form-control" name="metaAlunoHoraPagas" id="metaAlunoHoraPagas" placeholder="" required>
            <div class="invalid-feedback">
              Meta obrigatória.
            </div>
          </div>
          
          
        </div>
        <br>
        
        <button class="btn btn-lg btn-primary btn-block col-sm-3" type="submit">Salvar</button>
      </form>
    </div>
  </div>


</div>
</body>
</html>