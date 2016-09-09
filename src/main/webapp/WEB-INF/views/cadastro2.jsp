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
            Cadastro Nutri-Prato
        </title>
        <!-- Bootstrap -->
		<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap.min.css' />" />
		<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap-material-design.min.css' />" />
		<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/ripples.min.css' />" />
		<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estiloCadastro2.css' />" />
		
	
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
	
		<header>
		
		
		<figure>
		
		<img src="<c:url value = '/resources/Imagens/novologotransp.png' />" id="logo" />
		</figure>
		</header>
        <div class="container-fluid col-md-2 hidden-xs" >
		
		
		
		</div>
		
		
		
		
		
		
		<div class="container-fluid col-md-8" id="pagina">
		
		<div class="jumbotron" id="jumbo">
            <form class="form-inline">
                <fieldset>
                    <legend>
                        Dados Pessoais
                    </legend>
                    <div class="row">
                        <div class="form-group col-md-6">
                           
                            <div class="col-md-6">
                                <input type="text" class="form-control" id="cNome" name="tNome" size="40" placeholder="Nome Completo">
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label class="radio-inline">
                                <input type="radio" name="optradio" id="cMasc">
                                Masculino
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="optradio" id="cFemi">
                                Feminino
                            </label>
                        </div>
                    </div>
            </form>
            <div class="row">
                <div class="form-group col-md-4">
                    <label for="inputDate" class="col-md-2 control-label">
                        Data de Nascimento
                    </label>
                    <div class="col-md-10">
                        <input type="date" class="form-control" id="cData" placeholder="dd/mm/aaaa">
                    </div>
                </div>
                </form>
                <div class="container col-md-8">
                    <form class="form-inline">
                        <div class="form-group ">
                            <label for="selectEcivil" class="col-md-4 control-label">
                                Estado Civil
                            </label>
                            <div class="col-md-8">
                                <select id="selectEcivil" class="form-control">
                                    <option>
                                    </option>
                                    <option>
                                        Solteiro(a)
                                    </option>
                                    <option>
                                        Casado(a)
                                    </option>
                                    <option>
                                        Divorciado(a)
                                    </option>
                                    <option>
                                        Viúvo(a)
                                    </option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="selectRaca" class="col-md-4 control-label">
                                Cor/Raça
                            </label>
                            <div class="col-md-8">
                                <select id="selectRaca" class="form-control">
                                    <option>
                                    </option>
                                    <option>
                                        Branca
                                    </option>
                                    <option>
                                        Preta
                                    </option>
                                    <option>
                                        Parda
                                    </option>
                                    <option>
                                        Amarela
                                    </option>
                                    <option>
                                        Indígena
                                    </option>
                                </select>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-4">
                    <form class="form-inline">
                        
                        <input type "text" class="form-control" name="tTel" id="cTel" size="20"
                        placeholder="Telefone" />
                </div>
                <div class="form-group col-md-4">
                    
                    <input type "text" class="form-control" name="tCel" id="cCel" size="20"
                    placeholder="Celular" />
                </div>
                <div class="form-group col-md-4">
                    
                    <input type="text" class="form-control" name="tCom" id="cCom" size="20"
                    placeholder="Comercial" />
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <form class="form-inline">
                     
                        <input type="text" class="form-control" name="tEnd" id="cEnd" size="40"
                        placeholder="Endereço" />
                    </form>
                </div>
                <div class="form-group col-md-2">
                    <form class="form-inline">
                        
						
                        <input type="text" class="form-control" name="tNum" id="cNum" size="5"
                        placeholder="Nº"/>
                    </form>
                </div>
                <div class="form-group col-md-4">
                    <form class="form-inline">
                       
                        <input type="text" class="form-control" name="tCompl" id="cCompl" size="20"
                        placeholder="Compl"/>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-4">
                    <form class="form-inline">
                        
                        <input type="text" class="form-control" name="tBairro" id="cBairro" size="30"
                        placeholder="Bairro"/>
                    </form>
                </div>
                <div class="form-group col-md-4">
                    <form class="form-inline">
                        
                        <input type="text" class="form-control" name="tCity" id="cCity" size="30"
                        placeholder="Cidade"/>
                    </form>
                </div>
                <div class="form-group col-md-4">
                    <form class="form-inline">
                        <label for="tUf">
                            Estado 
                        </label>
                        <select class="form-control" id="cUf" name="tUf" class="col-md-10">
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
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <form class="form-inline">
                        
                        <input type="text" class="form-control" name="tResp" id="cResp" size="20"
                        placeholder="Responsável"/>
                    </form>
                </div>
                <div class="form-group col-md-6">
                    <form class="form-inline">
                        
                        <input type="text" class="form-control" name="tCrn" id="cCrn" size="20"
                        placeholder="CRN"/>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <form class="form-inline">
                        
                        <input type="email" class="form-control" name="tEmail" id="cEmail" size="20"
                        placeholder="E-mail"/>
                    </form>
                </div>
                <div class="form-group col-md-6">
                    <form class="form-inline">
                        
                        <input type="password" class="form-control" name="tSenha" id="cSenha"
                        size="20" placeholder="Senha"/>
                    </form>
                </div>
            </div>
            <div class="row" id="botoes">
                <div class="form-group col-md-6" id="salvar">
                    <form class="form-inline">
                        <a href="index.html" class="btn btn-raised btn-success">Salvar</a>
                    
                
                
                    
                        <a href="javascript:void(0)" class="btn btn-raised btn-danger">Apagar</a>
                    </form>
                </div>
            </div>
			</div>
			</div>
			
            <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
			<script src="<c:url value ='https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js' />" /></script>
            
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