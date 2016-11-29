<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Cadastro Nutri-Prato</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value ='/resources/Css/bootstrap/bootstrap.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value ='/resources/Css/bootstrap/bootstrap-material-design.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value ='/resources/Css/bootstrap/ripples.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value ='/resources/Css/estiloTelas/estiloTelaCadastro.css'/>" />
<script
	src="<c:url value ='/resources/JavaScript/angular/angular.min.js' />" /></script>
<script
	src="<c:url value ='/resources/JavaScript/jquery/jquery-2.1.4.js' />" /></script>
<script
	src="<c:url value ='/resources/JavaScript/bootstrap/material.min.js' />" /></script>
<script
	src="<c:url value ='/resources/JavaScript/bootstrap/ripples.min.js' />" /></script>
<script
	src="<c:url value ='/resources/JavaScript/bootstrap/bootstrap.min.js' />" /></script>
<script
	src="<c:url value ='/resources/JavaScript/validarTelas/validarCadastro.js' />" /></script>
</head>

<body>
	<!-- MODAL COM A OPÇÃO PARA SELECIONAR O TIPO DE CADASTRO -->
	<div class="modal" id="idModalTipoCadastro" data-backdrop="static">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">SELECIONE O TIPO DE CADASTRO:</h4>
				</div>
				<button type="button" class="btn btn-default" id="btnNutri">
					Nutricionista</button>
				<button type="button" class="btn btn-primary" id="btnPaci">
					Paciente</button>
			</div>
		</div>
	</div>
	<!-- O MODAL TERMINA AQUI -->

	<div class="container-fluid col-md-12" id="pagina">
		<div class="col-md-12" id="idLogo">
			<label class="col-md-4"> </label> <img
				src="<c:url value = '/resources/Imagens/imagensTelas/novologotransp2.png' />"
				class="col-md-4 hidden-sm hidden-xs" /> <label class="col-md-4">
			</label>
		</div>
		<!-- DIV COM DADOS COMUNS -->

		<div class="jumbotron col-md-12" id="idDadosComuns">

			<div class="form-group col-md-8">
				<input type="text" class="form-control" id="idNome"
					placeholder="Nome">
			</div>
			<div class="form-group col-md-4">
				<label class="radio-inline"> <input type="radio"
					name="radioSexo" id="radioSexo" value="Masculino"> Masculino
				</label> <label class="radio-inline"> <input type="radio"
					name="radioSexo" id="radioSexo" value="Feminino"> Feminino
				</label>
			</div>
			<div class="form-group col-md-6">
				<input type="email" class="form-control" id="idEmail"
					placeholder="E-mail" data-toggle="tooltip"
					title="Digite o Email corretamente" required />
			</div>
			
			

			<div class="form-group col-md-6">
				<input type="text" class="form-control" id="idApelido"
					placeholder="Apelido" required />
			</div>
			<div class="form-group col-md-6">
				<input type="password" class="form-control" id="idSenha"
					placeholder="Senha" required />
			</div>
			
			<div class="form-group col-md-6">
				<input type="text" class="form-control" id="idCRN" placeholder="CRN">
			</div>
			
		</div>
		
		

		<div class="jumbotron col-md-12" id="idCadPaciente">
			<fieldset>
				<legend> </legend>


			</fieldset>
			<div class="form-group col-md-6">
				<input type="text" class="form-control" id="idResp"
					placeholder="Responsável">
			</div>

		</div>




		<div class="modal" id="mymodal2">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">x—</button>
						<h4 class="modal-title">Digite sua Senha para continuar</h4>
					</div>
					<div class="modal-body">
						<table>
							<tr>
								<td>
									<h4>Senha:</h4>
								</td>
								<td><input type="password" class="form-control"
									id="validarSenha" name="senha" size="30" required /> <br /></td>
							</tr>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" id="cancelarVerificarSenha" class="btn btn-default" data-dismiss="modal">
							Cancelar</button>
						<button type="button" id="verificarSenha" data-dismiss="modal"
							class="btn btn-primary">OK</button>
					</div>
				</div>
			</div>
		</div>

		<div class="jumbotron col-md-8" id="idCadNutricionista">
			<fieldset>
				<legend> </legend>

			</fieldset>
			<div class="form-group col-md-6">
				<input type="text" class="form-control" id="idCPF" placeholder="CPF" data-toggle="tooltip"
					title="Digite o cpf corretamente"
					required />
			</div>
			
			<div class="form-group col-md-6">
				<input type="text" class="form-control" id="idDataNascimento" data-toggle="tooltip" title="Digite a data corretamente"
					placeholder="Data de Nascimento" />
			</div>
			<div class="form-group col-md-6">
				<input type="text" class="form-control" id="idEndereco"
					placeholder="Endereço:" />
			</div>
			<div class="form-group col-md-3">
				<input type="number" class="form-control" id="idNumero"
					placeholder="Nº" />
			</div>
			<div class="form-group col-md-3">
				<input type="text" class="form-control" id="idComplemento"
					placeholder="Complemento:" />
			</div>
			<div class="form-group col-md-4">
				<input type="text" class="form-control" id="idTelefone"
					placeholder="Telefone:" />
			</div>
			<div class="form-group col-md-4">
				<input type="text" class="form-control" id="idCelular"
					placeholder="Celular" />
			</div>
			<div class="form-group col-md-4">
				<input type="text" class="form-control" id="idComercial"
					placeholder="Comercial" />
			</div>
		</div>

		<div class="row col-md-12" id="botoes">
			<label class="col-md-5"> </label>
			<div class="form-group col-md-7" id="salvar">
				<form class="form-inline">
					<!-- Transferir para tela de Login -->
					<a type="button" id="btnSalvarUsuario"
						class="btn btn-raised btn-success">Salvar</a>
					<!-- Apagar dados -->
					<a type="button" id="btnLimparFormulario"
						class="btn btn-raised btn-danger">Apagar</a>
					<!-- Alterar dados -->
					<a type="button" id="btnAlterarDados"
						class="btn btn-raised btn-info" data-toggle="modal"
						href="#mymodal2">Alterar</a>
				</form>
			</div>
			<label class="col-md-4"> </label>
		</div>





	</div>
</body>

</html>
