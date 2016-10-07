<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Perfil</title>
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap.min.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/Css/bootstrap/bootstrap-material-design.min.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/ripples.min.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/jsgrid/demos.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/jsgrid/jsgrid.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/jsgrid/theme.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estiloTelas/estiloTelaAnamnese.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value ='https://fonts.googleapis.com/icon?family=Material+Icons'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value ='http://fonts.googleapis.com/css?family=Open+Sans:300,600,400'/>" />
<script src="<c:url value ='/resources/JavaScript/angular/angular.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/jquery/jquery-2.1.4.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/jquery/validate/jquery.validate.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/jquery/validate/jquery.validate.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/material.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/ripples.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/bootstrap.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/jsgrid.core.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/jsgrid.load-indicator.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/jsgrid.load-strategies.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/jsgrid.sort-strategies.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/jsgrid.field.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/jsgrid.validation.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/fields/jsgrid.field.text.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/fields/jsgrid.field.number.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/fields/jsgrid.field.textarea.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/fields/jsgrid.field.select.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/fields/jsgrid.field.checkbox.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/fields/jsgrid.field.control.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/jsgrid/idiomas/pt-br.js' />"></script>
<script src="<c:url value ='/resources/JavaScript/db.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/validarTelas/validarAnamnese.js' />" /></script>


</head>

<body> 

	<div class="navbar navbar-default"> 
		
	
				<div class="col-md-12">
				<div class="col-md-4" id="logo"><img src="<c:url value = '/resources/Imagens/imagensTelas/novologotransp.png' />" /></div>
				<div class="col-md-4" id="titulo"><h1>Anamnese</h1></div>
				<div class="col-md-4" id="botao">
							<a href="/ProjetoTcc/telaPrincipal" id="voltar" class="btn btn-default btn-fab">
								<i class="material-icons">reply</i>
							</a>
						</div>
				</div>
			
			
		
	</div>
	
	<div class="container-fluid col-md-12">
		
		<br>
		<div class="container-fluid col-md-3">
			<!--ESSE E O MENU LATERAL COM AS OPCOES DO FORMULARIO, AQUI VC VAI COLOCAR PARA CHAMAR AS DIVS-->
			<ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
				<li>
					<a type="button" id="btnIdentificacao" href="javascript:void(0)">Identificação</a>
				</li>
				<li>
					<a type="button" id="btnHistoricoFamiliar" href="javascript:void(0)">Histórico Social e Familiar</a></li>
				<li>
					<a type="button" id="btnDadosAntropo" href="javascript:void(0)">Dados Antropométricos </a>
				</li>
				<li>
					<a type="button" id="btnDadosClinicos" href="javascript:void(0)">Dados Clínicos</a>
				</li>
				<li>
					<a type="button" id="btnAtividadeFisica" href="javascript:void(0)">Atividade Física </a>
				</li>
				<li>
					<a type="button" id="btnHistoricoAlimentar" href="javascript:void(0)">Histórico Alimentar Nutricional </a>
				</li>
				<li>
					<a type="button" id="btnExamesBio" href="javascript:void(0)">Exames Bioquímicos </a>
				</li>
				<li>
					<a type="button" id="btnUsoMedicamentos" href="javascript:void(0)">Faz uso de medicamentos? </a>
				</li>
				<li>
					<a type="button" id="btnRecordata" href="javascript:void(0)">Recordatório Habitual </a>
				</li>
				<li>
					<a type="button" id="btnFrequenciaAlimentar" href="javascript:void(0)">Frequência Alimentar </a>
				</li>
			</ul>
		</div>
		<div id="divIdentificacao">
			<!--ESSA Ã‰ A PRIMEIRA ID A SER CHAMADA-->
			<form id="formIdentificacao">
				<fieldset>
					<legend> Identificação </legend>
					<div class="form-group col-md-4">
						<label for="tData"> Data da 1ª Consulta: </label> 
						<input type="date" class="form-control" id="tData" placeholder="dd/mm/aaaa">
					</div>
					<div class="form-group col-md-12">
						<label for="tNome"> Nome: </label> 
						<input type="text" class="form-control" id="tNome">
					</div>
					<div class="form-group col-md-10">
						<label for="tEnd"> Endereço: </label> 
						<input type="text" class="form-control" id="tEnd">
					</div>
					<div class="form-group col-md-2">
						<label for="tNum"> Número: </label> 
						<input type="text" class="form-control" id="tNum">
					</div>
					<div class="form-group col-md-5">
						<label for="tBairro"> Bairro: </label> 
						<input type="text" class="form-control" id="tBairro">
					</div>
					<div class="form-group col-md-5">
						<label for="tCity"> Cidade: </label> 
						<input type="text" class="form-control" id="tCity">
					</div>
					<div class="form-group col-md-2">
						<label for="tUf"> Estado </label> <select class="form-control" id="tUf">
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
					</div>
					<div class="form-group col-md-6">
						<label for="tEmail"> E-mail: </label> 
						<input type="text" class="form-control" id="tEmail">
					</div>
					<div class="form-group col-md-3">
						<label for="tTel"> Telefone residencial: </label> 
						<input type="text" class="form-control" id="tTel" placeholder="( )">
					</div>
					<div class="form-group col-md-3">
						<label for="tCel"> Celular: </label> 
						<input type="text" class="form-control" id="tCel" placeholder="( )">
					</div>
					<div class="form-group col-md-4">
						<label for="tNasc"> Data de Nascimento: </label> 
						<input type="date" class="form-control" id="tNasc" placeholder="dd/mm/aaaa">
					</div>
					<div class="form-group col-md-4">
						<label for="tIdade"> Idade: </label> <input type="number"
							class="form-control" id="tIdade">
					</div>
					<!--Gilberto nessa opÃ§Ã£o, cria um cÃ¡lculo no javascrip para mostrar a idade atraves da data de nascimento inserida anteriormente-->
					<div class="form-group col-md-4">
						<label for="tSexo"> Sexo: </label> 
							<select class="form-control" id="tSexo">
							<option></option>
							<option>Masculino</option>
							<option>Feminino</option>
						</select>
					</div>
					<div class="form-group col-md-12">
						<label for="tMotivo"> Motivo da Consulta: </label> 
						<input type="text" class="form-control" id="tMotivo">
					</div>
					<div class="form-group col-md-12">
						<label for="tObs"> Observações: </label> 
						<input type="text" class="form-control" id="tObs">
					</div>
				</fieldset>
			</form>
		</div>
		<!--AQUI COMEÃ‡A A OUTRA DIV QUE TERA QUE APARECER AO CLICAR NO MENU LATERAL, EM HISTORICO SOCIAL E FAMILIAR, E AUTOMATICAMENTE OCULTAR O FORMULARIO
                        ANTERIOR E SÃ“ EXIBIR NOVAMENTE A CLICAR SOBRE ELE NO MENU-->
		<div id="divHistoricoFamiliar">
			<form id="formHistoricoFamiliar">
				<fieldset>
					<legend> Histórico Social e Familiar </legend>
					<div class="form-group col-md-4">
						<label for="tProfi"> Profissão: </label> 
						<input type="text" class="form-control" id="tProfi">
					</div>
					<div class="form-group col-md-4">
						<label for="tChor"> Carga Horária: </label> 
						<input type="text" class="form-control" id="tChor">
					</div>
					<div class="form-group col-md-4">
						<label for="tEcivil"> Estado Civil: </label> 
						<select class="form-control" id="tEcivil">
							<option></option>
							<option>Solteiro</option>
							<option>Casado</option>
							<option>Viúvo</option>
							<option>Separado</option>
						</select>
					</div>
					<div class="form-group col-md-4">
						<label for="tCfam"> Composição Familiar: </label> 
						<input type="text" class="form-control" id="tCfam">
					</div>
					<div class="form-group col-md-4">
						<label for="tQcomp"> Quem compra os alimentos: </label> 
						<input type="text" class="form-control" id="tQcomp">
					</div>
					<div class="form-group col-md-4">
						<label for="tCompfre"> A compra é feita: </label> 
						<select class="form-control" id="tCompfre">
							<option></option>
							<option>Diariamente</option>
							<option>Semanalmente</option>
							<option>Mensalmente</option>
						</select>
					</div>
					<div class="form-group col-md-4">
						<label for="tPrepara"> Quem prepara as refeições: </label> 
						<input type="text" class="form-control" id="tPrepara">
					</div>
					<div class="form-group col-md-4">
						<label for="tQuemr"> Com quem realiza as refeições: </label> 
						<input type="text" class="form-control" id="tQuemr">
					</div>
					<div class="form-group col-md-4">
						<label for="tBeber"> Faz uso de bebidas alcoÃ³licas? </label> 
						<select class="form-control" id="tBeber">
							<option></option>
							<option>Não</option>
							<option>Sim, uma vez por mês ou menos</option>
							<option>Sim, 2 a 4 vezes por mês</option>
							<option>Sim, 2 a 3 vezes por semana</option>
							<option>Sim, 4 ou mais vezes por semana</option>
						</select>
					</div>
					<div class="form-group col-md-4">
						<label for="tFumar"> Fuma ou já fumou? </label> 
						<select class="form-control" id="tFumar">
							<option></option>
							<option>Não</option>
							<option>Sim, já fumei mas parei</option>
							<option>Sim, até 5 cigarros por dia</option>
							<option>Sim, até 3 maços por semana</option>
							<option>Sim, até 7 maços por semana</option>
							<option>Sim, mais de 7 maços por semana</option>
						</select>
					</div>
				</fieldset>
			</form>
		</div>
		<div id="divDadosAntropo">
			<form id="formDadosAntropo">
				<fieldset>
					<legend> Dados Antropométricos </legend>
					
					<div id="jsGrid"></div>
					
					<div class="form-group col-md-6">
						<label for="tPusual"> Peso usual: </label> 
						<input type="text" class="form-control" id="tPusual">
					</div>
					<div class="form-group col-md-6">
						<label for="tPideal"> Peso ideal: </label> 
						<input type="text" class="form-control" id="tPideal">
					</div>
				</fieldset>
			</form>
		</div>
		
		<div id="divDadosClinicos">
			<form id="formDadosClinicos">
				<fieldset>
					<legend> Dados Clínicos </legend>
					
			<table class="table table-striped table-hover ">
  <thead>
  <tr>
    <th> </th>
    <th> Opção </th>
    <th> Observação</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td> Vômito </td>
    <td> <div class="togglebutton">
          <label>
            <input type="checkbox"> 
          </label></div>
    </td>
    <td><input type="text" size="30"></td>
    
  </tr>
  <tr>
    <td> Náusea </td>
    <td> <div class="togglebutton">
          <label>
            <input type="checkbox"> 
          </label></div>
    </td>
    <td><input type="text" size="30"></td>
  </tr>
  <tr>
    <td> Mastigação </td>
    <td> <div class="togglebutton">
          <label>
            <input type="checkbox"> 
          </label></div>
    </td>
    <td><input type="text" size="30"></td>
  </tr>
  <tr>
    <td> Deglutição </td>
    <td> <div class="togglebutton">
          <label>
            <input type="checkbox"> 
          </label></div>
    </td>
    <td><input type="text" size="30"></td>
  </tr>
  <tr>
    <td> Digestão </td>
    <td> <div class="togglebutton">
          <label>
            <input type="checkbox"> 
          </label></div>
    </td>
    <td><input type="text" size="30"></td>
  </tr>
  <tr>
    <td> Pirose </td>
    <td> <div class="togglebutton">
          <label>
            <input type="checkbox"> 
          </label></div>
    </td>
    <td><input type="text" size="30"></td>
  </tr>
  <tr>
    <td> Refluxo </td>
    <td> <div class="togglebutton">
          <label>
            <input type="checkbox"> 
          </label></div>
    </td>
    <td><input type="text" size="30"></td>
  </tr>
    <tr>
    <td> Diarréia  </td>
    <td> <div class="togglebutton">
          <label>
            <input type="checkbox"> 
          </label></div>
    </td>
    <td><input type="text" size="30"></td>
  </tr>
    <tr>
    <td> Obstipação  </td>
    <td> <div class="togglebutton">
          <label>
            <input type="checkbox"> 
          </label></div>
    </td>
    <td><input type="text" size="30"></td>
  </tr>
    <tr>
    <td> Insônia  </td>
    <td> <div class="togglebutton">
          <label>
            <input type="checkbox"> 
          </label></div>
    </td>
    <td><input type="text" size="30"></td>
  </tr>
    <tr>
    <td> Estresse  </td>
    <td> <div class="togglebutton">
          <label>
            <input type="checkbox"> 
          </label></div>
    </td>
    <td><input type="text" size="30"></td>
  </tr>
    <tr>
    <td> Cansaço  </td>
    <td> <div class="togglebutton">
          <label>
            <input type="checkbox"> 
          </label></div>
    </td>
    <td><input type="text" size="30"></td>
  </tr>
    <tr>
    <td> Ansiedade </td>
    <td> <div class="togglebutton">
          <label>
            <input type="checkbox"> 
          </label></div>
    </td>
    <td><input type="text" size="30"></td>
  </tr>
  </tbody>
</table>		

					<div class="form-group col-md-6">
						<label for="PeleCabelo">  Possui lesões ou problemas na pele, cabelo e unha? </label> 
						<input type="text" class="form-control" id="PeleCabelo">
					</div>
					
					<div class="form-group col-md-6">
						<label for="CirurgiaQuando">   Já passou por algum tipo de cirurgia? Qual? Quando?  </label> 
						<input type="text" class="form-control" id="CirurgiaQuando">
					</div>
					
					<div class="form-group col-md-4">
						<label for="HabIntestinal">  Hábito intestinal: </label> 
						<select class="form-control" id="HabIntestinal">
							<option></option>
							<option> Diário </option>
							<option> Até 3 dias </option>
							<option>  Mais 3 dias </option>
							<option>  Outro </option>
						</select>
						<!-- ESSA DIV É PARA O PACIENTE COLOCAR A OPÇÃO CASO ELE SELECIONE O CAMPO OUTRO DO SELECT -->
						<div id="inputOculto">
  						<input type="text" class="form-control" />
					</div>
					</div>
					
					<div class="form-group col-md-4">
						<label for="ConsFezes">   Consistência das fezes: </label> 
						<select class="form-control" id="ConsFezes">
							<option></option>
							<option> Normal  </option>
							<option> Amolecidas  </option>
							<option>  Duras  </option>
							<option>  Outro </option>
						</select>
						<div id="inputOculto2">
  						<input type="text" class="form-control" />
					</div>
						</div>
						
						<div class="form-group col-md-4">
						<label for="DiureseQuant">    Diurese (Quantidade/Coloração):   </label> 
						<input type="text" class="form-control" id="DiureseQuant">
					</div>
					
						<div class="form-group col-md-12">
						<label for="PossuiPatologia">     Possui alguma patologia? Qual? Desde quando?   </label> 
						<input type="text" class="form-control" id="PossuiPatologia">
					</div>
					<br>
					
					<h4> Antecedentes familiares/Quem:</h4>
					
					<table class="table table-striped table-hover ">
  <thead>
  <tr>
    <th> </th>
    <th> Opção </th>
    <th> Observação</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td> DM  </td>
    <td> <div class="togglebutton">
          <label>
            <input type="checkbox"> 
          </label></div>
    </td>
    <td><input type="text" size="30"></td>
    
  </tr>
  <tr>
    <td> HA </td>
    <td> <div class="togglebutton">
          <label>
            <input type="checkbox"> 
          </label></div>
    </td>
    <td><input type="text" size="30"></td>
  </tr>
  <tr>
    <td> CA </td>
    <td> <div class="togglebutton">
          <label>
            <input type="checkbox"> 
          </label></div>
    </td>
    <td><input type="text" size="30"></td>
  </tr>
    <tr>
    <td> Dislipidemia  </td>
    <td> <div class="togglebutton">
          <label>
            <input type="checkbox"> 
          </label></div>
    </td>
    <td><input type="text" size="30"></td>
  </tr>
    <tr>
    <td> Obesidade  </td>
    <td> <div class="togglebutton">
          <label>
            <input type="checkbox"> 
          </label></div>
    </td>
    <td><input type="text" size="30"></td>
  </tr>
    <tr>
    <td> Magreza </td>
    <td> <div class="togglebutton">
          <label>
            <input type="checkbox"> 
          </label></div>
    </td>
    <td><input type="text" size="30"></td>
  </tr>
    <tr>
    <td> Outros: </td>
    <td> <div class="togglebutton">
          <label>
            <input type="checkbox"> 
          </label></div>
    </td>
    <td><input type="text" size="30"></td>
  </tr>
    </tbody>
</table>
					
					
					
					</fieldset>
				</form>
			</div>
			
			<div id="divAtividadeFisica">
			<form id="formAtividadeFisica">
				<fieldset>
					<legend> Atividade Física </legend>
					
			<div class="form-group col-md-12">
						<label for="TipoAtivFisica">  Tipo de atividade física: </label> 
						<input type="text" class="form-control" id="TipoAtivFisica">
					</div>
					
			<div class="form-group col-md-6">
						<label for="FreqAtiv"> Frequência </label> 
						<input type="text" class="form-control" id="FreqAtiv">
					</div>
					
			<div class="form-group col-md-6">
						<label for="DuracaoAtiv"> Duração </label> 
						<input type="text" class="form-control" id="DuracaoAtiv">
					</div>
					
			<div class="form-group col-md-6">
						<label for="ConsFezes">   Você pratica as atividades: </label> 
						<select class="form-control" id="ConsFezes">
							<option></option>
							<option> Alimentado  </option>
							<option> Jejum  </option>
						</select>
					</div>
					
			<div class="form-group col-md-6">
						<label for="HorarioPref"> Horário preferido:  </label> 
						<input type="text" class="form-control" id="HorarioPref">
					</div>
					
					
					
					
					</fieldset>
				</form>
			</div>
			
			<div id="divHistoricoAlimentar">
			<form id="formHistoricoAlimentar">
				<fieldset>
					<legend> Histórico Alimentar Nutricional </legend>
					
			<div class="form-group col-md-6">
						<label for="IntAlimentar"> Intolerância Alimentar:  </label> 
						<input type="text" class="form-control" id="IntAlimentar">
					</div>
					
			<div class="form-group col-md-6">
						<label for="PrefAlimentar"> Preferência Alimentar:  </label> 
						<input type="text" class="form-control" id="PrefAlimentar">
					</div>
					
			<div class="form-group col-md-6">
						<label for="AltApetite">   Alterações do Apetite:  </label> 
						<select class="form-control" id="AltApetite">
							<option></option>
							<option> Sim  </option>
							<option> Não  </option>
						</select>
						<div id="inputOculto3">
  						<input type="text" class="form-control" placeholder="Desde quando:" />
					</div>
						</div>
						
			<div class="form-group col-md-6">
						<label for="ObesidadePerda"> Fase que iniciou obesidade /perda peso:  </label> 
						<input type="text" class="form-control" id="ObesidadePerda">
					</div>
					
			<div class="form-group col-md-6">
						<label for="DietaEspecial"> Segue alguma dieta especial:  </label> 
						<input type="text" class="form-control" id="DietaEspecial">
					</div>
					
			<div class="form-group col-md-6">
						<label for="QuantRefeicoes"> Quantas refeições faz por dia:  </label> 
						<input type="text" class="form-control" id="QuantRefeicoes">
					</div>
					
			<div class="form-group col-md-4">
						<label for="ConsumoAgua"> Consumo de água:  </label> 
						<input type="text" class="form-control" id="ConsumoAgua">
					</div>
					
			<div class="form-group col-md-4">
						<label for="ConsumoAgua"> Consumo de sal / mês:   </label> 
						<input type="text" class="form-control" id="ConsumoAgua">
					</div>
					
			<div class="form-group col-md-4">
						<label for="ConsumoOleo">  Consumo de óleo / mês:  </label> 
						<input type="text" class="form-control" id="ConsumoOleo">
					</div>
			
			<div class="form-group col-md-6">
						<label for="UsoSuplemento"> Faz uso de suplementos? Qual?  </label> 
						<input type="text" class="form-control" id="UsoSuplemento">
					</div>
					
			<div class="form-group col-md-6">
						<label for="QuemIndicou"> Quem indicou?  </label> 
						<input type="text" class="form-control" id="QuemIndicou">
					</div>
					
					</fieldset>
				</form>
			</div>
			
			<div id="divExamesBio">
			<form id="formExamesBio">
				<fieldset>
					<legend> Exames Bioquímicos  </legend>
					
					<div id="jsGrid2"></div>
					
					
					
					
					</fieldset>
				</form>
			</div>
			
			<div id="divUsoMedicamentos">
			<form id="formUsoMedicamentos">
				<fieldset>
					<legend>  Faz uso de medicamentos?  </legend>
					
					
					<div id="jsGrid3"></div>
					
					
					
					</fieldset>
				</form>
			</div>
			
				<div id="divRecordata">
			<form id="formRecordata">
				<fieldset>
					<legend> Recordatório Habitual  </legend>  
					
					<h4>Desjejum</h4>
					<div class="form-group col-md-4">
						<label for="Desjejum"> Horário: </label> 
						<input type="text" class="form-control" id="Desjejum">
					</div>
					
					<div class="form-group col-md-4">
						<label for="idLocal"> Local: </label> 
						<input type="text" class="form-control" id="idLocal">
					</div>
					
					<div class="form-group col-md-4">
						<label for="idHumor"> Humor: </label> 
						<input type="text" class="form-control" id="idHumor">
					</div>
					
					<div id="jsGrid4"></div>
					<br>
					<h4>Colação</h4>
					<div class="form-group col-md-4">
						<label for="idColacao"> Horário: </label> 
						<input type="text" class="form-control" id="idColacao">
					</div>
					
					<div class="form-group col-md-4">
						<label for="idLocal"> Local: </label> 
						<input type="text" class="form-control" id="idLocal">
					</div>
					
					<div class="form-group col-md-4">
						<label for="idHumor"> Humor: </label> 
						<input type="text" class="form-control" id="idHumor">
					</div>
					
					<div id="jsGrid5"></div>
					
					<br>
					<h4>Almoço</h4>
					<div class="form-group col-md-4">
						<label for="idAlmoco"> Horário: </label> 
						<input type="text" class="form-control" id="idAlmoco">
					</div>
					
					<div class="form-group col-md-4">
						<label for="idLocal"> Local: </label> 
						<input type="text" class="form-control" id="idLocal">
					</div>
					
					<div class="form-group col-md-4">
						<label for="idHumor"> Humor: </label> 
						<input type="text" class="form-control" id="idHumor">
					</div>
					
					<div id="jsGrid6"></div>
					
					<br>
					<h4>Lanche</h4>
					<div class="form-group col-md-4">
						<label for="idLanche"> Horário: </label> 
						<input type="text" class="form-control" id="idLanche">
					</div>
					
					<div class="form-group col-md-4">
						<label for="idLocal"> Local: </label> 
						<input type="text" class="form-control" id="idLocal">
					</div>
					
					<div class="form-group col-md-4">
						<label for="idHumor"> Humor: </label> 
						<input type="text" class="form-control" id="idHumor">
					</div>
					
					<div id="jsGrid7"></div>
					
					<br>
					<h4>Jantar</h4>
					<div class="form-group col-md-4">
						<label for="idJantar"> Horário: </label> 
						<input type="text" class="form-control" id="idJantar">
					</div>
					
					<div class="form-group col-md-4">
						<label for="idLocal"> Local: </label> 
						<input type="text" class="form-control" id="idLocal">
					</div>
					
					<div class="form-group col-md-4">
						<label for="idHumor"> Humor: </label> 
						<input type="text" class="form-control" id="idHumor">
					</div>
					
					<div id="jsGrid8"></div>
					
					<br>
					<h4>Ceia</h4>
					<div class="form-group col-md-4">
						<label for="idCeia"> Horário: </label> 
						<input type="text" class="form-control" id="idCeia">
					</div>
					
					<div class="form-group col-md-4">
						<label for="idLocal"> Local: </label> 
						<input type="text" class="form-control" id="idLocal">
					</div>
					
					<div class="form-group col-md-4">
						<label for="idHumor"> Humor: </label> 
						<input type="text" class="form-control" id="idHumor">
					</div>
					
					<div id="jsGrid9"></div>
					
					<br>
					<h4>Fora de hora</h4>
					<div class="form-group col-md-4">
						<label for="idFdeHora"> Horário: </label> 
						<input type="text" class="form-control" id="idFdeHora">
					</div>
					
					<div class="form-group col-md-4">
						<label for="idLocal"> Local: </label> 
						<input type="text" class="form-control" id="idLocal">
					</div>
					
					<div class="form-group col-md-4">
						<label for="idHumor"> Humor: </label> 
						<input type="text" class="form-control" id="idHumor">
					</div>
					
					<div id="jsGrid10"></div>
					
					
					</fieldset>
				</form>
			</div>
			
				<div id="divFrequenciaAlimentar">
			<form id="formFrequenciaAlimentar">
				<fieldset>
					<legend> Frequência Alimentar   </legend> 
					
					<table class="table table-striped table-hover">
  <thead>
  <tr>
    <th>ALIMENTOS </th>
    <th>OPÇÃO</th>
    <th>PORÇÃO MÉDIA</th>
    
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>Arroz </td>
    <td>
						<select id="idArroz" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Macarrão  </td>
    <td>
						<select id="idMacarrao" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Batata / Mandioca  </td>
    <td>
						<select id="idBatata" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Pão </td>
    <td>
						<select id="idPao" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Pão de queijo </td>
    <td>
						<select id="idPaoQueijo" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Farinhas</td>
    <td>
						<select id="idFarinhas" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Cereal matinal</td>
    <td>
						<select id="idCereal" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Hortaliças cruas </td>
    <td>
						<select id="idHortalicasCruas" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Hortaliças cozidas </td>
    <td>
						<select id="idHortalicasCozidas" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Frutas  </td>
    <td>
						<select id="idFrutas" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Leite Integral</td>
    <td>
						<select id="idLeiteInt" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Leite desnatado </td>
    <td>
						<select id="idLeiteDes" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Iogurte</td>
    <td>
						<select id="idIogurte" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Iogurte desnatado</td>
    <td>
						<select id="idIogurteDes" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Queijos</td>
    <td>
						<select id="idQueijos" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Carne vermelha</td>
    <td>
						<select id="idCarneVermelha" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Embutidos</td>
    <td>
						<select id="idEmbutidos" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Enlatados</td>
    <td>
						<select id="idEnlatados" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Ovos</td>
    <td>
						<select id="idOvos" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Leguminosas</td>
    <td>
						<select id="idLeguminosas" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Margarina comum</td>
    <td>
						<select id="idMargarinaComun" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Margarina light</td>
    <td>
						<select id="idMargarinaLight" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Manteiga</td>
    <td>
						<select id="idManteiga" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Requeijão comum </td>
    <td>
						<select id="idRequijaoComum" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Requeijão light</td>
    <td>
						<select id="idRequeijaoLight" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Maionese comum</td>
    <td>
						<select id="idMaioneseComum" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Maionese light</td>
    <td>
						<select id="idMaioneseLight" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Creme de leite</td>
    <td>
						<select id="idCremeDeLeite" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  <tr>
    <td>Frituras </td>
    <td>
						<select id="idFrituras" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
   <tr>
    <td>Açúcar</td>
    <td>
						<select id="idAcucar" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
   <tr>
    <td>Adoçante  </td>
    <td>
						<select id="idAdocante" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
   <tr>
    <td>Mel</td>
    <td>
						<select id="idMel" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
   <tr>
    <td>Barra de cereal</td>
    <td>
						<select id="idBarraDeCereal" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
   <tr>
    <td>Doces</td>
    <td>
						<select id="idDoces" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
   <tr>
    <td>Bolacha recheada </td>
    <td>
						<select id="idBolachaRecheada" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
   <tr>
    <td>Bolacha/Bolo/Biscoito</td>
    <td>
						<select id="idBolachaBoloBiscoito" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
   <tr>
    <td>Chiclete / Balas</td>
    <td>
						<select id="idChicleteBalas" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
   <tr>
    <td>Chocolate</td>
    <td>
						<select id="idChocolate" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
   <tr>
    <td>Sanduíche / Pizza</td>
    <td>
						<select id="idSanduichePizza" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
   <tr>
    <td>Salgadinhos</td>
    <td>
						<select id="idSalgadinhos" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
   <tr>
    <td>Salgadinho (pacote)</td>
    <td>
						<select id="idSalgadinhoPacote" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
   <tr>
    <td>Refrigerante comum </td>
    <td>
						<select id="idRefrigeranteComum" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
   <tr>
    <td>Refrigerante diet/light </td>
    <td>
						<select id="idRefriLightDiet" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
   <tr>
    <td>Suco natural </td>
    <td>
						<select id="idSucoNatural" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
     <tr>
    <td>Suco artificial</td>
    <td>
						<select id="idSucoArtificial" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
     <tr>
    <td>Café</td>
    <td>
						<select id="idCafe" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
     <tr>
    <td>Chá</td>
    <td>
						<select id="idCha" class="form-control">
							<option></option>
							<option>NULO </option>
							<option>EVENTUAL </option>
							<option>SEMANAL </option>
							<option>DIÁRIA </option>
						</select>
					</td>
	<td><input type="text" class="form-control"></td>
  </tr>
  
  
  
  </tbody>
</table>

					<div class="form-group col-md-12">
						<label for="idDiagnostico"> Diagnóstico Nutricional:  </label> 
						<input type="text" class="form-control" id="idDiagnostico">
					</div>
					
					<div class="form-group col-md-12">
						<label for="idConduta"> Conduta Dietoterápica:  </label> 
						<input type="text" class="form-control" id="idConduta">
					</div> 
					
					
					<div class="form-group col-md-12">
      <label for="textArea">Relato de caso, Orientações Nutricionais e Evolução: </label>

      <div class="col-md-12">
        <textarea class="form-control" rows="10" id="textArea"></textarea>
      </div>
    </div>
					
					
					
					</fieldset>
				</form>
			</div>
	</div>
</body>
</html>