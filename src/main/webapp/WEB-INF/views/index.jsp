<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<!DOCTYPE html>
<html lang="pt-br">
    
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- As 3 meta tags acima *devem* vir em primeiro lugar dentro do `head`;
        qualquer outro conteúdo deve vir *após* essas tags -->
        <title>
            Login
        </title>
        <!-- Bootstrap -->
        <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap.min.css'/> "/> 
        <link rel="stylesheet" type="text/css"href="<c:url value ='/resources/Css/estiloIndex.css'/> "/> 
		<link rel="stylesheet" type="text/css"href="<c:url value ='/resources/Css/bootstrap-material-design.min.css'/> "/> 
        <link rel="stylesheet" type="text/css"href="<c:url value ='/resources/Css/ripples.min.css'/> "/> 
		
        <!-- HTML5 shim e Respond.js para suporte no IE8 de elementos HTML5 e
        media queries -->
        <!-- ALERTA: Respond.js não funciona se você visualizar uma página file://
        -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js">    
            </script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js">  
            </script>
        <![endif]-->
    </head>
    
    <body>
	
        <div class="container-fluid col-md-12">
            <div id="logo"> <!--verifica se a imagem vai responder, pq nesse exemplo tem uma classe envolvida-->
                <img src="<c:url value = '/resources/Imagens/novologotransp2.png'  />" class="img-responsive center-block"/> 
            </div>
			
            <form action="" class="form-login">
                <h2 class="form-login-heading">
                </h2>
                <div class="form-group label-floating">
  <label class="control-label" for="focusedInput1">USUÁRIO</label>
  <input class="form-control" id="focusedInput1" type="text">
</div>
                               <div class="form-group label-floating">
  <label class="control-label" for="focusedInput1">SENHA</label>
  <input class="form-control" id="focusedInput1" type="password">
</div>
				<div class="row" id="botoes">
				
                <a href="tela1.html" class="btn btn-raised btn-primary btn-lg">Entrar</a>
				
                <a href="cadastro2.html" class="btn btn-raised btn-primary btn-lg">Cadastrar-se</a>
				
				
				</div>
            </form>
        </div>
	
        <!-- jQuery (obrigatório para plugins JavaScript do Bootstrap) --> 
       <script src="<c:url value ='/resources/JavaScript/jquery.min.js' />" /></script>
        <!-- Inclui todos os plugins compilados (abaixo), ou inclua arquivos separadados 
        se necessário -->
        <script src="<c:url value ='/resources/JavaScript/bootstrap.min.js' />" /></script>
		   <script src="<c:url value ='/resources/JavaScript/material.min.js' />" /></script>
         <script src="<c:url value ='/resources/JavaScript/ripples.min.js' />" /></script>                               
                                        
            </script>
            <script>
                                                    $.material.init(); <!-- Gilberto verifica como vai ficar essa opção-->
            </script>
    </body>

</html>