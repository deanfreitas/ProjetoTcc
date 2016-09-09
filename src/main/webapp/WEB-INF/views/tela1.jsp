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
            Início
        </title>
        <!-- Bootstrap -->
		<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap.min.css' />" />
		<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap-material-design.min.css' />" />
		<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/ripples.min.css' />" />
		<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estilotela1.css' />" />
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
                                <a href="javascript:void(0)">Perfil</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">Cardápio</a>
                            </li>
                            <li>
                                <a href="alimentos.html">Alimentos</a>
                            </li>
							<li>
                                <a href="">Vitaminas</a>
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
          <a href="bootstrap-elements.html" data-target="#" class="dropdown-toggle" data-toggle="dropdown">Ajustes
            <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="javascript:void(0)">Alterar Dados</a></li>
         
            <li class="divider"></li>
            <li><a data-toggle="modal" href="#mymodal">Sair</a></li>
            
          </ul>
        </li>                            </li>
                        </ul>
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
        </div>
        <div class="container-fluid col-md-12">
            <div id="MeuCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#MeuCarousel" data-slide-to="0" class="active">
                    </li>
                    <li data-target="#MeuCarousel" data-slide-to="1">
                    </li>
                    <li data-target="#MeuCarousel" data-slide-to="2">
                    </li>
                    <li data-target="#MeuCarousel" data-slide-to="3">
                    </li>
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
					<img src="<c:url value = '/resources/Imagens/car3.jpg' />" alt="Legumes" />
          
                    </div>
                    <div class="item">
					<img src="<c:url value = '/resources/Imagens/testecar.jpg' />" alt="Frutas" />
                        
                    </div>
                    <div class="item">
					<img src="<c:url value = '/resources/Imagens/maca4.jpg' />" alt="Maçã" />
                        
                    </div>
                    <div class="item">
					<img src="<c:url value = '/resources/Imagens/academia.jpg' />" alt="Musculação" />
                     
                    </div>
                </div>
                <!-- Left and right controls -->
                <a class="left carousel-control" href="#MeuCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
                <a class="right carousel-control" href="#MeuCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
            </div>
        </div>
		
	<div class="container-fluid col-md-12" id="elementos">	
	
	<div class="col-md-4" id="one">
	<div class="jumbotron">
  <h1>Vitaminas</h1>

  <p>Descubra os benefícios de cada uma e os alimentos onde são encontradas</p>

  <p><a class="btn btn-primary btn-lg">Leia mais</a></p>
</div>	
	</div>
	
	<div class="col-md-4" id="two">
	<div class="jumbotron">
  <h1>IMC</h1>

  <p>Calcule o seu Índice de Massa Corporal</p>

  <p><a class="btn btn-primary btn-lg">Leia mais</a></p>
</div>
	</div>
	
	<div class="col-md-4" id="three">
	<div class="jumbotron">
  <h1>Dicas</h1>

  <p>--em construção--</p>

  <p><a class="btn btn-primary btn-lg">Leia mais</a></p>
</div>
	</div>	</div>
	
		</div>
		
		
		
		
		
		
		
		
		
		
		
		
		
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
        </script>
        <!-- Include all compiled plugins (below), or include individual files
        as needed -->
        <script src="js/bootstrap.min.js">
        </script>
        <script src="js/material.min.js">
        </script>
        <script src="js/ripples.min.js">
        </script>
        <script>
                                                            $.material.init();
															
        </script>
		
    </body>

</html>