<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Laborat�rio</title>
</head>
<body>
<form action="/cronograma/laboratorios" method="post">
<h1>SGL - Cadastro de Laborat�rio</h1>
    <div>
        <label>Nome do Laborat�rio</label>
        <input type="text" name="nome" />
    </div>
    
    <div>
        <label>Capacidade</label>
        <input type="text" name="capacidade" />
    </div>
    <button type="submit">Cadastrar</button>
</form>
</body>
</html>