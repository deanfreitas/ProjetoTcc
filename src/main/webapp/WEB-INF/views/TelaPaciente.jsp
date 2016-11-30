<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Paciente</title>
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/dataTables/dataTables.bootstrap.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap-material-design.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/ripples.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estiloTelas/estiloTelaPaciente.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='https://fonts.googleapis.com/icon?family=Material+Icons' />" />
<script src="<c:url value ='/resources/JavaScript/angular/angular.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/jquery/jquery-2.1.4.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/jquery/dataTables/jquery.dataTables.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/dataTables/dataTables.bootstrap.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/material.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/ripples.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/bootstrap.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/validarTelas/validarPaciente.js' />" /></script>
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
                                    Paciente
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
	
	<div class="btn-group btn-group-justified btn-group-raised" id="menuPaciente">
  <a class="btn btn-lg btn-success " href="#" id="adicionarPaciente">Adicionar</a>
  <a class="btn btn-lg btn-success" href="#" id="apagarPaciente">Apagar</a>
  <a class="btn btn-lg btn-success" href="#" id="gerarRelatorio">Gerar relatório</a>	
  <a class="btn btn-lg btn-success" href="#" id="telaAcompanhamento">Acompanhamento</a>	
</div>
		<div class="jumbotron">
		
		

	
		
		<table id="pacientes" class="table table-striped table-bordered" cellspacing="0" width="100%">
  <thead>
  <tr>
  	<th></th>
     <th>NOME</th>
    <th>IDADE</th>
    <th>SEXO</th>
  </tr>
  </thead>
  <tbody>
  <!-- O corpo da tabela está sendo renderizada no javaScript -->
  </tbody>
</table>
		</div>
	</div>
	
	
</body>
</html>