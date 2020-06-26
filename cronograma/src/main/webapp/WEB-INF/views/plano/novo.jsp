<%@ include file="/WEB-INF/views/cabecalhoCoordenador.jsp" %>
<div class="container" align="center">
 <h1 class="h4 mb-3 font-weight-normal">Novo Plano de Metas</h1>

<div class="col-md-8 order-md-1">      
      <form class="needs-validation" novalidate action="inserirnovoplanodemeta" method="post">
       <div class="mb-3">
          <label for="address">T�tulo</label>
          <input type="text" class="form-control" name="titulo" id="titulo" required>
          <div class="invalid-feedback">
           O t�tulo do plano de metas � obrigat�rio
          </div>
        </div>       

        <div class="row">
          <div class="col-md-5 mb-3">
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
              O ano do plano de metas � obrigat�rio
            </div>
          </div>  
          
          
      
        </div>
        <br>
        
        <button class="btn btn-lg btn-primary btn-block col-sm-4" type="submit">Iniciar Plano</button>
      </form>
    </div>
  </div>


</div>
</body>
</html>