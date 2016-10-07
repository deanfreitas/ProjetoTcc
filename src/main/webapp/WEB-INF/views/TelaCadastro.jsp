<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Cadastro Nutri-Prato</title>
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap.min.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap-material-design.min.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/ripples.min.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estiloTelas/estiloTelaCadastro.css'/>" />
<script src="<c:url value ='/resources/JavaScript/angular/angular.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/jquery/jquery-2.1.4.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/material.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/ripples.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/bootstrap.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/validarTelas/validarCadastro.js' />" /></script>
</head>

<body>
	<header>
		<figure>
			<img src="<c:url value = '/resources/Imagens/imagensTelas/novologotransp.png' />" id="logo" />
		</figure>
	</header>
	<div class="container-fluid col-md-2 hidden-xs"></div>
	<div class="container-fluid col-md-8" id="pagina">
		<div class="jumbotron" id="jumbo">
			<form class="form-inline">
				<fieldset>
					<legend> Dados Pessoais </legend>
					<div class="row">
						<div class="form-group col-md-6">
							<div class="col-md-6">
								<input type="text" class="form-control" id="cNome" name="tNome" size="40" placeholder="Nome Completo" required>
							</div>
						</div>
						<div class="form-group col-md-6">
							<label class="radio-inline"> 
								<input type="radio" name="optradio" id="radioSexo" value="Masculino"> Masculino
							</label> 
							<label class="radio-inline"> 
								<input type="radio" name="optradio" id="radioSexo" value="Feminino"> Feminino 
							</label>
						</div>
					</div>
				</fieldset>
			</form>
			<div class="row">
				
				
			</div>
			
			<div class="row">
				<div class="form-group col-md-6">
					<form class="form-inline">
						<input type="text" class="form-control" name="tResp" id="cResp" size="20" placeholder="Responsavel" />
					</form>
				</div>
				<div class="form-group col-md-6">
					<form class="form-inline">
						<input type="text" class="form-control" name="tCrn" id="cCrn" size="20" placeholder="CRN" />
					</form>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-6">
					<form class="form-inline">
						<input type="email" class="form-control" name="tEmail" id="cEmail" size="20" placeholder="E-mail" data-toggle="tooltip" title="Digite o Email corretamente" required/>
					</form>
				</div>
				<div class="form-group col-md-6">
					<form class="form-inline">
						<input type="password" class="form-control" name="tSenha" id="cSenha" size="20" placeholder="Senha" required/>
					</form>
				</div>
			</div>
			<div class="row" id="botoes">
				<div class="form-group col-md-6" id="salvar">
					<form class="form-inline">
						<!-- Transferir para tela de Login -->
						<a type="button" id="btnSalvarUsuario" class="btn btn-raised btn-success">Salvar</a>
						<!-- Apagar dados -->
						<a type="button" id="btnLimparFormulario" class="btn btn-raised btn-danger">Apagar</a>
						<!-- Alterar dados -->
						<a type="button" id="btnAlterarDados" class="btn btn-raised btn-info" data-toggle="modal" href="#mymodal2">Alterar</a>
					</form>
				</div>
			</div>
			<div class="modal" id="mymodal2">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x—</button>
							<h4 class="modal-title">Digite sua Senha para continuar</h4>
						</div>
						<div class="modal-body">
						<table>
							<tr>
								<td><h4>Senha:</h4></td>
								<td>
									<input  type="password" class="form-control" id="validarSenha" name="senha" size="30"  required />
									<br />
								</td>
							</tr>
						</table>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
							<button type="button" id="verificarSenha" data-dismiss="modal" class="btn btn-primary">OK</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>