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
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap.min.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap-material-design.min.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/ripples.min.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estiloTelaCadastro.css'/>" />
<script src="<c:url value ='/resources/JavaScript/angular.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/jquery-2.1.4.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/material.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/ripples.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/validarCadastro.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap.min.js' />" /></script>
</head>

<body>
	<header>
		<figure>
			<img src="<c:url value = '/resources/Imagens/novologotransp.png' />" id="logo" />
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
				<div class="form-group col-md-4">
					<label for="inputDate" class="col-md-2 control-label"> Data de Nascimento </label>
					<div class="col-md-10">
						<input type="date" class="form-control" id="cData" placeholder="dd/mm/aaaa" maxlength="8" data-toggle="tooltip" title="Digite uma data correta">
					</div>
				</div>
				<div class="container col-md-8">
					<form class="form-inline">
						<div class="form-group ">
							<label for="selectEcivil" class="col-md-4 control-label"> Estado Civil </label>
							<div class="col-md-8">
								<select id="selectEcivil" class="form-control">
									<option></option>
									<option>Solteiro(a)</option>
									<option>Casado(a)</option>
									<option>Divorciado(a)</option>
									<option>Viúvo(a)</option>
								</select>
							</div>
						</div>
						<div class="form-group ">
							<label for="selectRaca" class="col-md-4 control-label"> Cor/Raça </label>
							<div class="col-md-8">
								<select id="selectRaca" class="form-control">
									<option></option>
									<option>Branca</option>
									<option>Preta</option>
									<option>Parda</option>
									<option>Amarela</option>
									<option>Indígena</option>
								</select>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-4">
					<form class="form-inline">
						<input type="text" class="form-control" name="tTel" id="cTel" size="20" placeholder="Telefone" maxlength="10"/>
					</form>
				</div>
				<div class="form-group col-md-4">
					<input type="text" class="form-control" name="tCel" id="cCel" size="20" placeholder="Celular" maxlength="11"/>
				</div>
				<div class="form-group col-md-4">
					<input type="text" class="form-control" name="tCom" id="cCom" size="20" placeholder="Comercial" maxlength="10"/>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-6">
					<form class="form-inline">
						<input type="text" class="form-control" name="tEnd" id="cEnd" size="40" placeholder="Endereço" />
					</form>
				</div>
				<div class="form-group col-md-2">
					<form class="form-inline">
						<input type="text" class="form-control" name="tNum" id="cNum" size="5" placeholder="Numero" />
					</form>
				</div>
				<div class="form-group col-md-4">
					<form class="form-inline">
						<input type="text" class="form-control" name="tCompl" id="cCompl" size="20" placeholder="Complemento" />
					</form>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-4">
					<form class="form-inline">
						<input type="text" class="form-control" name="tBairro" id="cBairro" size="30" placeholder="Bairro" />
					</form>
				</div>
				<div class="form-group col-md-4">
					<form class="form-inline">
						<input type="text" class="form-control" name="tCity" id="cCity" size="30" placeholder="Cidade" />
					</form>
				</div>
				<div class="form-group col-md-4">
					<form class="form-inline">
						<label for="tUf"> Estado </label> <select class="form-control" id="cUf" name="tUf" class="col-md-10">
							<option></option>
							<option>AC</option>
							<option>AL</option>
							<option>AP</option>
							<option>AM</option>
							<option>BA</option>
							<option>CE</option>
							<option>DF</option>
							<option>ES</option>
							<option>GO</option>
							<option>MA</option>
							<option>MT</option>
							<option>MS</option>
							<option>MG</option>
							<option>PR</option>
							<option>PB</option>
							<option>PA</option>
							<option>PE</option>
							<option>PI</option>
							<option>RJ</option>
							<option>RN</option>
							<option>RS</option>
							<option>RO</option>
							<option>RR</option>
							<option>SC</option>
							<option>SE</option>
							<option>SP</option>
							<option>TO</option>
							<option>
						</select>
					</form>
				</div>
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