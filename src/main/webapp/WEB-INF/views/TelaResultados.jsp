<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Relatório</title>

<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap-material-design.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/ripples.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estiloTelas/estiloTelaResultados.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estiloTelas/estiloPrint.css' media="print" />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='https://fonts.googleapis.com/icon?family=Material+Icons' />" />
<script src="<c:url value ='/resources/JavaScript/angular/angular.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/jquery/jquery-2.1.4.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/material.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/ripples.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/bootstrap.min.js' />" /></script>


</head>

<body>
    <div class="navbar navbar-default">
        <div class="col-md-12">
            <div class="col-md-4" id="logo">
                <img src="<c:url value = '/resources/Imagens/imagensTelas/novologotransp.png' />"
                                />
            </div>
            <div class="col-md-4" id="titulo">
                <h1>Relatório</h1>
            </div>
            <div class="col-md-4" id="botao">
                <a href="/ProjetoTcc/telaPrincipal" id="voltar" class="btn btn-default btn-fab"> 
                    <i class="material-icons">reply</i>
                </a>
            </div>
        </div>
    </div>
    <div class="container-fluid col-md-12" id="print">
     
        <div class="jumbotron col-md-12" >
        <div class="row">
        <div class="col-md-5" id="logoRelatorio">
                 <img src="<c:url value = '/resources/Imagens/imagensTelas/novologotransp.png' />"
                                />
            </div>

         <div class="col-md-5" id="titulo2">
            <h2>Relatório Médico</h2>
                </div>
        <div class="col-md-2">
                <a  onclick="print();" id="btnPrint" class="btn btn-success">Imprimir</a>
                
        </div>
        </div>
        <br><br>
        <div class="row col-md-12" id="DadosDoPaciente">
           
   <div class="col-md-10">        
  <span class="input-group-addon" id="">NOME:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2"></output>
  </div>
  <div class="col-md-2"> 
  <span class="input-group-addon" id="">IDADE:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2"></output>
   </div>     
      <div class="col-md-3">        
  <span class="input-group-addon" id="">SEXO:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2"></output>
  </div>
      <div class="col-md-3">        
  <span class="input-group-addon" id="">CELULAR:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2"> </output>
  </div>
 <div class="col-md-6">        
  <span class="input-group-addon" id="">E-MAIL:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2"> </output>
  </div>

     <div class="col-md-6">        
  <span class="input-group-addon" id="">FAZ USO DE BEBIDAS ALCOÓLICAS:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2"> </output>
  </div>
     <div class="col-md-6">        
  <span class="input-group-addon" id="">FUMA OU JÁ FUMOU:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2"> </output>
  </div>
       <div class="col-md-4">        
  <span class="input-group-addon" id="">ATIVIDADE FÍSICA:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2"> </output>
  </div>
       <div class="col-md-2">        
  <span class="input-group-addon" id="">PESO:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2"> </output>
  </div>       
    <div class="col-md-6">        
  <span class="input-group-addon" id="">POSSUI PATOLOGIA:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2"> </output>
  </div>
       <div class="col-md-4">        
  <span class="input-group-addon" id="">INTOLERÂNCIA ALIMENTAR:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2"> </output>
  </div>
       <div class="col-md-4">        
  <span class="input-group-addon" id="">SEGUE ALGUMA DIETA:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2"> </output>
  </div>
         <div class="col-md-4">        
  <span class="input-group-addon" id="">SUPLEMENTOS:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2"></output>
  </div>
                 <div class="col-md-12">        
  <span class="input-group-addon" id="">DIAGNÓSTICO NUTRICIONAL:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2"></output> 
  </div>

                     <div class="col-md-12">        
  <span class="input-group-addon" id="">RELATO DE CASO, ORIENTAÇÕES E EVOLUÇÃO:</span>
  <output type="text" class="form-control" rows="10" aria-describedby="sizing-addon2"></output>
  </div>





      </div>
    </div>
</div>
</body>
</html>