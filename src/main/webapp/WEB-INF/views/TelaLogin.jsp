<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>


<!DOCTYPE html>
<html lang="pt-br" ng-app="validarLoginApp">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap.min.css'/> "/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value ='/resources/Css/bootstrap/bootstrap-material-design.min.css'/> "/>
    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/ripples.min.css'/> "/>
    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estiloTelas/estiloTelaLogin.css'/> "/>
    <script src="<c:url value ='/resources/JavaScript/jquery/jquery-2.1.4.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/bootstrap/material.min.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/bootstrap/ripples.min.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/bootstrap/bootstrap.min.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/validarTelas/validarLogin.js' />"></script>
</head>

<body>
<div class="container-fluid col-md-12" id="pagina">
    <div id="logo">
        <img src="<c:url value = '/resources/Imagens/imagensTelas/novologotransp.png'  />"
             class="img-responsive center-block"/>
    </div>
    <form class="form-login" ng-controller="validarLogin">
        <h2 class="form-login-heading"></h2>
        <div class="form-group label-floating">
            <label class="control-label" for="focusedInput1">Usuário</label>
            <input class="form-control" id="usuario" name="usuario" type="text" ng-model="usuario" required>
        </div>
        <div class="form-group label-floating">
            <label class="control-label" for="focusedInput1">Senha</label>
            <input class="form-control" id="senha" name="senha" type="password" ng-model="senha" required>
        </div>
        <div class="row" id="botoes">
            <a type="button" class="btn btn-raised btn-primary btn-lg" id="btnEntrar" name="btnEntrar"
               ng-click="btnEntrar()">Entrar</a>
            <a type="button" class="btn btn-raised btn-primary btn-lg" id="btnCadastrar" name="btnCadastrar">Cadastrar-se</a>
        </div>
    </form>
</div>


</body>

</html>