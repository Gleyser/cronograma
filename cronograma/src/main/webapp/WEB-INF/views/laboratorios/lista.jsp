<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/cabecalhoInstrutor.jsp" %>

<div class="container" align="center">
<br>
<h5>Cronograma</h5>
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