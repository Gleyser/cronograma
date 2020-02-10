<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SGL - Sistema de Gerenciamento de Laboratórios</title>
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
<h3>Sistema de Gerenciamento de Laboratórios</h3>
<form class="form-signin">
  <div class="text-center mb-8">
   
    <h1 class="h3 mb-3 font-weight-normal">Login</h1>
    
  </div>

  <div class="form-label-group col-sm-3" align="center">
    <input type="email" id="inputEmail" class="form-control" placeholder="E-mail" required autofocus>
    <label for="inputEmail"></label>
  </div>

  <div class="form-label-group col-sm-3">
    <input type="password" id="inputPassword" class="form-control" placeholder="Senha" required>
    <label for="inputPassword"></label>
  </div>
  <br>
  <button class="btn btn-lg btn-primary btn-block col-sm-3" type="submit">Entrar</button>
  <p class="mt-5 mb-3 text-muted text-center">&copy; SENAI CEP Prof. Stênio Lopes - 2020</p>
</form>

</div>
</body>
</html>