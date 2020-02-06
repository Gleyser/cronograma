<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css" />
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
<meta charset="ISO-8859-1">
<title>Cadastro de Laboratório</title>
</head>
<body>
<div class="container" align="center">
<img class="mb-4" src="images/logo.png" alt="" width="335" height="150">
<h3>Sistema de Gerenciamento de Laboratórios</h3>
</div>
<div class="container" align="center">
<nav class="navbar navbar-expand-lg navbar-light bg-light" >
   <div class="collapse navbar-collapse" id="navbarNavDropdown" align="center">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="#">Início <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Cronograma</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Fazer reserva</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Solicitar material impresso</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Acompanhar solicitações</a>
      </li>
      
    </ul>
  </div>
</nav>
</div>

<div class="container" align="center">
<br>
<h5>Laboratórios cadastrados</h5>
<table class="table table-bordered table-striped table-hover">
        <tr>
            <td>Nome</td>
            <td>Capacidade</td>            
        </tr>
        
        <c:forEach items="${laboratorios}" var="laboratorio">
        <tr>
            <td>${laboratorio.nome}</td>
            <td>${laboratorio.capacidade}</td>            
        </tr>
    </c:forEach>
    </table>
    </div>
</body>
</html>