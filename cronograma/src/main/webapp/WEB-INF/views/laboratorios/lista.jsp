<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Laboratório</title>
</head>
<body>
<h1>SGL - Lista Laboratórios</h1>
<table>
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
</body>
</html>