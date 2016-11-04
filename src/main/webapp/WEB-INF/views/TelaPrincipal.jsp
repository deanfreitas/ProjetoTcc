<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Início</title>
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap-material-design.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/ripples.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estiloTelas/estiloTelaPrincipal.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='https://fonts.googleapis.com/icon?family=Material+Icons' />" />
<script src="<c:url value ='/resources/JavaScript/angular/angular.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/jquery/jquery-2.1.4.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/material.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/ripples.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/bootstrap.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/validarTelas/validarTelaPrincipal.js' />" /></script>
</head>

<body>
	<div class="container-fluid col-md-12">
		<div class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
						<span class="icon-bar"> </span> <span class="icon-bar"> </span> 
						<span class="icon-bar"> </span>
					</button>
					<a type="button" class="navbar-brand" id="btnTelaPrincipal">Início</a>
				</div>
				<div class="navbar-collapse collapse navbar-responsive-collapse">
					<ul class="nav navbar-nav">
						<!-- Varios botoes -->
						<li class="active"><a type="button" id="btnPerfil" href="">Perfil</a></li>
						<li><a type="button" href="/ProjetoTcc/telaPaciente">Paciente</a></li>
						<li><a type="button" id="btnAlimentos" href="/ProjetoTcc/telaAlimentos">Alimentos</a></li>
						<li><a type="button" href="">Vitaminas</a></li>
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
									<a type="button" id="btnAlterarDados" href="#">Alterar Dados</a>
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
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
						<h4 class="modal-title">Sair</h4>
					</div>
					<div class="modal-body">
						<p>Você tem certeza que deseja sair ?</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Não</button>
						<!-- Voltar para o Login, logaut -->
						<a href="/ProjetoTcc/sairSistema">
							<button type="button" class="btn btn-primary">Sim</button>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid col-md-12">
		<div id="MeuCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#MeuCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#MeuCarousel" data-slide-to="1"></li>
				<li data-target="#MeuCarousel" data-slide-to="2"></li>
				<li data-target="#MeuCarousel" data-slide-to="3"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="<c:url value = '/resources/Imagens/imagensTelas/car3.jpg' />" alt="Legumes" />
				</div>
				<div class="item">
					<img src="<c:url value = '/resources/Imagens/imagensTelas/testecar.jpg' />" alt="Frutas" />
				</div>
				<div class="item">
					<img src="<c:url value = '/resources/Imagens/imagensTelas/maca4.jpg' />" alt="Maçã" />
				</div>
				<div class="item">
					<img src="<c:url value = '/resources/Imagens/imagensTelas/academia.jpg' />" alt="Musculação" />
				</div>
			</div>
			<a class="left carousel-control" href="#MeuCarousel" role="button" data-slide="prev"> 
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> 
			<a class="right carousel-control" href="#MeuCarousel" role="button" data-slide="next"> 
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<div class="container-fluid col-md-12" id="elementos">
		<div class="col-md-4" id="one">
			<div class="jumbotron">
				<h1>Vitaminas</h1>
				<p>Descubra os benefícios de cada uma e os alimentos onde são encontradas</p>
				<p>
					<a class="btn btn-primary btn-lg">Leia mais</a>
				</p>
			</div>
		</div>
		<div class="col-md-4" id="two">
			<div class="jumbotron" id="idIMC">
				<h1>IMC</h1>
				<p>Calcule o seu Índice de Massa Corporal</p>
				<p>
					<a data-toggle="modal" href="#ModalIMC">Saiba mais</a>
				</p>
				
						
			</div>
		</div>
		<div class="col-md-4" id="three">
			<div class="jumbotron">
			<h3>Eventos:</h3>
			<script type="text/javascript">writeCalendar()</script>
			</div>
		</div>
		<div class="modal" id="ModalIMC">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
						<h1 class="modal-title">IMC</h1>
					</div>
					<div class="modal-body">
						<form name="imcForm" id="imcForm" action="#">

<div class="form-group col-md-6">
<input type="text" class="form-control"  id="altura" name="altura" placeholder="Altura" />
</div>

<div class="form-group col-md-6">
<input type="text" class="form-control" id="peso" name="peso" placeholder="Peso"/>
</div>

	<div class="form-group col-md-6">
							<label class="radio-inline"> 
								<input type="radio" name="sexo" id="sexo_0" value="opção"> Masculino
							</label> 
							<label class="radio-inline"> 
								<input type="radio" name="sexo" id="sexo_1" value="opção"> Feminino 
							</label>
						</div>


<p><input name="Enviar" type="submit" class="btn btn-raised btn-default" value="Calcular" onclick="calcula_imc()" />
</p>
</form>
					</div>
					<div class="modal-footer">
					
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>