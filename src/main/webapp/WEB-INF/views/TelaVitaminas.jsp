<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"
%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
            <!DOCTYPE html>
            <html lang="pt-br">
                
                <head>
                    <meta charset="utf-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1">
                    <title>
                        Vitaminas
                    </title>
                    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap.min.css' />"
                    />
                    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/dataTables.bootstrap.min.css' />"
                    />
                    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap-material-design.min.css' />"
                    />
                    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/ripples.min.css' />"
                    />
                    <link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estiloTelas/estiloTelaVitamina.css' />"
                    />
                    <link rel="stylesheet" type="text/css" href="<c:url value ='https://fonts.googleapis.com/icon?family=Material+Icons' />"
                    />
                    <script src="<c:url value ='/resources/JavaScript/angular/angular.min.js' />"
                    />
                    </script>
                    <script src="<c:url value ='/resources/JavaScript/jquery/jquery-2.1.4.js' />"
                    />
                    </script>
                    <script src="<c:url value ='/resources/JavaScript/bootstrap/material.min.js' />"
                    />
                    </script>
                    <script src="<c:url value ='/resources/JavaScript/bootstrap/ripples.min.js' />"
                    />
                    </script>
                    <script src="<c:url value ='/resources/JavaScript/bootstrap/bootstrap.min.js' />"
                    />
                    </script>
                    <script src="<c:url value ='/resources/JavaScript/validarTelas/validarVitaminas.js' />"
                    />
                    </script>
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
                                    Vitaminas
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
                            <p class="Intro">
                                As vitaminas são substâncias que o organismo não tem condições de produzir
                                e, por isso, precisam fazer parte da dieta alimentar. Suas principais fontes
                                são as frutas, verduras e legumes, mas elas também são encontradas na carne,
                                no leite, nos ovos e cereais.
                            </p>
                            <div class="row">
                                <div class="col-sm-6 col-md-4" id="idVitaminaA">
                                    <div class="thumbnail">
                                        <img src="<c:url value = '/resources/Imagens/imagensTelas/cenoura.jpg' />"
                                        alt="cenoura">
                                        <div class="caption">
                                            <h3>
                                                Vitamina A
                                            </h3>
                                            <p class="introd">
                                                A vitamina A é importante no crescimento, pois forma ossos e dentes, melhora
                                                a pele e o cabelo, protege os aparelhos respiratório, digestivo e urinário
                                                e também é importante para a visão.
                                            </p>
                                            <br>
                                            <br>
                                            <br>
                                            <p>
                                                <a class="btn btn-primary" id="btnVitaminaA" role="button">Onde encontrá-las?</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4" id="OndeVitA">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            Alimentos ricos em Vitamina A
                                        </div>
                                        <div class="panel-body">
                                            <ul>
                                                <li>
                                                    Fígado
                                                </li>
                                                <li>
                                                    Gema de ovo
                                                </li>
                                                <li>
                                                    Óleos de peixes
                                                </li>
                                                <li>
                                                    Cenoura
                                                </li>
                                                <li>
                                                    Espinafre
                                                </li>
                                                <li>
                                                    Manga
                                                </li>
                                                <li>
                                                    Mamão
                                                </li>
                                            </ul>
                                            <br>
                                            <p>
                                                <a class="btn btn-primary" id="btnVitaminaAreturn" role="button">Voltar</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4" id="idVitaminaB">
                                    <div class="thumbnail">
                                        <img src="<c:url value = '/resources/Imagens/imagensTelas/leguminosas.jpg' />"
                                        alt="leguminosas">
                                        <div class="caption">
                                            <h3>
                                                Vitaminas do Complexo B
                                            </h3>
                                            <p>
                                                As vitaminas do complexo B, desempenham um papel importante em manter
                                                nosso corpo funcionando como máquinas bem lubrificadas. Estes nutrientes
                                                essenciais ajudam a converter os alimentos em combustível, o que nos permite
                                                ficar energizados durante todo o dia.
                                            </p>
                                            <p>
                                                <a class="btn btn-primary" id="btnVitaminaB" role="button">Onde encontrá-las?</a>
                                                <a class="btn btn-default" id="btnQuaisVitB" role="button">Quais são?</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4" id="OndeVitB">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            Alimentos ricos em Vitamina B
                                        </div>
                                        <div class="panel-body">
                                            <ul>
                                                <li>
                                                    Sementes de girassol
                                                </li>
                                                <li>
                                                    Castanha do Pará
                                                </li>
                                                <li>
                                                    Amêndoas
                                                </li>
                                                <li>
                                                    Amendoim
                                                </li>
                                                <li>
                                                    Queijo Cottage
                                                </li>
                                                <li>
                                                    Salmão
                                                </li>
                                                <li>
                                                    Abacate
                                                </li>
                                                <li>
                                                    Ameixa
                                                </li>
                                                <li>
                                                    Avelã
                                                </li>
                                                <li>
                                                    Lentilhas
                                                </li>
                                            </ul>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <p>
                                                <a class="btn btn-primary" id="btnVitaminaBreturn" role="button">Voltar</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4" id="QuaisVitB">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            Vitaminas do complexo B
                                        </div>
                                        <div class="panel-body">
                                            <ul>
                                                <li>
                                                    B1 (Tiamina)
                                                </li>
                                                <li>
                                                    B2 (Riboflavina)
                                                </li>
                                                <li>
                                                    B3 (Niacina)
                                                </li>
                                                <li>
                                                    B5 (Ácido pantotênico)
                                                </li>
                                                <li>
                                                    B6 (Piridoxina)
                                                </li>
                                                <li>
                                                    B7 (Biotina)
                                                </li>
                                                <li>
                                                    B9 (Ácido fólico)
                                                </li>
                                                <li>
                                                    B12 (Cobalamina)
                                                </li>
                                            </ul>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <p>
                                                <a class="btn btn-primary" id="btnQuaisBReturn" role="button">Voltar</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4" id="idVitaminaC">
                                    <div class="thumbnail">
                                        <img src="<c:url value = '/resources/Imagens/imagensTelas/vitaminac.jpg' />"
                                        alt="vitamina -c">
                                        <div class="caption">
                                            <h3>
                                                Vitamina C
                                            </h3>
                                            <p>
                                                A vitamina C preserva ossos, dentes, gengivas e vasos sangüíneos, aumenta
                                                a absorção de ferro, ajuda o sistema imunológico e aumenta a cicatrização.
                                            </p>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <p>
                                                <a class="btn btn-primary" id="btnVitaminaC" role="button">Onde encontrá-la?</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4" id="OndeVitC">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            Alimentos ricos em Vitamina C
                                        </div>
                                        <div class="panel-body">
                                            <ul>
                                                <li>
                                                    Acerola
                                                </li>
                                                <li>
                                                    Laranja
                                                </li>
                                                <li>
                                                    Morango
                                                </li>
                                                <li>
                                                    Pimentão
                                                </li>
                                                <li>
                                                    Kiwi
                                                </li>
                                                <li>
                                                    Goiaba vermelha
                                                </li>
                                                <li>
                                                    Brócolis
                                                </li>
                                                <li>
                                                    Manga
                                                </li>
                                            </ul>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <p>
                                                <a class="btn btn-primary" id="btnVitaminaCreturn" role="button">Voltar</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6 col-md-4" id="idVitaminaD">
                                    <div class="thumbnail">
                                        <img src="<c:url value = '/resources/Imagens/imagensTelas/ovos.jpg' />"
                                        alt="vitamina D">
                                        <div class="caption">
                                            <h3>
                                                Vitamina D
                                            </h3>
                                            <p>
                                                A vitamina D é fundamental no fortalecimento dos ossos e dentes e ajuda
                                                na coagulação do sangue.
                                            </p>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <p>
                                                <a class="btn btn-primary" id="btnVitaminaD" role="button">Onde encontrá-la?</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4" id="OndeVitD">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            Alimentos ricos em Vitamina D
                                        </div>
                                        <div class="panel-body">
                                            <ul>
                                                <li>
                                                    Óleo de fígado de bacalhau
                                                </li>
                                                <li>
                                                    Peixes ricos em óleo e gordura
                                                </li>
                                                <li>
                                                    Ostras
                                                </li>
                                                <li>
                                                    Cogumelos
                                                </li>
                                                <li>
                                                    Caviar
                                                </li>
                                                <li>
                                                    Queijo
                                                </li>
                                                <li>
                                                    Ovos
                                                </li>
                                                <li>
                                                    Carne de porco
                                                </li>
                                            </ul>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <p>
                                                <a class="btn btn-primary" id="btnVitaminaDreturn" role="button">Voltar</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4" id="idVitaminaE">
                                    <div class="thumbnail">
                                        <img src="<c:url value = '/resources/Imagens/imagensTelas/vitaminae.jpg' />"
                                        alt="vitamina E">
                                        <div class="caption">
                                            <h3>
                                                Vitamina E
                                            </h3>
                                            <p>
                                                A vitamina E é uma vitamina solúvel em gordura que primeiramente funciona
                                                como um anti-oxidante, o que significa que ajuda a prevenir ou reduzir
                                                os danos causados ​​por radicais livres, em última análise a redução do
                                                risco de problemas de saúde, como a doença cardíaca ou cancro.
                                            </p>
                                            <p>
                                                <a class="btn btn-primary" id="btnVitaminaE" role="button">Onde encontrá-la?</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4" id="OndeVitE">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            Alimentos ricos em Vitamina E
                                        </div>
                                        <div class="panel-body">
                                            <ul>
                                                <li>
                                                    Amêndoas
                                                </li>
                                                <li>
                                                    Avelã
                                                </li>
                                                <li>
                                                    Pistache
                                                </li>
                                                <li>
                                                    Mamão
                                                </li>
                                                <li>
                                                    Acelga
                                                </li>
                                                <li>
                                                    Amendoim
                                                </li>
                                                <li>
                                                    Óleo de girassol
                                                </li>
                                                <li>
                                                    Semente de girassol
                                                </li>
                                            </ul>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <p>
                                                <a class="btn btn-primary" id="btnVitaminaEreturn" role="button">Voltar</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                
                                                                <div class="col-sm-6 col-md-4" id="idVitaminaK">
                                    <div class="thumbnail">
                                        <img src="<c:url value = '/resources/Imagens/imagensTelas/vitaminak.jpg' />"
                                        alt="vitamina K">
                                        <div class="caption">
                                            <h3>
                                                Vitamina K
                                            </h3>
                                            <p>
                                                A vitamina K é importante principalmente para uma boa coagulação sanguínea,
                                                 evitando assim hemorragias e facilitando a cicatrização.
                                            </p>
                                            <p><br><br><br><br>
                                                <a class="btn btn-primary" id="btnVitaminaK" role="button">Onde encontrá-la?</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4" id="OndeVitK">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            Alimentos ricos em Vitamina K
                                        </div>
                                        <div class="panel-body">
                                            <ul>
                                                <li>
                                                    Couve-de-bruxelas
                                                </li>
                                                <li>
                                                    Brócolis
                                                </li>
                                                <li>
                                                    Couve-flor
                                                </li>
                                                <li>
                                                    Acelga
                                                </li>
                                                <li>
                                                    Espinafre
                                                </li>
                                                <li>
                                                    Alface
                                                </li>
                                                <li>
                                                    Cenoura
                                                </li>
                                                <li>
                                                    Aspargos
                                                </li>
                                            </ul>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <p>
                                                <a class="btn btn-primary" id="btnVitaminaKreturn" role="button">Voltar</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                             <!-- continuar daqui -->Colocar outras vitaminas tipo ferro, calcio, sais minerais, etc
                        </div>
                     </div>
                </body>
            
            </html>