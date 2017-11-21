<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta http-equiv="Content-Language" content="pt-br">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Diário Alimentar</title>
    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap.min.css' />"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value ='/resources/Css/bootstrap/dataTables/dataTables.bootstrap.min.css' />"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value ='/resources/Css/bootstrap/bootstrap-material-design.min.css' />"/>
    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/ripples.min.css' />"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value ='/resources/Css/estiloTelas/estiloDiarioAlimentarHome.css' />"/>
        <link rel="stylesheet" type="text/css"
          href="<c:url value ='/resources/Css/estiloTelas/estiloCalendario.css' />"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value ='https://fonts.googleapis.com/icon?family=Material+Icons' />"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    
    <script src="<c:url value ='/resources/JavaScript/jquery/jquery-2.1.4.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/bootstrap/material.min.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/bootstrap/ripples.min.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/bootstrap/bootstrap.min.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/validarTelas/JsCalendario.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/validarTelas/validarDiarioAlimentarHome.js' />"></script>

</head>

<body>
<div class="navbar navbar-default">
    <div class="col-md-12">
        <div class="col-md-4" id="logo">
            <img src="<c:url value = '/resources/Imagens/imagensTelas/novologotransp.png' />"
            />
        </div>
        <div class="col-md-4" id="titulo">
            <h1>
                Diário Alimentar
            </h1>
        </div>
        <div class="col-md-4" id="botao">
            <a href="/ProjetoTcc/telaPrincipal" id="voltar" class="btn btn-default btn-fab">
                <i class="material-icons">reply</i>
            </a>
        </div>
    </div>
</div>
<div class="container-fluid col-md-12">

    <div class="jumbotron">
       
       <div id='wrap'>

<div id='calendar'></div>

<div style='clear:both'></div>
</div>
                   
        
        
    </div>
</div>
</body>
</html>