<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Vitaminas</title>
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/dataTables.bootstrap.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap-material-design.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/ripples.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estiloTelas/estiloTelaVitamina.css' />" />
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
				<img src="<c:url value = '/resources/Imagens/imagensTelas/novologotransp.png' />" />
			</div>
			<div class="col-md-4" id="titulo">
				<h1>Vitaminas</h1>
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
		<p>As vitaminas s�o subst�ncias que o organismo n�o tem condi��es de produzir e, 
		por isso, precisam fazer parte da dieta alimentar. Suas principais fontes s�o as frutas, 
		verduras e legumes, mas elas tamb�m s�o encontradas na carne, no leite, nos ovos e cereais.</p>
		<div class="row">
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="<c:url value = '/resources/Imagens/imagensTelas/cenoura.jpg' />" alt="cenoura">
      <div class="caption">
        <h3>Vitamina A</h3>
        <p>A vitamina A � importante no crescimento, pois forma ossos e dentes,
         melhora a pele e o cabelo, protege os aparelhos respirat�rio, digestivo
          e urin�rio e tamb�m � importante para a vis�o.</p>
        <p><a href="#" class="btn btn-primary" role="button">Onde encontr�-la?</a></p>
      </div>
    </div>
  </div>
</div>
		
		
		
		
		</div>
	</div>
</body>
</html>