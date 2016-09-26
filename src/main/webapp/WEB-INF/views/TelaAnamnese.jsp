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
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap.min.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/Css/bootstrap-material-design.min.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/ripples.min.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estiloTelaAnamnese.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value ='https://fonts.googleapis.com/icon?family=Material+Icons'/>" />
<script src="<c:url value ='/resources/JavaScript/angular.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/jquery-2.1.4.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/material.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/ripples.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/validarAnamnese.js' />" /></script>

</head>

<body> 

	<div class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
					<span class="icon-bar"> </span> <span class="icon-bar"> </span> 
					<span class="icon-bar"> </span>
				</button>
				<img src="<c:url value = '/resources/Imagens/novologotransp.png' />" id="logo" />
			</div>
			<div class="navbar-collapse collapse navbar-responsive-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li>
						<h3>Voltar
							<a href="/ProjetoTcc/telaPrincipal" id="voltar" class="btn btn-default btn-fab">
								<i class="material-icons">reply</i>
							</a>
						</h3>
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
					<p>Você tem certeza que deseja sair?</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Não</button>
					<a href="/ProjetoTcc/sairSistema">
						<button type="button" class="btn btn-primary">Sim</button>
					</a>
				</div>
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
					<a href="javascript:void(0)" class="btn btn-info" id="btnAdicionarColunaTabela">Adicionar Data</a>
					<a href="javascript:void(0)" class="btn btn-danger" id="btnApagarColunaTabela">Apagar</a>
					<table class="table table-striped table-hover col-md-8" id="tableDadosAntropometricos">
						<thead>
							<tr>
								<th>Dados <br> Antropométricos </th>
								<th id="colunaCampoData">
									<div class="checkbox"></div>
          							<label>
          				  				<input type="checkbox" id="checkboxData"> Data:
          							</label>
									<input type="text" size="7" placeholder="  /  /    " id="data"/>
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>PA</td>
								<td id="colunaCampoPa">
									<input type="text" size="5" id="pa"/> 
								</td>
							</tr>
							<tr>
								<td>Peso (kg)</td>
								<td>
									<input type="text" size="5" id="peso"/>
								</td>
							</tr>
							<tr>
								<td>Altura (cm)</td>
								<td>
									<input type="text" size="5" id="altura"/> 
								</td>
							</tr>
							<tr>
								<td>IMC</td>
								<td>
									<input type="text" size="5" id="imc"/> 
								</td>
							</tr>
							<tr>
								<td>PCT</td>
								<td>
									<input type="text" size="5" id="pct"/> 
								</td>
							</tr>
							<tr>
								<td>PCB</td>
								<td>
									<input type="text" size="5" id="pcb"/> 
								</td>
							</tr>
							<tr>
								<td>PCSE</td>
								<td>
									<input type="text" size="5" id="pcse"/>
								</td>
							</tr>
							<tr>
								<td>PCPeitoral</td>
								<td>
									<input type="text" size="5" id="peitoral"/>
								</td>
							</tr>
							<tr>
								<td>PCAb</td>
								<td>
									<input type="text" size="5" id="pcab"/>
								</td>
							</tr>
							<tr>
								<td>PCSI</td>
								<td>
									<input type="text" size="5" id="pcsi"/>
								</td>
							</tr>
							<tr>
								<td>PCCoxa</td>
								<td>
									<input type="text" size="5" id="coxa"/>
								</td>
							</tr>
							<tr>
								<td>PCPant</td>
								<td>
									<input type="text" size="5" id="pant"/>
								</td>
							</tr>
							<tr>
								<td>CBraço</td>
								<td>
									<input type="text" size="5" id="braco"/>
								</td>
							</tr>
							<tr>
								<td>CAntebraço</td>
								<td>
									<input type="text" size="5" id="antebraco"/>
								</td>
							</tr>
							<tr>
								<td>CPunho</td>
								<td>
									<input type="text" size="5" id="punho"/>
								</td>
							</tr>
							<tr>
								<td>CTórax</td>
								<td>
									<input type="text" size="5" id="torax"/>
								</td>
							</tr>
							<tr>
								<td>CCintura</td>
								<td>
									<input type="text" size="5" id="cintura"/>
								</td>
							</tr>
							<tr>
								<td>CAbdominal</td>
								<td>
									<input type="text" size="5" id="abdominal"/>
								</td>
							</tr>
							<tr>
								<td>CQuadril</td>
								<td>
									<input type="text" size="5" id="quadril"/>
								</td>
							</tr>
							<tr>
								<td>CCoxa</td>
								<td>
									<input type="text" size="5" id="coxa"/>
								</td>
							</tr>
							<tr>
								<td>CPanturrilha</td>
								<td>
									<input type="text" size="5" id="panturrilha"/>
								</td>
							</tr>
							<tr>
								<td>Compleição</td>
								<td>
									<input type="text" size="5" id=">compleicao"/> 
								</td>
							</tr>
							<tr>
								<td>EM</td>
								<td>
									<input type="text" size="5" id="em"/>
								</td>
							</tr>
							<tr>
								<td>%G</td>
								<td>
									<input type="text" size="5" id="g"/>
								</td>
							</tr>
							<tr>
								<td>%MM</td>
								<td>
									<input type="text" size="5" id="mm"/>
								</td>
							</tr>
						</tbody>
					</table>
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
	</div>
</body>
</html>