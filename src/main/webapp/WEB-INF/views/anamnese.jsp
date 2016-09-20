<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>


<html lang="pt-br">
    
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head
        content must come *after* these tags -->
        <title>
            Perfil
        </title>
        <!-- Bootstrap -->
		<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap.min.css' />" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/resources/Css/bootstrap-material-design.min.css' />" />
		<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/ripples.min.css' />" />
		<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estiloAnamnese.css' />" />
		<link rel="stylesheet" type="text/css" href="<c:url value ='https://fonts.googleapis.com/icon?family=Material+Icons' />" />
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media
        queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file://
        -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js">
                                    
            </script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js">
                                    
            </script>
        <![endif]-->
    
	
	
	</head>
    
    <body>
        <div class="container-fluid col-md-12">
            <div class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                            <span class="icon-bar">
                            </span>
                            <span class="icon-bar">
                            </span>
                            <span class="icon-bar">
                            </span>
                        </button>
                        <a class="navbar-brand" href="tela1.html">Início</a>
                    </div>
                    <div class="navbar-collapse collapse navbar-responsive-collapse">
                        <ul class="nav navbar-nav">
                            <li class="active">
                                <a href="anamnese.html">Perfil</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">Cardápio</a>
                            </li>
                            <li>
                                <a href="alimentos.html">Alimentos</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">Vitaminas</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">Resultados</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">Avaliação</a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a href="bootstrap-elements.html" data-target="#" class="dropdown-toggle"
                                data-toggle="dropdown">Ajustes
            <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="javascript:void(0)">Alterar senha</a>
                                    </li>
                                    <li class="divider">
                                    </li>
                                    <li>
                                        <a data-toggle="modal" href="#mymodal">Sair</a>
                                    </li>
                                </ul>
                            </li>
                            </li>
                        </ul>
                    </div> 
	
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
        <a href="index.html"><button type="button" class="btn btn-primary" >Sim</button></a>
      </div>
    </div>
  </div>
</div>
        <div class="container-fluid col-md-12">
            <div class="jumbotron">
                <h2>
                    Anamnese Alimentar
                </h2>
                <br>
                <div class="container-fluid col-md-4">
                    <!--ESSE E O MENU LATERAL COM AS OPCOES DO FORMULARIO, AQUI VC VAI COLOCAR
                    PARA CHAMAR AS DIVS-->
                    <ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
					
                        <li onclick="mudar('ident')">
                            <a href="javascript:void(0)">Identificação</a>
                        </li>
                        <li onclick="mudar('hist')">
                            <a href="javascript:void(0)">Histórico Social e Familiar</a>
                        </li>
                        <li>
                            <a href="javascript:void(0)">Dados Antropométricos </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)">Dados Clínicos</a>
                        </li>
                        <li>
                            <a href="javascript:void(0)">Atividade Física </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)">Histórico Alimentar Nutricional </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)">Exames Bioquímicos </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)">Faz uso de medicamentos?  </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)">Recordatório Habitual   </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)">Freqüência Alimentar  </a>
                        </li>
                    </ul>
                </div>
				
                <div id="ident">
                    <!--ESSA É A PRIMEIRA ID A SER CHAMADA-->
                    <form>
                        <fieldset>
                            <legend>
                                Identificação
                            </legend>
                            <div class="form-group col-md-4">
                                <label for="tData">
                                    Data da 1ª Consulta:
                                </label>
                                <input type="date" class="form-control" id="tData" placeholder="dd/mm/aaaa">
                            </div>
                            <div class="form-group col-md-12">
                                <label for="tNome">
                                    Nome:
                                </label>
                                <input type="text" class="form-control" id="tNome">
                            </div>
                            <div class="form-group col-md-10">
                                <label for="tEnd">
                                    Endereço:
                                </label>
                                <input type="text" class="form-control" id="tEnd">
                            </div>
                            <div class="form-group col-md-2">
                                <label for="tNum">
                                    Número:
                                </label>
                                <input type="text" class="form-control" id="tNum">
                            </div>
                            <div class="form-group col-md-5">
                                <label for="tBairro">
                                    Bairro:
                                </label>
                                <input type="text" class="form-control" id="tBairro">
                            </div>
                            <div class="form-group col-md-5">
                                <label for="tCity">
                                    Cidade:
                                </label>
                                <input type="text" class="form-control" id="tCity">
                            </div>
                            <div class="form-group col-md-2">
                                <label for="tUf">
                                    Estado
                                </label>
                                <select class="form-control" id="tUf">
                                    <option>
                                    </option>
                                    <option>
                                        AC
                                    </option>
                                    <option>
                                        AL
                                    </option>
                                    <option>
                                        AP
                                    </option>
                                    <option>
                                        AM
                                    </option>
                                    <option>
                                        BA
                                    </option>
                                    <option>
                                        CE
                                    </option>
                                    <option>
                                        DF
                                    </option>
                                    <option>
                                        ES
                                    </option>
                                    <option>
                                        GO
                                    </option>
                                    <option>
                                        MA
                                    </option>
                                    <option>
                                        MT
                                    </option>
                                    <option>
                                        MS
                                    </option>
                                    <option>
                                        MG
                                    </option>
                                    <option>
                                        PR
                                    </option>
                                    <option>
                                        PB
                                    </option>
                                    <option>
                                        PA
                                    </option>
                                    <option>
                                        PE
                                    </option>
                                    <option>
                                        PI
                                    </option>
                                    <option>
                                        RJ
                                    </option>
                                    <option>
                                        RN
                                    </option>
                                    <option>
                                        RS
                                    </option>
                                    <option>
                                        RO
                                    </option>
                                    <option>
                                        RR
                                    </option>
                                    <option>
                                        SC
                                    </option>
                                    <option>
                                        SE
                                    </option>
                                    <option>
                                        SP
                                    </option>
                                    <option>
                                        TO
                                    </option>
                                    <option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="tEmail">
                                    E-mail:
                                </label>
                                <input type="text" class="form-control" id="tEmail">
                            </div>
                            <div class="form-group col-md-3">
                                <label for="tTel">
                                    Telefone residencial:
                                </label>
                                <input type="text" class="form-control" id="tTel" placeholder="( )">
                            </div>
                            <div class="form-group col-md-3">
                                <label for="tCel">
                                    Celular:
                                </label>
                                <input type="text" class="form-control" id="tCel" placeholder="( )">
                            </div>
                            <div class="form-group col-md-4">
                                <label for="tNasc">
                                    Data de Nascimento:
                                </label>
                                <input type="date" class="form-control" id="tNasc" placeholder="dd/mm/aaaa">
                            </div>
                            <div class="form-group col-md-4">
                                <label for="tIdade">
                                    Idade:
                                </label>
                                <input type="number" class="form-control" id="tIdade">
                            </div>
                            <!--Gilberto nessa opção, cria um cálculo no javascrip para mostrar a
                            idade atraves da data de nascimento inserida anteriormente-->
                            <div class="form-group col-md-4">
                                <label for="tSexo">
                                    Sexo:
                                </label>
                                <select class="form-control" id="tSexo">
                                    <option>
                                    </option>
                                    <option>
                                        Masculino
                                    </option>
                                    <option>
                                        Feminino
                                    </option>
                                </select>
                            </div>
                            <div class="form-group col-md-12">
                                <label for="tMotivo">
                                    Motivo da Consulta:
                                </label>
                                <input type="text" class="form-control" id="tMotivo">
                            </div>
                            <div class="form-group col-md-12">
                                <label for="tObs">
                                    Observações:
                                </label>
                                <input type="text" class="form-control" id="tObs">
                            </div>
							</form>
							</fieldset>
							</div>
                            <!--AQUI COMEÇA A OUTRA DIV QUE TERA QUE APARECER AO CLICAR NO MENU LATERAL,
                            EM HISTORICO SOCIAL E FAMILIAR, E AUTOMATICAMENTE OCULTAR O FORMULARIO
                            ANTERIOR E SÓ EXIBIR NOVAMENTE A CLICAR SOBRE ELE NO MENU-->
							
                            <div id="hist">
                                <form>
								<fieldset>
                                    <legend>
                                        Histórico Social e Familiar
                                    </legend>
                                    <div class="form-group col-md-4">
                                        <label for="tProfi">
                                            Profissão:
                                        </label>
                                        <input type="text" class="form-control" id="tProfi">
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="tChor">
                                            Carga Horária:
                                        </label>
                                        <input type="text" class="form-control" id="tChor">
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="tEcivil">
                                            Estado Civil:
                                        </label>
                                        <select class="form-control" id="tEcivil">
                                            <option>
                                            </option>
                                            <option>
                                                Solteiro
                                            </option>
                                            <option>
                                                Casado
                                            </option>
                                            <option>
                                                Viúvo
                                            </option>
                                            <option>
                                                Separado
                                            </option>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="tCfam">
                                            Composição Familiar:
                                        </label>
                                        <input type="text" class="form-control" id="tCfam">
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="tQcomp">
                                            Quem compra os alimentos:
                                        </label>
                                        <input type="text" class="form-control" id="tQcomp">
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="tCompfre">
                                            A compra é feita:
                                        </label>
                                        <select class="form-control" id="tCompfre">
                                            <option>
                                            </option>
                                            <option>
                                                Diariamente
                                            </option>
                                            <option>
                                                Semanalmente
                                            </option>
                                            <option>
                                                Mensalmente
                                            </option>
                                        </select>
                                    </div>
									
									<div class="form-group col-md-4">
                                        <label for="tPrepara">
                                            Quem prepara as refeições:
                                        </label>
                                        <input type="text" class="form-control" id="tPrepara">
                                    </div>
									
									<div class="form-group col-md-4">
                                        <label for="tQuemr">
                                            Com quem realiza as refeições: 
                                        </label>
                                        <input type="text" class="form-control" id="tQuemr">
                                    </div>
									
									<div class="form-group col-md-4">
                                        <label for="tBeber">
                                            Faz uso de bebidas alcoólicas?
                                        </label>
                                        <select class="form-control" id="tBeber">
                                            <option>
                                            </option>
                                            <option>
                                                Não
                                            </option>
                                            <option>
                                                Sim, uma vez por mês ou menos
                                            </option>
                                            <option>
                                                Sim, 2 a 4 vezes por mês
                                            </option>
											<option>
												Sim, 2 a 3 vezes por semana
											</option>
											<option>
												Sim, 4 ou mais vezes por semana
											</option>
                                        </select>
                                    </div>
									
									<div class="form-group col-md-4">
                                        <label for="tFumar">
                                            Fuma ou já fumou?
                                        </label>
                                        <select class="form-control" id="tFumar">
                                            <option>
                                            </option>
                                            <option>
                                                Não
                                            </option>
											<option>
                                                Sim, já fumei mas parei
                                            </option>
                                            <option>
                                                Sim, até 5 cigarros por dia
                                            </option>
                                            <option>
                                                Sim, até 3 maços por semana
                                            </option>
											<option>
												Sim, até 7 maços por semana
											</option>
											<option>
												Sim, mais de 7 maços por semana 
											</option>
                                        </select>
                                    </div>
									
									
										</form>
								</fieldset>	
                            </div>
							
							<div id="DadosAnt">
								<form>
									<fieldset>
										<legend>Dados Antropométricos </legend>
							
							<table class="table table-striped table-hover ">
  <thead>
  <tr>
    <th>Dados Antropométricos</th>
    <th><input type="date" class="form-control"></input></th>
    <th><input type="date" class="form-control"></input></th>
    <th><input type="date" class="form-control"></input></th>
	<th><input type="date" class="form-control"></input></th>
	<th><input type="date" class="form-control"></input></th>
	<th><input type="date" class="form-control"></input></th>
	</tr>
  </thead>
  <tbody>
  <tr>
    <td>PA</td>
    <td><input type="text" class="form-control" size="10"></input></td>
    <td></td>
    <td></td>
	<td></td>
	<td></td>
  </tr>
  <tr>
    <td>2</td>
    <td>Column content</td>
    <td>Column content</td>
    <td>Column content</td>
  </tr>
  <tr>
    <td>3</td>
    <td>Column content</td>
    <td>Column content</td>
    <td>Column content</td>
  </tr>
  <tr>
    <td>4</td>
    <td>Column content</td>
    <td>Column content</td>
    <td>Column content</td>
  </tr>
  <tr>
    <td>5</td>
    <td>Column content</td>
    <td>Column content</td>
    <td>Column content</td>
  </tr>
  <tr>
    <td>6</td>
    <td>Column content</td>
    <td>Column content</td>
    <td>Column content</td>
  </tr>
  <tr>
    <td>7</td>
    <td>Column content</td>
    <td>Column content</td>
    <td>Column content</td>
  </tr>
  </tbody>
</table>
							
							
							
							
							
							
							
							
							
									</fieldset>
								</form>
							</div>
							
                            
                </div>
            </div>
        </div>
		<!--GILBERTO ARRUMA ESSA FUNÇÃO-->
		<script>
		
		function mudar(el){
		var display = "none";
		display = document.getElementById(el).style.display;
		if (display == "none")
		document.getElementById(el).style.display = 'block';
		else
		document.getElementById(el).style.display = 'none';
		
		}
		
		
		</script>
		
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
                        
        </script>
        <!-- Include all compiled plugins (below), or include individual files
        as needed -->
		<script src="<c:url value ='/resources/JavaScript/bootstrap.min.js' />" /></script>
		<script src="<c:url value ='/resources/JavaScript/material.min.js' />" /></script>
		<script src="<c:url value ='/resources/JavaScript/ripples.min.js' />" /></script>
		
        <script>
                                                                                    $.material.init();
        </script>
    </body>

</html>