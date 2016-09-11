<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="<c:url value ='/resources/JavaScript/angular.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/jquery-2.1.4.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/validarCadastro.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap.min.js' />" /></script>
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estiloCadastro.css' />" />
<title>Cadastro Nutri-Prato</title>
</head>

<body>
	<figure class="logo">
		<img src="<c:url value = '/resources/Imagens/logotransp.png' />">
	</figure>

	<div id="pagina">
		<form id="cAd">
			<fieldset id="dados">
				<legend>DADOS PESSOAIS</legend>
				<p>
					<label for="cNome">NOME:</label> 
					<input type="text" name="tNome" id="cNome" size="58" maxlength="60" placeholder="Nome Completo" />
					
					<label for="cNasc">DATA.NASC:</label> 
					<input type="date" name="tNasc" id="cNasc" placeholder="dd/mm/aaaa" maxlength="8" data-toggle="tooltip" title="Digite uma data valida" />
				</p>
				<p>
					<label for="cEndereco">ENDEREÇO:</label> 
					<input type="text" name="tEndereco" id="cEndereco" size="53" maxlength="60" placeholder="Rua/Est/Av , Nº" /> 
					
					<label for="cBairro">BAIRRO:</label>
					<input type="text" name="tBairro" id="cBairro" size="20" maxlength="40" />
				</p>
				<p>
					<label for="cCep">CEP:</label> 
					<input type="text" name="tCep" id="cCep" size="10" maxlength="8" placeholder="00000-000" /> 
					
					<label for="cCompl">COMPLEMENTO:</label> 
					<input type="text" name="tCompl" id="cCompl" size="18" maxlength="10" placeholder="Casa, Apt, Bloco" /> 
					
					<label for="cCid">CIDADE:</label>
					<input type="text" name="tCid" id="cCid" size="20" maxlength="8" />
				</p>
				<p>
					<label for="cTelr">TEL.RES.:</label> 
					<input type="text" name="tTelr" id="cTelr" size="10" placeholder="0000-0000" maxlength="8"/> 
					
					<label for="cCel">CELULAR:</label> 
					<input type="text" name="tCel" id="cCel" size="10" placeholder="00000-0000" maxlength="9"/> 
					
					<label for="cNat">NATURALIDADE:</label>
					<input type="text" name="tNat" id="cNat" size="12" maxlength="8" />
				</p>
				<p>
					<label for="cProf">PROFISSÃO:</label> 
					<input type="text" name="tProf" id="cProf" size="17" maxlength="20" /> 
					
					<label for="cTelc">TEL.COMERCIAL:</label> 
					<input type="text" name="tTelc" id="cTelc" size="10" placeholder="0000-0000" maxlength="8" />
				</p>

				<p>
					SEXO: <input type="radio" name="tSexo" id="cMasc" />
					<label for="cMasc">MASCULINO</label> 
					<input type="radio" name="tSexo" id="cFem" />
					<label for="cFem">FEMININO</label>

					&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp 
					ESTADO CIVIL: <select name="estCivil">
						<option value="" selected></option>
						<option value="solt">SOLTEIRO(A)</option>
						<option value="cas">CASADO(A)</option>
						<option value="divo">DIVORCIADO(A)</option>
						<option value="viu">VIÚVO(A)</option>
					</select> 
					COR/RAÇA: <select name="raca">
						<option value="" selected></option>
						<option value="bran">BRANCA</option>
						<option value="pret">PRETA</option>
						<option value="pard">PARDA</option>
						<option value="amar">AMARELA</option>
						<option value="indi">INDÍGENA</option>
					</select>
				</p>

				<p>
					<label for="cResp">RESPONSÁVEL:</label> 
					<input type="text" name="tResp" id="cResp" size="52" maxlength="50" /> 
					
					<label for="cCrn">CRN:</label> 
					<input type="text" name="tCrn" id="cCrn" size="10" maxlength="10" />
				</p>
				<p>
					<label for="cRg">R.G:</label> 
					<input type="text" name="tRg" id="cRg" placeholder="00.000.000-00" maxlength="9" data-toggle="tooltip" title="Digite o Rg corretamente" /> 
					
					<label for="cCpf">CPF:</label>
					<input type="text" name="tCpf" id="cCpf" placeholder="000.000.000-00" maxlength="11" data-toggle="tooltip" title="Digite o Cpf corretamente" />
				</p>
			</fieldset>
			<br>
			<fieldset id="acesso">
				<legend>DADOS PARA ACESSO</legend>
				<p>
					<label for="cUsuario">USUÁRIO:</label> 
					<input type="text" name="tUsuario" id="cUsuario" size="40" maxlength="20" placeholder="Apelido" />
				<p>
					<label for="cSenha">SENHA:</label>
					<input type="password" name="tSenha" id="cSenha" size="8" maxlength="8" placeholder="8 dígitos" />
				</p>
				<p>
					<label for="cEmail">E-MAIL:</label>
					<input type="email" name="tEmail" id="cEmail" size="40" maxlength="50" />
				</p>
			</fieldset>
		</form>

		<br> <br>

		<figure class="botao">
			<input type="image" src="<c:url value = '/resources/Imagens/gravar.png' />" />
		</figure>

		<figure class="botao2">
			<input type="image" src="<c:url value = '/resources/Imagens/novocad.png' />" />
		</figure>
	</div>
</body>

</html>
