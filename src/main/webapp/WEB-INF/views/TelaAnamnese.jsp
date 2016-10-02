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
<script src="<c:url value ='/resources/JavaScript/validarTelas/validarAnamnese.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/db.js' />"></script>
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
						<label for="tObs"> Peso usual: </label> 
						<input type="text" class="form-control" id="tPusual">
					</div>
					<div class="form-group col-md-6">
						<label for="tObs"> Peso ideal: </label> 
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
						<label for="tObs">  Possui lesões ou problemas na pele, cabelo e unha? </label> 
						<input type="text" class="form-control" id="PeleCabelo">
					</div>
					
					<div class="form-group col-md-6">
						<label for="tObs">   Já passou por algum tipo de cirurgia? Qual? Quando?  </label> 
						<input type="text" class="form-control" id="CirurgiaQuando">
					</div>
					
					<div class="form-group col-md-4">
						<label for="tFumar">  Hábito intestinal: </label> 
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
						<label for="tFumar">   Consistência das fezes: </label> 
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
						<label for="tObs">    Diurese (Quantidade/Coloração):   </label> 
						<input type="text" class="form-control" id="DiureseQuant">
					</div>
					
						<div class="form-group col-md-12">
						<label for="tObs">     Possui alguma patologia? Qual? Desde quando?   </label> 
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
						<label for="tObs">  Tipo de atividade física: </label> 
						<input type="text" class="form-control" id="TipoAtivFisica">
					</div>
					
			<div class="form-group col-md-6">
						<label for="tObs"> Frequência </label> 
						<input type="text" class="form-control" id="FreqAtiv">
					</div>
					
			<div class="form-group col-md-6">
						<label for="tObs"> Duração </label> 
						<input type="text" class="form-control" id="DuracaoAtiv">
					</div>
					
			<div class="form-group col-md-6">
						<label for="tFumar">   Você pratica as atividades: </label> 
						<select class="form-control" id="ConsFezes">
							<option></option>
							<option> Alimentado  </option>
							<option> Jejum  </option>
						</select>
					</div>
					
			<div class="form-group col-md-6">
						<label for="tObs"> Horário preferido:  </label> 
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
						<label for="tObs"> Intolerância Alimentar:  </label> 
						<input type="text" class="form-control" id="IntAlimentar">
					</div>
					
			<div class="form-group col-md-6">
						<label for="tObs"> Preferência Alimentar:  </label> 
						<input type="text" class="form-control" id="PrefAlimentar">
					</div>
					
			<div class="form-group col-md-6">
						<label for="tFumar">   Alterações do Apetite:  </label> 
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
						<label for="tObs"> Fase que iniciou obesidade /perda peso:  </label> 
						<input type="text" class="form-control" id="ObesidadePerda">
					</div>
					
			<div class="form-group col-md-6">
						<label for="tObs"> Segue alguma dieta especial:  </label> 
						<input type="text" class="form-control" id="DietaEspecial">
					</div>
					
			<div class="form-group col-md-6">
						<label for="tObs"> Quantas refeições faz por dia:  </label> 
						<input type="text" class="form-control" id="QuantRefeicoes">
					</div>
					
			<div class="form-group col-md-4">
						<label for="tObs"> Consumo de água:  </label> 
						<input type="text" class="form-control" id="ConsumoAgua">
					</div>
					
			<div class="form-group col-md-4">
						<label for="tObs"> Consumo de sal / mês:   </label> 
						<input type="text" class="form-control" id="ConsumoSal">
					</div>
					
			<div class="form-group col-md-4">
						<label for="tObs">  Consumo de óleo / mês:  </label> 
						<input type="text" class="form-control" id="ConsumoOleo">
					</div>
			
			<div class="form-group col-md-6">
						<label for="tObs"> Faz uso de suplementos? Qual?  </label> 
						<input type="text" class="form-control" id="UsoSuplemento">
					</div>
					
			<div class="form-group col-md-6">
						<label for="tObs"> Quem indicou?  </label> 
						<input type="text" class="form-control" id="QuemIndicou">
					</div>
					
					</fieldset>
				</form>
			</div>
			
			<div id="divExamesBio">
			<form id="formExamesBio">
				<fieldset>
					<legend> Exames Bioquímicos  </legend>
					
					
					
					
					
					
					</fieldset>
				</form>
			</div>
			
			<div id="divUsoMedicamentos">
			<form id="formUsoMedicamentos">
				<fieldset>
					<legend>  Faz uso de medicamentos?  </legend>
					
					
					
					
					
					
					</fieldset>
				</form>
			</div>
			
				<div id="divRecordata">
			<form id="formRecordata">
				<fieldset>
					<legend> Recordatório Habitual  </legend>  
					
					
					
					
					
					
					</fieldset>
				</form>
			</div>
			
				<div id="divFrequenciaAlimentar">
			<form id="formFrequenciaAlimentar">
				<fieldset>
					<legend> Frequência Alimentar   </legend> 
					
					
					
					
					
					
					</fieldset>
				</form>
			</div>
	</div>
</body>
</html>