<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Perfil</title>
    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap.min.css'/>"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value='/resources/Css/bootstrap/bootstrap-material-design.min.css'/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/ripples.min.css'/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/jsgrid/demos.css'/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/jsgrid/jsgrid.css'/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/jsgrid/theme.css'/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estiloTelas/estiloTelaAnamnese.css'/>"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value ='https://fonts.googleapis.com/icon?family=Material+Icons'/>"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value ='http://fonts.googleapis.com/css?family=Open+Sans:300,600,400'/>"/>
    <script src="<c:url value ='/resources/JavaScript/jquery/jquery-2.1.4.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/jquery/validate/jquery.validate.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/jquery/validate/jquery.validate.min.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/bootstrap/material.min.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/bootstrap/ripples.min.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/bootstrap/bootstrap.min.js' />"></script>
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
    <script src="<c:url value ='/resources/JavaScript/db.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/validarTelas/validarAnamnese.js' />" charset="utf-8"></script>
</head>

<body>
<div class="navbar navbar-default">
    <div class="col-md-12">
        <div class="col-md-4" id="logo"><img
                src="<c:url value = '/resources/Imagens/imagensTelas/novologotransp.png' />"/></div>
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
                <a type="button" id="btnHistoricoFamiliar" href="javascript:void(0)">Histórico Social e Familiar</a>
            </li>
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
                <a type="button" id="btnHistoricoAlimentar" href="javascript:void(0)">Histórico Alimentar
                    Nutricional </a>
            </li>
            <li>
                <a type="button" id="btnExamesBio" href="javascript:void(0)">Exames Bioquímicos </a>
            </li>
            <li>
                <a type="button" id="btnUsoMedicamentos" href="javascript:void(0)">Faz uso de medicamentos? </a>
            </li>
            <li>
                <a type="button" id="btnFrequenciaAlimentar" href="javascript:void(0)">Frequência Alimentar </a>
            </li>
            <li>
                <a type="button" id="btnSalvar" class="btn btn-raised btn-success" href="javascript:void(0)">Salvar</a>
            </li>
        </ul>
    </div>
    <div id="divIdentificacao">
        <!--ESSA Ã A PRIMEIRA ID A SER CHAMADA-->
        <form id="formIdentificacao">
            <fieldset>
                <legend> Identificação</legend>
                <div class="form-group col-md-4">
                    <label for="tData"> Data da 1ª Consulta: </label>
                    <input type="text" class="form-control" id="tData" placeholder="dd/mm/aaaa" data-toggle="tooltip"
                           title="Digite a data corretamente">
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
                    <input type="text" class="form-control" id="tEmail" data-toggle="tooltip"
                           title="Digite o Email corretamente">
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
                    <input type="text" class="form-control" id="tNasc" placeholder="dd/mm/aaaa" data-toggle="tooltip"
                           title="Digite a data corretamente">
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

                <div class="form-group col-md-4 ">
                    <label for="idEstadoCivil"> Estado Civil </label>
                    <select id="idEstadoCivil" class="form-control">
                        <option></option>
                        <option>Solteiro(a)</option>
                        <option>Casado(a)</option>
                        <option>Divorciado(a)</option>
                        <option>Viúvo(a)</option>
                    </select>
                </div>

                <div class="form-group col-md-4">
                    <label for="idRaca"> Cor/Raça </label>

                    <select id="idRaca" class="form-control">
                        <option></option>
                        <option>Branca</option>
                        <option>Preta</option>
                        <option>Parda</option>
                        <option>Amarela</option>
                        <option>Indígena</option>
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
    <!--AQUI COMEÃA A OUTRA DIV QUE TERA QUE APARECER AO CLICAR NO MENU LATERAL, EM HISTORICO SOCIAL E FAMILIAR, E AUTOMATICAMENTE OCULTAR O FORMULARIO
                    ANTERIOR E SÃ EXIBIR NOVAMENTE A CLICAR SOBRE ELE NO MENU-->
    <div id="divHistoricoFamiliar">
        <form id="formHistoricoFamiliar">
            <fieldset>
                <legend> Histórico Social e Familiar</legend>
                <div class="form-group col-md-4">
                    <label for="tProfi"> Profissão: </label>
                    <input type="text" class="form-control" id="tProfi">
                </div>
                <div class="form-group col-md-4">
                    <label for="tChor"> Carga Horária: </label>
                    <input type="text" class="form-control" id="tChor">
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
                    <label for="tBeber"> Faz uso de bebidas alcoólicas? </label>
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
                <legend> Dados Antropométricos</legend>

                 <div class="jumbotron">
        <table id="dadosAntro" class="table table-striped table-hover ">
            <thead>
            <tr>
            	<th></th>
                <th>DATA</th>
                <th>PA</th>
                <th>PESO(KG)</th>
                <th>ALTURA(CM)</th>
                <th>IMC</th>
                <th>PCT</th>
                <th>PCB</th>
                <th>PC SE</th>
                <th>PCPEITORAL</th>
                <th>PCAB</th>
            </tr>
            <tr>
           			 <th><div class="checkbox"><label><input type="checkbox"></label></div></th>
           			 <th><input type="text" class="form-control"></th>
           			 <th><input type="text" class="form-control"></th>
           			 <th><input type="text" class="form-control"></th>
           			 <th><input type="text" class="form-control"></th>
           			 <th><input type="text" class="form-control"></th>
           			 <th><input type="text" class="form-control"></th>
           			 <th><input type="text" class="form-control"></th>
           			 <th><input type="text" class="form-control"></th>
           			 <th><input type="text" class="form-control"></th>
           			 <th><input type="text" class="form-control"></th>
            </tr>
           
                <tr>
           			 <th><div class="checkbox"><label><input type="checkbox"></label></div></th>
           			 <th><input type="text" class="form-control"></th>
           			 <th><input type="text" class="form-control"></th>
           			 <th><input type="text" class="form-control"></th>
           			 <th><input type="text" class="form-control"></th>
           			 <th><input type="text" class="form-control"></th>
           			 <th><input type="text" class="form-control"></th>
           			 <th><input type="text" class="form-control"></th>
           			 <th><input type="text" class="form-control"></th>
           			 <th><input type="text" class="form-control"></th>
           			 <th><input type="text" class="form-control"></th>
            </tr>
           
            </thead>
            <tbody>
            
            <!-- O corpo da tabela está sendo renderizada no javaScript -->
            
            
            </tbody>
        </table>
            <div class="btn-group btn-group-justified btn-group-raised" id="menuDadosAnt">
        <a class="btn btn-lg btn-info " href="#" id="btnAdicionar">Adicionar</a>
        <a class="btn btn-lg btn-warning " href="#" id="btnLimpar">Limpar</a>

    </div>
    </div>

                <div class="form-group col-md-6">
                    <label for="tPusual"> Peso atual: </label>
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
                <legend> Dados Clínicos</legend>

                <table class="table table-striped table-hover ">
                    <thead>
                    <tr>
                        <th></th>
                        <th> Opção</th>
                        <th> Observação</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td> Vômito</td>
                        <td>
                            <div class="togglebutton">
                                <label>
                                    <input type="checkbox" id="checkboxVomito">
                                </label></div>
                        </td>
                        <td><input type="text" size="30" id="observacoesVomito"></td>

                    </tr>
                    <tr>
                        <td> Náusea</td>
                        <td>
                            <div class="togglebutton">
                                <label>
                                    <input type="checkbox" id="checkboxNausea">
                                </label></div>
                        </td>
                        <td><input type="text" size="30" id="observacoesNausea"></td>
                    </tr>
                    <tr>
                        <td> Mastigação</td>
                        <td>
                            <div class="togglebutton">
                                <label>
                                    <input type="checkbox" id="checkboxMastigacao">
                                </label></div>
                        </td>
                        <td><input type="text" size="30" id="observacoesMastigacao"></td>
                    </tr>
                    <tr>
                        <td> Deglutição</td>
                        <td>
                            <div class="togglebutton">
                                <label>
                                    <input type="checkbox" id="checkboxDegluticao">
                                </label></div>
                        </td>
                        <td><input type="text" size="30" id="observacoesDegluticao"></td>
                    </tr>
                    <tr>
                        <td> Digestão</td>
                        <td>
                            <div class="togglebutton">
                                <label>
                                    <input type="checkbox" id="checkboxDigestao">
                                </label></div>
                        </td>
                        <td><input type="text" size="30" id="observacoesDigestao"></td>
                    </tr>
                    <tr>
                        <td> Pirose</td>
                        <td>
                            <div class="togglebutton">
                                <label>
                                    <input type="checkbox" id="checkboxPirose">
                                </label></div>
                        </td>
                        <td><input type="text" size="30" id="observacoesPirose"></td>
                    </tr>
                    <tr>
                        <td> Refluxo</td>
                        <td>
                            <div class="togglebutton">
                                <label>
                                    <input type="checkbox" id="checkboxRefluxo">
                                </label></div>
                        </td>
                        <td><input type="text" size="30" id="observacoesRefluxo"></td>
                    </tr>
                    <tr>
                        <td> Diarréia</td>
                        <td>
                            <div class="togglebutton">
                                <label>
                                    <input type="checkbox" id="checkboxDiarreia">
                                </label></div>
                        </td>
                        <td><input type="text" size="30" id="observacoesDiarreia"></td>
                    </tr>
                    <tr>
                        <td> Obstipação</td>
                        <td>
                            <div class="togglebutton">
                                <label>
                                    <input type="checkbox" id="checkboxObstipacao">
                                </label></div>
                        </td>
                        <td><input type="text" size="30" id="observacoesObstipacao"></td>
                    </tr>
                    <tr>
                        <td> Insônia</td>
                        <td>
                            <div class="togglebutton">
                                <label>
                                    <input type="checkbox" id="checkboxInsonia">
                                </label></div>
                        </td>
                        <td><input type="text" size="30" id="observacoesInsonia"></td>
                    </tr>
                    <tr>
                        <td> Estresse</td>
                        <td>
                            <div class="togglebutton">
                                <label>
                                    <input type="checkbox" id="checkboxEstresse">
                                </label></div>
                        </td>
                        <td><input type="text" size="30" id="observacoesEstresse"></td>
                    </tr>
                    <tr>
                        <td> Cansaço</td>
                        <td>
                            <div class="togglebutton">
                                <label>
                                    <input type="checkbox" id="checkboxCansaco">
                                </label></div>
                        </td>
                        <td><input type="text" size="30" id="observacoesCansaco"></td>
                    </tr>
                    <tr>
                        <td> Ansiedade</td>
                        <td>
                            <div class="togglebutton">
                                <label>
                                    <input type="checkbox" id="checkboxAnsiedade">
                                </label></div>
                        </td>
                        <td><input type="text" size="30" id="observacoesAnsiedade"></td>
                    </tr>
                    </tbody>
                </table>

                <div class="form-group col-md-6">
                    <label for="PeleCabelo"> Possui lesões ou problemas na pele, cabelo e unha? </label>
                    <input type="text" class="form-control" id="PeleCabelo">
                </div>

                <div class="form-group col-md-6">
                    <label for="CirurgiaQuando"> Já passou por algum tipo de cirurgia? Qual? Quando? </label>
                    <input type="text" class="form-control" id="CirurgiaQuando">
                </div>

                <div class="form-group col-md-4">
                    <label for="HabIntestinal"> Hábito intestinal: </label>
                    <select class="form-control" id="HabIntestinal">
                        <option></option>
                        <option> Diário</option>
                        <option> Até 3 dias</option>
                        <option> Mais 3 dias</option>
                        <option> Outro</option>
                    </select>
                    <!-- ESSA DIV É PARA O PACIENTE COLOCAR A OPÇÃO CASO ELE SELECIONE O CAMPO OUTRO DO SELECT -->
                    <div id="inputOculto">
                        <input type="text" class="form-control" id="observacaoHabitoIntestinal"/>
                    </div>
                </div>

                <div class="form-group col-md-4">
                    <label for="ConsFezes"> Consistência das fezes: </label>
                    <select class="form-control" id="ConsFezes">
                        <option></option>
                        <option> Normal</option>
                        <option> Amolecidas</option>
                        <option> Duras</option>
                        <option> Outro</option>
                    </select>
                    <div id="inputOculto2">
                        <input type="text" class="form-control" id="observacaoFezes"/>
                    </div>
                </div>

                <div class="form-group col-md-4">
                    <label for="DiureseQuant"> Diurese (Quantidade/Coloração): </label>
                    <input type="text" class="form-control" id="DiureseQuant">
                </div>

                <div class="form-group col-md-12">
                    <label for="PossuiPatologia"> Possui alguma patologia? Qual? Desde quando? </label>
                    <input type="text" class="form-control" id="PossuiPatologia">
                    <br><br><br>
                </div>
            </fieldset>
        </form>
        <div class="col-md-3 offset"></div>
        <div class="row col-md-9">
            <h4> Antecedentes familiares/Quem:</h4>

            <table class="table table-striped table-hover ">
                <thead>
                <tr>
                    <th></th>
                    <th> Opção</th>
                    <th> Observação</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td> DM</td>
                    <td>
                        <div class="togglebutton">
                            <label>
                                <input type="checkbox" id="checkboxDm">
                            </label></div>
                    </td>
                    <td><input type="text" size="30" id="observacoesDm"></td>

                </tr>
                <tr>
                    <td> HA</td>
                    <td>
                        <div class="togglebutton">
                            <label>
                                <input type="checkbox" id="checkboxHa">
                            </label></div>
                    </td>
                    <td><input type="text" size="30" id="observacoesHa"></td>
                </tr>
                <tr>
                    <td> CA</td>
                    <td>
                        <div class="togglebutton">
                            <label>
                                <input type="checkbox" id="checkboxCa">
                            </label></div>
                    </td>
                    <td><input type="text" size="30" id="observacoesCa"></td>
                </tr>
                <tr>
                    <td> Dislipidemia</td>
                    <td>
                        <div class="togglebutton">
                            <label>
                                <input type="checkbox" id="checkboxDislipidemia">
                            </label></div>
                    </td>
                    <td><input type="text" size="30" id="observacoesDislipidemia"></td>
                </tr>
                <tr>
                    <td> Obesidade</td>
                    <td>
                        <div class="togglebutton">
                            <label>
                                <input type="checkbox" id="checkboxObesidade">
                            </label></div>
                    </td>
                    <td><input type="text" size="30" id="observacoesObesidade"></td>
                </tr>
                <tr>
                    <td> Magreza</td>
                    <td>
                        <div class="togglebutton">
                            <label>
                                <input type="checkbox" id="checkboxMagreza">
                            </label></div>
                    </td>
                    <td><input type="text" size="30" id="observacoesMagreza"></td>
                </tr>
                <tr>
                    <td> Outros:</td>
                    <td>
                        <div class="togglebutton">
                            <label>
                                <input type="checkbox" id="checkboxOutros">
                            </label></div>
                    </td>
                    <td><input type="text" size="30" id="observacoesOutros"></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div id="divAtividadeFisica">
        <form id="formAtividadeFisica">
            <fieldset>
                <legend> Atividade Física</legend>

                <div class="form-group col-md-12">
                    <label for="TipoAtivFisica"> Tipo de atividade física: </label>
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
                    <label for="ConsFezes"> Você pratica as atividades: </label>
                    <select class="form-control" id="vocePreticaAtividades">
                        <option></option>
                        <option> Alimentado</option>
                        <option> Jejum</option>
                    </select>
                </div>

                <div class="form-group col-md-6">
                    <label for="HorarioPref"> Horário preferido: </label>
                    <input type="text" class="form-control" id="HorarioPref">
                </div>
            </fieldset>
        </form>
    </div>

    <div id="divHistoricoAlimentar">
        <form id="formHistoricoAlimentar">
            <fieldset>
                <legend> Histórico Alimentar Nutricional</legend>

                <div class="form-group col-md-6">
                    <label for="IntAlimentar"> Intolerância Alimentar: </label>
                    <input type="text" class="form-control" id="IntAlimentar">
                </div>

                <div class="form-group col-md-6">
                    <label for="PrefAlimentar"> Preferência Alimentar: </label>
                    <input type="text" class="form-control" id="PrefAlimentar">
                </div>

                <div class="form-group col-md-6">
                    <label for="AltApetite"> Alterações do Apetite: </label>
                    <select class="form-control" id="AltApetite">
                        <option></option>
                        <option> Sim</option>
                        <option> Não</option>
                    </select>
                    <div id="inputOculto3">
                        <input type="text" class="form-control" placeholder="Desde quando:" id="desdeQuando"/>
                    </div>
                </div>

                <div class="form-group col-md-6">
                    <label for="ObesidadePerda"> Fase que iniciou obesidade /perda peso: </label>
                    <input type="text" class="form-control" id="ObesidadePerda">
                </div>

                <div class="form-group col-md-6">
                    <label for="DietaEspecial"> Segue alguma dieta especial: </label>
                    <input type="text" class="form-control" id="DietaEspecial">
                </div>

                <div class="form-group col-md-6">
                    <label for="QuantRefeicoes"> Quantas refeições faz por dia: </label>
                    <input type="text" class="form-control" id="QuantRefeicoes">
                </div>

                <div class="form-group col-md-4">
                    <label for="ConsumoAgua"> Consumo de água: </label>
                    <input type="text" class="form-control" id="ConsumoAgua">
                </div>

                <div class="form-group col-md-4">
                    <label for="ConsumoAgua"> Consumo de sal / mês: </label>
                    <input type="text" class="form-control" id="ConsumoSal">
                </div>

                <div class="form-group col-md-4">
                    <label for="ConsumoOleo"> Consumo de óleo / mês: </label>
                    <input type="text" class="form-control" id="ConsumoOleo">
                </div>

                <div class="form-group col-md-6">
                    <label for="UsoSuplemento"> Faz uso de suplementos? Qual? </label>
                    <input type="text" class="form-control" id="UsoSuplemento">
                </div>

                <div class="form-group col-md-6">
                    <label for="QuemIndicou"> Quem indicou? </label>
                    <input type="text" class="form-control" id="QuemIndicou">
                </div>

            </fieldset>
        </form>
    </div>

    <div id="divExamesBio">
        <form id="formExamesBio">
            <fieldset>
                <legend> Exames Bioquímicos</legend>

                                 <div class="jumbotron">
        <table id="examesBio" class="table table-striped table-hover ">
            <thead>

<tr><td></td></tr>
<tr><td>DATA</td></tr>
<tr><td>GLI</td></tr>
<tr><td>HG</td></tr>
<tr><td>TG</td></tr>
<tr><td>CT</td></tr>
<tr><td>LDL</td></tr>
<tr><td>HDL</td></tr>
<tr><td>SÓDIO</td></tr>
<tr><td>POTÁSSIO</td></tr>
<tr><td>CREATININA</td></tr>
<tr><td>TGO</td></tr>
<tr><td>TGP</td></tr>
<tr><td>GGT</td></tr>
<tr><td>FERRITINA</td></tr>
<tr><td>VITAMINA B12</td></tr>
<tr><td>ÁCIDO FÓLICO</td></tr>
<tr><td>NÃO HDL</td></tr>
<tr><td>VLDL</td></tr>
<tr><td>UREIA</td></tr>
<tr><td>FÓSFORO</td></tr>
<tr><td>CÁLCIO</td></tr>
<tr><td>ÁCIDO ÚRICO</td></tr>


            </thead>
            <tbody>
            
            <!-- O corpo da tabela está sendo renderizada no javaScript -->
            <!-- Aqui Gilberto ao invés de adicionar linhas, vc vai adicionar colunas a tabela -->
            
            </tbody>
        </table>
            <div class="btn-group btn-group-justified btn-group-raised" id="menuexamesBio">
        <a class="btn btn-lg btn-success " href="#" id="btnAdicionar">Adicionar</a>
        <a class="btn btn-lg btn-warning " href="#" id="btnLimpar">Limpar</a>

    </div>
    </div>


            </fieldset>
        </form>
    </div>

    <div id="divUsoMedicamentos">
        <form id="formUsoMedicamentos">
            <fieldset>
                <legend> Faz uso de medicamentos?</legend>
                <div class="jumbotron">
        <table id="usoMedicamentos" class="table table-striped table-hover ">
            <thead>
            <tr>
            	<th></th>
                <th>NOME</th>
                <th>DOSE</th>
                <th>HORÁRIO</th>
                <th>MOTIVO</th>
                <th>INTER. DROGA x NUTR.</th>
            </tr>
            </thead>
            <tbody>
            
            <!-- O corpo da tabela está sendo renderizada no javaScript -->
            
            
            </tbody>
        </table>
            <div class="btn-group btn-group-justified btn-group-raised" id="menuusoMedicamentos">
        <a class="btn btn-lg btn-success " href="#" id="btnAdicionar">Adicionar</a>
        <a class="btn btn-lg btn-warning " href="#" id="btnLimpar">Limpar</a>

    </div>
    </div>
            </fieldset>
            
        </form>
    </div>

    <div id="divFrequenciaAlimentar">
        <form id="formFrequenciaAlimentar">
            <fieldset>
                <legend> Frequência Alimentar</legend>

                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th>ALIMENTOS</th>
                        <th>OPÇÃO</th>
                        <th>PORÇÃO MÉDIA</th>

                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Arroz</td>
                        <td>
                            <select id="idArroz" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoArroz"></td>
                    </tr>
                    <tr>
                        <td>Macarrão</td>
                        <td>
                            <select id="idMacarrao" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoMacarrao"></td>
                    </tr>
                    <tr>
                        <td>Batata / Mandioca</td>
                        <td>
                            <select id="idBatata" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoBatata"></td>
                    </tr>
                    <tr>
                        <td>Pão</td>
                        <td>
                            <select id="idPao" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoPao"></td>
                    </tr>
                    <tr>
                        <td>Pão de queijo</td>
                        <td>
                            <select id="idPaoQueijo" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoPaoQueijo"></td>
                    </tr>
                    <tr>
                        <td>Farinhas</td>
                        <td>
                            <select id="idFarinhas" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoFarinhas"></td>
                    </tr>
                    <tr>
                        <td>Cereal matinal</td>
                        <td>
                            <select id="idCereal" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoCereal"></td>
                    </tr>
                    <tr>
                        <td>Hortaliças cruas</td>
                        <td>
                            <select id="idHortalicasCruas" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoHortalicasCruas"></td>
                    </tr>
                    <tr>
                        <td>Hortaliças cozidas</td>
                        <td>
                            <select id="idHortalicasCozidas" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoHortalicasCozidas"></td>
                    </tr>
                    <tr>
                        <td>Frutas</td>
                        <td>
                            <select id="idFrutas" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoFrutas"></td>
                    </tr>
                    <tr>
                        <td>Leite Integral</td>
                        <td>
                            <select id="idLeiteInt" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoLeiteInt"></td>
                    </tr>
                    <tr>
                        <td>Leite desnatado</td>
                        <td>
                            <select id="idLeiteDes" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoLeiteDes"></td>
                    </tr>
                    <tr>
                        <td>Iogurte</td>
                        <td>
                            <select id="idIogurte" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoIogurte"></td>
                    </tr>
                    <tr>
                        <td>Iogurte desnatado</td>
                        <td>
                            <select id="idIogurteDes" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoIogurteDes"></td>
                    </tr>
                    <tr>
                        <td>Queijos</td>
                        <td>
                            <select id="idQueijos" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoQueijos"></td>
                    </tr>
                    <tr>
                        <td>Carne vermelha</td>
                        <td>
                            <select id="idCarneVermelha" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoCarneVermelha"></td>
                    </tr>
                    <tr>
                        <td>Embutidos</td>
                        <td>
                            <select id="idEmbutidos" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoEmbutidos"></td>
                    </tr>
                    <tr>
                        <td>Enlatados</td>
                        <td>
                            <select id="idEnlatados" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoEnlatados"></td>
                    </tr>
                    <tr>
                        <td>Ovos</td>
                        <td>
                            <select id="idOvos" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoOvos"></td>
                    </tr>
                    <tr>
                        <td>Leguminosas</td>
                        <td>
                            <select id="idLeguminosas" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoLeguminosas"></td>
                    </tr>
                    <tr>
                        <td>Margarina comum</td>
                        <td>
                            <select id="idMargarinaComum" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoMargarinaComum"></td>
                    </tr>
                    <tr>
                        <td>Margarina light</td>
                        <td>
                            <select id="idMargarinaLight" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoMargarinaLight"></td>
                    </tr>
                    <tr>
                        <td>Manteiga</td>
                        <td>
                            <select id="idManteiga" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoManteiga"></td>
                    </tr>
                    <tr>
                        <td>Requeijão comum</td>
                        <td>
                            <select id="idRequijaoComum" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoRequijaoComum"></td>
                    </tr>
                    <tr>
                        <td>Requeijão light</td>
                        <td>
                            <select id="idRequeijaoLight" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoRequeijaoLight"></td>
                    </tr>
                    <tr>
                        <td>Maionese comum</td>
                        <td>
                            <select id="idMaioneseComum" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoMaioneseComum"></td>
                    </tr>
                    <tr>
                        <td>Maionese light</td>
                        <td>
                            <select id="idMaioneseLight" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoMaioneseLight"></td>
                    </tr>
                    <tr>
                        <td>Creme de leite</td>
                        <td>
                            <select id="idCremeDeLeite" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoCremeDeLeite"></td>
                    </tr>
                    <tr>
                        <td>Frituras</td>
                        <td>
                            <select id="idFrituras" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoFrituras"></td>
                    </tr>
                    <tr>
                        <td>Açúcar</td>
                        <td>
                            <select id="idAcucar" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoAcucar"></td>
                    </tr>
                    <tr>
                        <td>Adoçante</td>
                        <td>
                            <select id="idAdocante" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoAdocante"></td>
                    </tr>
                    <tr>
                        <td>Mel</td>
                        <td>
                            <select id="idMel" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoMel"></td>
                    </tr>
                    <tr>
                        <td>Barra de cereal</td>
                        <td>
                            <select id="idBarraDeCereal" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoBarraDeCereal"></td>
                    </tr>
                    <tr>
                        <td>Doces</td>
                        <td>
                            <select id="idDoces" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoDoces"></td>
                    </tr>
                    <tr>
                        <td>Bolacha recheada</td>
                        <td>
                            <select id="idBolachaRecheada" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoBolachaRecheada"></td>
                    </tr>
                    <tr>
                        <td>Bolacha/Bolo/Biscoito</td>
                        <td>
                            <select id="idBolachaBoloBiscoito" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoBolachaBoloBiscoito"></td>
                    </tr>
                    <tr>
                        <td>Chiclete / Balas</td>
                        <td>
                            <select id="idChicleteBalas" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoChicleteBalas"></td>
                    </tr>
                    <tr>
                        <td>Chocolate</td>
                        <td>
                            <select id="idChocolate" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoChocolate"></td>
                    </tr>
                    <tr>
                        <td>Sanduíche / Pizza</td>
                        <td>
                            <select id="idSanduichePizza" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoSanduichePizza"></td>
                    </tr>
                    <tr>
                        <td>Salgadinhos</td>
                        <td>
                            <select id="idSalgadinhos" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoSalgadinhos"></td>
                    </tr>
                    <tr>
                        <td>Salgadinho (pacote)</td>
                        <td>
                            <select id="idSalgadinhoPacote" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoSalgadinhoPacote"></td>
                    </tr>
                    <tr>
                        <td>Refrigerante comum</td>
                        <td>
                            <select id="idRefrigeranteComum" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoRefrigeranteComum"></td>
                    </tr>
                    <tr>
                        <td>Refrigerante diet/light</td>
                        <td>
                            <select id="idRefriLightDiet" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoRefriLightDiet"></td>
                    </tr>
                    <tr>
                        <td>Suco natural</td>
                        <td>
                            <select id="idSucoNatural" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoSucoNatural"></td>
                    </tr>
                    <tr>
                        <td>Suco artificial</td>
                        <td>
                            <select id="idSucoArtificial" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoSucoArtificial"></td>
                    </tr>
                    <tr>
                        <td>Café</td>
                        <td>
                            <select id="idCafe" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoCafe"></td>
                    </tr>
                    <tr>
                        <td>Chá</td>
                        <td>
                            <select id="idCha" class="form-control">
                                <option></option>
                                <option>Nulo</option>
                                <option>Eventual</option>
                                <option>Semanal</option>
                                <option>Diária</option>
                            </select>
                        </td>
                        <td><input type="text" class="form-control" id="porcaoCha"></td>
                    </tr>
                    </tbody>
                </table>

                <div class="form-group col-md-12">
                    <label for="idDiagnostico"> Diagnóstico Nutricional: </label>
                    <input type="text" class="form-control" id="idDiagnostico">
                </div>

                <div class="form-group col-md-12">
                    <label for="idConduta"> Conduta Dietoterápica: </label>
                    <input type="text" class="form-control" id="idConduta">
                </div>
                <div class="form-group col-md-12">
                    <label for="textArea">Relato de caso, Orientações Nutricionais e Evolução: </label>

                    <div class="col-md-12">
                        <textarea class="form-control" rows="10"
                                  id="idRelatoOrientacoesNutricionaisEvolucao"></textarea>
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
</div>
</body>
</html>