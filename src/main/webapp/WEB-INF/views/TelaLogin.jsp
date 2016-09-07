<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>

<html ng-app="validarLoginApp">
<head>
<meta charset="UTF-8">
<script src="<c:url value ='/resources/JavaScript/angular.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/jquery-2.1.4.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/validarLogin.js' />" /></script>
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estiloTelaLogin.css' />" />
<title>Nutri-Prato</title>
</head>

<body>
	<div id="pagina">
		<img src="<c:url value = '/resources/Imagens/logotransp.png' />" />

		<form  id="entrarTelaPrincipal" name="entrarTelaPrincipal" action="TelaQualquer" method="post" ng-controller="validarLogin">
			<table>
				<tr>
					<td>Usuário:</td>
					<td>
						<input class="validarCampoDigitado" type="text" id="usuario" name="usuario" size="30" ng-model="usuario" required />
						<br />
					</td>
				</tr>
				<tr>
					<td>Senha:</td>
					<td>
						<input class="validarCampoDigitado" type="password" id="senha" name="senha" size="30" ng-model="senha" required />
						<br />
					</td>
				</tr>
			</table>
			<br> 
			<figure class="botao1">
				<input type="image" id="btnEntrar" name="btnEntrar" src="<c:url value = '/resources/Imagens/button.png' />" value="entrar" ng-click="btnEntrar()"/>
			</figure>
			
		</form>
		<form method="post" action="TelaCadastro" id="entrarTelaCadastro" name="entrarTelaCadastro">
			<figure class="botao">
				<input type="image" id="btnCadastrar" name="btnCadastrar" src="<c:url value = '/resources/Imagens/button (1).png' />" value="cadastrar"/>
			</figure>
		</form>
		
	</div>
</body>

</html>