<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SIGEP - Home</title>
<c:url value="/resources/css" var="cssPath" />
<c:url value="/images" var="images" />
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css" />
<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min.css" />
<style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
        
        
      }
    </style>
</head>
<body>
 <div class="container" align="center">
<img class="mb-4" src="${images}/logo.png" alt="" width="335" height="150">
<h4>Sistema de Informação Gerencial</h4>
<h4> </h4>
<br>
<form class="form-signin" action="inicio" method="post">
  <div class="text-center mb-8">
   
    <h1 class="h4 mb-3 font-weight-normal">Login</h1>
    
  </div>

  <div class="form-label-group col-sm-3" align="center">
    <input type="email" name="email" class="form-control" placeholder="E-mail" required autofocus>
    <label for="inputEmail"></label>
  </div>

  <div class="form-label-group col-sm-3">
    <input type="password" name="senha" class="form-control" placeholder="Senha" required>
    <label for="inputPassword"></label>
  </div>
  
  <button class="btn btn-lg btn-primary btn-block col-sm-3" type="submit">Entrar</button> 
 
</form>

<%@ include file="/WEB-INF/views/rodape.jsp"%>
</div>
</body>
</html>