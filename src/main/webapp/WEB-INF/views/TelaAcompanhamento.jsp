<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Acompanhamento</title>

    <link rel="stylesheet" type="text/css"
          href="<c:url value ='/resources/nodeDependency/node_modules/bootstrap/dist/css/bootstrap.min.css' />"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value ='/resources/nodeDependency/node_modules/bootstrap-material-design/dist/css/bootstrap-material-design.min.css' />"/>
    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/nodeDependency/node_modules/material-ripple/dist/ripple.min.css' />"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value ='/resources/nodeDependency/node_modules/chartist/dist/chartist.min.css' />"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value ='https://fonts.googleapis.com/icon?family=Material+Icons' />"/>
    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estiloTelas/estiloTelaPaciente.css' />"/>

    <script src="<c:url value ='/resources/nodeDependency/node_modules/jquery/dist/jquery.min.js' />"></script>
    <script src="<c:url value ='/resources/nodeDependency/node_modules/popper.js/dist/umd/popper.min.js' />"></script>
    <script src="<c:url value ='/resources/nodeDependency/node_modules/bootstrap-material-design/dist/js/bootstrap-material-design.min.js' />"></script>
    <script src="<c:url value ='/resources/nodeDependency/node_modules/material-ripple/dist/ripple.min.js' />"></script>
    <script src="<c:url value ='/resources/nodeDependency/node_modules/bootstrap/dist/js/bootstrap.min.js' />"></script>
    <script src="<c:url value ='/resources/nodeDependency/node_modules/chart.js/dist/Chart.min.js' />"></script>
    <script src="<c:url value ='/resources/nodeDependency/node_modules/chartist/dist/chartist.min.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/validarTelas/validarTelaAcompanhamento.js' />"></script>
</head>

<body>
<div class="navbar navbar-default">
    <div class="col-md-12">
        <div class="col-md-4" id="logo">
            <img src="<c:url value = '/resources/Imagens/imagensTelas/novologotransp.png' />"
            />
        </div>
        <div class="col-md-4" id="titulo">
            <h1>
                Acompanhamento
            </h1>
        </div>
        <div class="col-md-4" id="botao">
            <a href="/ProjetoTcc/telaPrincipal" id="voltar" class="btn btn-default btn-fab">
                <i class="material-icons">reply</i>
            </a>
        </div>
    </div>
</div>
<div class="jumbotron">
    <div class="col-md-6">
        <h2>Consumo de água semanal</h2>
        <div class="ct-chart ct-perfect-fourth"></div>
    </div>

    <div class="col-md-6">
        <h2>Consumo diário em Calorias</h2>
        <div class="ct-chart2 ct-perfect-fourth"></div>
    </div>

    <div class="container-fluid col-md-12">
        <div>
            <section>
                <article>
                    <canvas id="myChart" width="400" height="400">
                    </canvas>
                </article>
            </section>
        </div>
    </div>
</div>

</body>
</html>