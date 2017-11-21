<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Diário Alimentar</title>
    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap.min.css' />"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value ='/resources/Css/bootstrap/dataTables/dataTables.bootstrap.min.css' />"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value ='/resources/Css/bootstrap/bootstrap-material-design.min.css' />"/>
    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/ripples.min.css' />"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value ='/resources/Css/estiloTelas/estiloDiarioAlimentar.css' />"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value ='https://fonts.googleapis.com/icon?family=Material+Icons' />"/>
    <script src="<c:url value ='/resources/JavaScript/jquery/jquery-2.1.4.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/jquery/dataTables/jquery.dataTables.min.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/bootstrap/dataTables/dataTables.bootstrap.min.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/bootstrap/material.min.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/bootstrap/ripples.min.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/bootstrap/bootstrap.min.js' />"></script>
    <script src="<c:url value ='/resources/JavaScript/validarTelas/validarDiarioAlimentar.js' />"></script>
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
                Diário Alimentar
            </h1>
        </div>
        <div class="col-md-4" id="botao">
            <a href="/ProjetoTcc/telaPrincipal" id="voltar" class="btn btn-default btn-fab">
                <i class="material-icons">reply</i>
            </a>
        </div>
    </div>
</div>
<div class="container-fluid col-md-12">
    <div class="jumbotron">

        <table class="table table-striped table-hover ">
            <thead>
            <tr>
                <th>REFEIÇÃO</th>
                <th>HORÁRIO</th>
                <th>HUMOR</th>
                <th>LOCAL</th>
                <th>ALIMENTO</th>
                <th>QUANTIDADE</th>
            </tr>
            </thead>
            <tbody>
            <tr class="success">
                <td>CAFÉ DA MANHÃ:</td>
                <td><input type="text" class="form-control" id="CM-horario"></td>
                <td><input type="text" class="form-control" id="CM-humor"></td>
                <td><input type="text" class="form-control" id="CM-local"></td>
                <td><input type="text" class="form-control" id="CM-alimento"></td>
                <td><input type="text" class="form-control" id="CM-quant"></td>
            </tr>
            <tr>
                <td>LANCHE DA MANHÃ:</td>
                <td><input type="text" class="form-control" id="LM-horario"></td>
                <td><input type="text" class="form-control" id="LM-humor"></td>
                <td><input type="text" class="form-control" id="LM-local"></td>
                <td><input type="text" class="form-control" id="LM-alimento"></td>
                <td><input type="text" class="form-control" id="LM-quant"></td>
            </tr>
            <tr class="success">
                <td>ALMOÇO:</td>
                <td><input type="text" class="form-control" id="ALM-horario"></td>
                <td><input type="text" class="form-control" id="ALM-humor"></td>
                <td><input type="text" class="form-control" id="ALM-local"></td>
                <td><input type="text" class="form-control" id="ALM-alimento"></td>
                <td><input type="text" class="form-control" id="ALM-quant"></td>
            </tr>
            <tr>
                <td>LANCHE DA TARDE:</td>
                <td><input type="text" class="form-control" id="LT-horario"></td>
                <td><input type="text" class="form-control" id="LT-humor"></td>
                <td><input type="text" class="form-control" id="LT-local"></td>
                <td><input type="text" class="form-control" id="LT-alimento"></td>
                <td><input type="text" class="form-control" id="LT-quant"></td>
            </tr>
            <tr class="success">
                <td>JANTAR:</td>
                <td><input type="text" class="form-control" id="JAN-horario"></td>
                <td><input type="text" class="form-control" id="JAN-humor"></td>
                <td><input type="text" class="form-control" id="JAN-local"></td>
                <td><input type="text" class="form-control" id="JAN-alimento"></td>
                <td><input type="text" class="form-control" id="JAN-quant"></td>
            </tr>
            <tr>
                <td>CEIA:</td>
                <td><input type="text" class="form-control" id="CE-horario"></td>
                <td><input type="text" class="form-control" id="CE-humor"></td>
                <td><input type="text" class="form-control" id="CE-local"></td>
                <td><input type="text" class="form-control" id="CE-alimento"></td>
                <td><input type="text" class="form-control" id="CE-quant"></td>
            </tr>
            </tbody>
        </table>
            <div class="btn-group btn-group-justified btn-group-raised" id="menuDiarioAlimentar">
        <a class="btn btn-lg btn-success " href="#" id="btnSalvar">Salvar</a>
        <a class="btn btn-lg btn-warning " href="#" id="btnLimpar">Limpar</a>
        <a class="btn btn-lg btn-danger " href="#" id="btnCancelar">Cancelar</a>

    </div>
    </div>
</div>
</body>
</html>