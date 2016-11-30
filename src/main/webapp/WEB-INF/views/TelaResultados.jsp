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
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estiloTelas/estiloPrint.css' />" media="print"/>
<link rel="stylesheet" type="text/css" href="<c:url value ='https://fonts.googleapis.com/icon?family=Material+Icons' />" />
<script src="<c:url value ='/resources/JavaScript/angular/angular.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/jquery/jquery-2.1.4.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/material.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/ripples.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/bootstrap.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/validarTelas/validarTelaResultados.js' />" /></script>


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
                <a  onclick="print();" id="btnPrint" class="btn btn-default btn-fab btn-lg"><i class="material-icons">print</i></a>
                
        </div>
        </div>
        <br><br>
        <div class="row col-md-12" id="DadosDoPaciente">
        <br><br><br>
           
   <div class="col-md-10">        
  <span class="input-group" id="">NOME:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2" id="idNome"></output>
  </div>
  <div class="col-md-2"> 
  <span class="input-group" id="">IDADE:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2" id="idIdade"></output>
   </div>     
      <div class="col-md-3">        
  <span class="input-group" id="">SEXO:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2" id="idSexo"></output>
  </div>
      <div class="col-md-3">        
  <span class="input-group" id="">CELULAR:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2" id="idCelular"> </output>
  </div>
 <div class="col-md-6">        
  <span class="input-group" id="">E-MAIL:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2" id="idEmail"> </output>
  </div>

     <div class="col-md-6">        
  <span class="input-group" id="">FAZ USO DE BEBIDAS ALCOÓLICAS:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2" id="idBebidasAlcoolicas"> </output>
  </div>
     <div class="col-md-6">        
  <span class="input-group" id="">FUMA OU JÁ FUMOU:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2" id="idFuma"> </output>
  </div>
       <div class="col-md-4">        
  <span class="input-group" id="">ATIVIDADE FÍSICA:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2" id="idAtividadeFisica"> </output>
  </div>
      
    <div class="col-md-6">        
  <span class="input-group" id="">POSSUI PATOLOGIA:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2" id="idPossuiPatologia"> </output>
  </div>
       <div class="col-md-4">        
  <span class="input-group" id="">INTOLERÂNCIA ALIMENTAR:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2" id="idIntoleranciaAlimentar"> </output>
  </div>
       <div class="col-md-4">        
  <span class="input-group" id="">SEGUE ALGUMA DIETA:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2" id="idDieta"> </output>
  </div>
         <div class="col-md-4">        
  <span class="input-group" id="">SUPLEMENTOS:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2" id="idSuplementos"></output>
  </div>
                 <div class="col-md-12">        
  <span class="input-group" id="">DIAGNÓSTICO NUTRICIONAL:</span>
  <output type="text" class="form-control" aria-describedby="sizing-addon2" id="idDiagnosticoNutricional"></output> 
  </div>

                     <div class="col-md-12">        
  <span class="input-group" id="">RELATO DE CASO, ORIENTAÇÕES E EVOLUÇÃO:</span>
  <output type="text" class="form-control" rows="20" aria-describedby="sizing-addon2" id="idRelatoCasoOrientacoesEvolucao"></output>
  </div>





      </div>
    </div>
</div>
</body>
</html>