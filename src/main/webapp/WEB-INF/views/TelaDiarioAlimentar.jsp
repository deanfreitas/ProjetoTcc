
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Diário Alimentar</title>


<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/dataTables/dataTables.bootstrap.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap-material-design.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/ripples.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estiloTelas/estiloDiarioAlimentar.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='https://fonts.googleapis.com/icon?family=Material+Icons' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/jsgrid/demos.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/jsgrid/jsgrid.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/jsgrid/theme.css'/>" />
<script src="<c:url value ='/resources/JavaScript/angular/angular.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/jquery/jquery-2.1.4.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/jquery/dataTables/jquery.dataTables.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/dataTables/dataTables.bootstrap.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/material.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/ripples.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/bootstrap.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/jsgrid.core.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/jsgrid.load-indicator.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/jsgrid.load-strategies.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/jsgrid.sort-strategies.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/jsgrid.field.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/jsgrid.validation.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/fields/jsgrid.field.text.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/fields/jsgrid.field.number.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/fields/jsgrid.field.textarea.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/fields/jsgrid.field.select.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/fields/jsgrid.field.checkbox.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/fields/jsgrid.field.control.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/idiomas/pt-br.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/db.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/validarTelas/validarDiarioAlimentar.js' />" /></script>


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
    <div class="container-fluid col-md-12">
    <div class="container" style="margin-top: 20px; margin-bottom: 80px;">
    <div class="row">
        <div class="progress" id="progress1">
            <div class="progress-bar" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 10%;">
            </div>
          
        </div>
    </div>
    <div class="row">
        <div class="row step">
            <div id="div1" class="col-md-2 activestep" onclick="javascript: resetActive(event, 0, 'step-1');">
                <i class="material-icons">free_breakfast</i>
                <p>Desjejum</p>
            </div>
            <div class="col-md-2 " onclick="javascript: resetActive(event, 20, 'step-2');">
                <i class="material-icons">cake</i>
                <p>Colação</p>
            </div>
            <div class="col-md-2" onclick="javascript: resetActive(event, 40, 'step-3');">
                <i class="material-icons">restaurant</i>
                <p>Almoço</p>
            </div>
            <div class="col-md-2" onclick="javascript: resetActive(event, 60, 'step-4');">
                <i class="material-icons">local_pizza</i>
                <p>Lanche</p>
            </div>
            <div class="col-md-2" onclick="javascript: resetActive(event, 80, 'step-5');">
                <i class="material-icons">restaurant_menu</i>
                <p>Jantar</p>
            </div>
            <div id="last" class="col-md-2" onclick="javascript: resetActive(event, 100, 'step-6');">
                <i class="material-icons">airline_seat_flat</i>
                <p>Ceia</p>
            </div>
        </div>
    </div>
    <div class="row setup-content step hiddenStepInfo" id="step-1">
        <div class="col-xs-12">
            <div class="col-md-12 well text-center">
                
					
					<div id="jsGrid4"></div>
            </div>
        </div>
    </div>
    <div class="row setup-content step activeStepInfo" id="step-2">
        <div class="col-xs-12">
            <div class="col-md-12 well text-center">
					
					<div id="jsGrid5"></div>
            </div>
        </div>
    </div>
    <div class="row setup-content step hiddenStepInfo" id="step-3">
        <div class="col-xs-12">
            <div class="col-md-12 well text-center">
					
					<div id="jsGrid6"></div>
            </div>
        </div>
    </div>
    <div class="row setup-content step hiddenStepInfo" id="step-4">
        <div class="col-xs-12">
            <div class="col-md-12 well text-center">
					
					<div id="jsGrid7"></div>
            </div>
        </div>
    </div>
    <div class="row setup-content step hiddenStepInfo" id="step-5">
        <div class="col-xs-12">
            <div class="col-md-12 well text-center">
					
					<div id="jsGrid8"></div>
					
					
            </div>
        </div>
    </div>
    <div class="row setup-content step hiddenStepInfo" id="step-6">
        <div class="col-xs-12">
            <div class="col-md-12 well text-center">
					
					<div id="jsGrid9"></div>
            </div>
        </div>
    </div>
</div>
     
      



    
</div>
</body>
</html>