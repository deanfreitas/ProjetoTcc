<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Alimentos</title>
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap-material-design.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/ripples.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estiloTelaAlimentos' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='https://fonts.googleapis.com/icon?family=Material+Icons' />" />
<script src="<c:url value ='/resources/JavaScript/angular.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/jquery-2.1.4.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/material.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/ripples.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/validarAlimentos.js' />" /></script>
</head>

<body>
	<div class="container-fluid col-md-12">
		<div class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
						<span class="icon-bar"> </span> 
						<span class="icon-bar"> </span> 
						<span class="icon-bar"> </span>
					</button>
					<a type="button" class="navbar-brand" id="btnTelaPrincipal" href="/ProjetoTcc/telaPrincipal">Início</a>
				</div>
				<div class="navbar-collapse collapse navbar-responsive-collapse">
					<ul class="nav navbar-nav">
						<!-- Varios Botoes -->
						<li class="active"><a href="javascript:void(0)">Perfil</a></li>
						<li><a type="button" href="javascript:void(0)">Cardápio</a></li>
						<li><a type="button" id="btnAlimentos">Alimentos</a></li>
						<li><a type="button" href="javascript:void(0)">Vitaminas</a></li>
						<li><a type="button" href="javascript:void(0)">Resultados</a></li>
						<li><a type="button" href="javascript:void(0)">Avaliação</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="bootstrap-elements.html" data-target="#" class="dropdown-toggle" data-toggle="dropdown">Ajustes
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li>
								<!-- Ir para a tela de cadastro com os dados preechidos -->
									<a type="button" href="javascript:void(0)">Alterar Dados</a>
								</li>
								<li class="divider"></li>
								<li>
									<a data-toggle="modal" href="#mymodal">Sair</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="modal" id="mymodal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
						<h4 class="modal-title">Sair</h4>
					</div>
					<div class="modal-body">
						<p>Você tem certeza que deseja sair?</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Não</button>
						<!-- Voltar para tela de Login -->
						<a href="/ProjetoTcc/sairSistema">
							<button type="button" class="btn btn-primary">Sim</button>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid col-md-12">
		<div class="jumbotron">
			<h1>Alimentos</h1>
			<p>Tabela de Calorias dos alimentos mais consumidos:</p>
			<table class="table table-striped table-hover ">
				<thead>
					<tr>
						<th></th>
						<th>Alimento</th>
						<th>Quantidade</th>
						<th>Calorias</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>Água de coco verde</td>
						<td>1 copo de 240 ml</td>
						<td>62</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Café com açúcar</td>
						<td>1 xícara de 50 ml</td>
						<td>33</td>
					</tr>
					<tr>
						<td>3</td>
						<td>Café sem açúcar</td>
						<td>1 xícara de 40 ml</td>
						<td>3</td>
					</tr>
					<tr>
						<td>4</td>
						<td>Caldo de cana</td>
						<td>1 copo de 240 ml</td>
						<td>202</td>
					</tr>
					<tr>
						<td>5</td>
						<td>Suco de abacaxi natural</td>
						<td>1 copo de 240 ml</td>
						<td>100</td>
					</tr>
					<tr>
						<td>6</td>
						<td>Suco de acerola natural</td>
						<td>1 copo de 240 ml</td>
						<td>36</td>
					</tr>
					<tr>
						<td>7</td>
						<td>Suco de maçã natural</td>
						<td>1 copo de 240 ml</td>
						<td>154</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>