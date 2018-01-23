<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Bem vindo ao nosso gerenciador de empresas! <br>
<c:if test="${not empty respostaUsuario}">
	${respostaUsuario}
</c:if>
<c:if test="${not empty usuarioLogado}">
	${usuarioLogado.email }
</c:if>
<br>
<form action="executa" method="post">
	<input type="hidden" name="tarefa" value="NovaEmpresa">
	Nome empresa<input type="text" name="nome">
	<input type="submit" value="Cadastrar">
</form>

<form METHOD="post" ACTION="executa">
	<input type="hidden" name="tarefa" value="Login">
	<p>E-mail</p>  
	<input type="text" name="email"/><br/><br/>
	
	<p>Senha</p>  
	<input type="password" name="senha"/><br/><br/>
	<input type="submit" name="Enviar" value="Logar"/> 
</form>
<br>
<form action="executa" method="POST">
<input type="hidden" name="tarefa" value="Logout">
	<input type="submit" name="Deslogar" value="Deslogar"/>
</form>


<form action="executa" >
	<input type="hidden" name="tarefa" value="BuscaEmpresa">
	Filtro para busca: <input type="text" name="filtro"><br>
	<input type="submit" value="Buscar"> 
</form>

</body>

</html>