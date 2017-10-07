<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Diário Alimentar</title>
    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap.min.css' />"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value ='/resources/Css/bootstrap/bootstrap-material-design.min.css' />"/>
    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/ripples.min.css' />"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value ='https://fonts.googleapis.com/icon?family=Material+Icons' />"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value ='/resources/Css/estiloTelas/estiloDiarioAlimentar.css' />"/>
    <script src="<c:url value ='/resources/JavaScript/jquery/jquery-2.1.4.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/bootstrap/material.min.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/bootstrap/ripples.min.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/bootstrap/bootstrap.min.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/validarTelas/validarDiarioAlimentar.js' />"></script>
</head>

<body>
<div class="navbar navbar-default">
    <div class="col-md-12">
        <div class="col-md-4" id="logo">
            <img src="<c:url value = '/resources/Imagens/imagensTelas/novologotransp.png' />"
            />
        </div>
        <div class="col-md-4" id="titulo">
            <h1>Diário Alimentar</h1>
        </div>
        <div class="col-md-4" id="botao">
            <a href="/ProjetoTcc/telaPrincipal" id="voltar" class="btn btn-default btn-fab">
                <i class="material-icons">reply</i>
            </a>
        </div>
    </div>
</div>
<div class="jumbotron">
    <h1>Jumbotron</h1>

    <p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or
        information.</p>

    <p><a class="btn btn-primary btn-lg">Learn more</a></p>
</div>
</body>
</html>