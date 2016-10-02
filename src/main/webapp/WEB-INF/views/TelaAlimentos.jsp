<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Alimentos</title>
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/bootstrap-material-design.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/bootstrap/ripples.min.css' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/Css/estiloTelas/estiloTelaAlimentos' />" />
<link rel="stylesheet" type="text/css" href="<c:url value ='https://fonts.googleapis.com/icon?family=Material+Icons' />" />
<script src="<c:url value ='/resources/JavaScript/angular/angular.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/jquery/jquery-2.1.4.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/material.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/ripples.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/bootstrap/bootstrap.min.js' />" /></script>
<script src="<c:url value ='/resources/JavaScript/validarTelas/validarAlimentos.js' />" /></script>
</head>

<body>
	<div class="container-fluid col-md-12">
		<div class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
						<span class="icon-bar"> </span> 
						<span class="icon-bar"> </span> 
						<span class="icon-bar"> </span>
					</button>
					<a type="button" class="navbar-brand" id="btnTelaPrincipal" href="/ProjetoTcc/telaPrincipal">Início</a>
				</div>
				<div class="navbar-collapse collapse navbar-responsive-collapse">
					<ul class="nav navbar-nav">
						<!-- Varios Botoes -->
						<li class="active"><a type="button" href="/ProjetoTcc/telaAnamnese">Perfil</a></li>
						<li><a type="button" href="javascript:void(0)">Cardápio</a></li>
						<li><a type="button" id="btnAlimentos">Alimentos</a></li>
						<li><a type="button" href="javascript:void(0)">Vitaminas</a></li>
						<li><a type="button" href="javascript:void(0)">Resultados</a></li>
						<li><a type="button" href="javascript:void(0)">Avaliação</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="bootstrap-elements.html" data-target="#" class="dropdown-toggle" data-toggle="dropdown">Ajustes
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li>
									<a type="button" href="/ProjetoTcc/telaUpdateCadastro">Alterar Dados</a>
								</li>
								<li class="divider"></li>
								<li>
									<a data-toggle="modal" href="#mymodal">Sair</a>
								</li>
							</ul>
						</li>
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
						<!-- Voltar para tela de Login -->
						<a href="/ProjetoTcc/sairSistema">
							<button type="button" class="btn btn-primary">Sim</button>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid col-md-12">
		<div class="jumbotron">
			<h1>Alimentos</h1>
			<p>Tabela de Calorias dos alimentos mais consumidos:</p>
			<table class="table table-striped table-bordered" cellspacing="0" width="100%">
  <thead>
  <tr>
    <th></th>
    <th>Alimentos e Bebidas</th>
    <th>Quantidade</th>
    <th>Calorias</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>1</td>
    <td>Água de coco verde</td>
    <td>1 copo de 240 ml</td>
    <td>62</td>
  </tr>
  <tr>
    <td>2</td>
    <td>Café com açúcar</td>
    <td>1 xícara de 50 ml</td>
    <td>33</td>
  </tr>
  <tr>
    <td>3</td>
    <td>Café sem açúcar</td>
    <td>1 xícara de 40 ml</td>
    <td>3</td>
  </tr>
  <tr>
    <td>4</td>
    <td>Caldo de cana</td>
    <td>1 copo de 240 ml</td>
    <td>202</td>
  </tr>
  <tr>
    <td>5</td>
    <td>Suco de abacaxi natural</td>
    <td>1 copo de 240 ml</td>
    <td>100</td>
  </tr>
  <tr>
    <td>6</td>
    <td>Suco de acerola natural</td>
    <td>1 copo de 240 ml</td>
    <td>36</td>
  </tr>
  <tr>
    <td>7</td>
    <td>Suco de maçã natural</td>
    <td>1 copo de 240 ml</td>
    <td>154</td>
  </tr>
  <tr>
    <td>8</td>
    <td>Suco de manga natural</td>
    <td>1 copo de 240 ml</td>
    <td>109</td>
  </tr>
  <tr>
    <td>9</td>
    <td>Suco de melão natural</td>
    <td>1 copo de 240 ml</td>
    <td>60</td>
  </tr>
   <tr>
    <td>10</td>
    <td>Suco de milho verde natural</td>
    <td>1 copo de 240 ml</td>
    <td>271</td>
  </tr>
   <tr>
    <td>11</td>
    <td>Suco de morango natural</td>
    <td>1 copo de 240 ml</td>
    <td>39</td>
  </tr>
   <tr>
    <td>12</td>
    <td>Suco de pessêgo natural</td>
    <td>1 copo de 240 ml</td>
    <td>39</td>
  </tr>
   <tr>
    <td>13</td>
    <td>Suco de tomate fresco natural</td>
    <td>1 copo de 240 ml</td>
    <td>27</td>
  </tr>
   <tr>
    <td>14</td>
    <td>Aguardente</td>
    <td>1/2 copo - 120 ml</td>
    <td>277</td>
  </tr>
  <tr>
    <td>15</td>
    <td>Cerveja</td>
    <td>1 lata - 350 ml</td>
    <td>147</td>
  </tr>
  <tr>
    <td>16</td>
    <td>Cerveja light</td>
    <td>1 lata - 360 ml</td>
    <td>148</td>
  </tr>
  <tr>
    <td>17</td>
    <td>Champanhe</td>
    <td>1 taça de 125 ml</td>
    <td>85</td>
  </tr>
   <tr>
    <td>18</td>
    <td>Chopp</td>
    <td>1 tulipa de 300 ml</td>
    <td>180</td>
  </tr>
  <tr>
    <td>19</td>
    <td>Wisky</td>
    <td>1 Dose de 100 ml</td>
    <td>240</td>
  </tr>
  <tr>
    <td>20</td>
    <td>Vinho branco doce</td>
    <td>1 taça de 125 ml</td>
    <td>178</td>
  </tr>
    <tr>
    <td>21</td>
    <td>Vinho branco seco</td>
    <td>1 taça de 125 ml</td>
    <td>107</td>
  </tr>
   <tr>
    <td>22</td>
    <td>Vinho rosé</td>
    <td>1 taça de 125 ml</td>
    <td>93</td>
  </tr>
   <tr>
    <td>22</td>
    <td>Vinho tinto seco</td>
    <td>1 taça de 125 ml</td>
    <td>107</td>
  </tr>
  <tr>
    <td>23</td>
    <td>Vodka</td>
    <td>1 dose de 100 ml</td>
    <td>240</td>
  </tr>
   <tr>
    <td>24</td>
    <td>Coca-Cola</td>
    <td>1 lata de 350 ml</td>
    <td>137</td>
  </tr>
   <tr>
    <td>25</td>
    <td>Coca-Cola Light</td>
    <td>1 lata de 350 ml</td>
    <td>1,5</td>
  </tr>
   <tr>
    <td>26</td>
    <td>Fanta</td>
    <td>1 lata de 350 ml</td>
    <td>189</td>
  </tr>
   <tr>
    <td>27</td>
    <td>Fanta Light</td>
    <td>1 lata de 350 ml</td>
    <td>15</td>
  </tr>
   <tr>
    <td>28</td>
    <td>Gatorade</td>
    <td>1 garrafa de 470 ml</td>
    <td>109</td>
  </tr>
    <tr>
    <td>29</td>
    <td>Guarana</td>
    <td>1 copo de 240 ml</td>
    <td>75</td>
  </tr>
    <tr>
    <td>30</td>
    <td>Guarana Diet</td>
    <td>1 lata de 350 ml</td>
    <td>4</td>
  </tr>
  <tr>
    <td>31</td>
    <td>Sprite</td>
    <td>1 lata de 350 ml</td>
    <td>115</td>
  </tr>
  <tr>
    <td>32</td>
    <td>Sprite Diet</td>
    <td>1 lata de 350 ml</td>
    <td>5</td>
  </tr>
  <tr>
    <td>33</td>
    <td>Alcatra assada</td>
    <td>2 fatias - 150 gramas</td>
    <td>301</td>
  </tr>
  <tr>
    <td>34</td>
    <td>Alcatra frita</td>
    <td>2 fatias - 100 gramas</td>
    <td>235</td>
  </tr>
  <tr>
    <td>35</td>
    <td>Almôndega caseira de carne</td>
    <td>1 unidade - 30 gramas</td>
    <td>61</td>
  </tr>
  <tr>
    <td>36</td>
    <td>Almôndega de frango</td>
    <td>1 unidade - 25 gramas</td>
    <td>54</td>
  </tr>
   <tr>
    <td>36</td>
    <td>Almôndega de peru</td>
    <td>1 unidade - 25 gramas</td>
    <td>46</td>
  </tr>
   <tr>
    <td>37</td>
    <td>Antecoxa de frango assado</td>
    <td>2 unidade - 100 gramas</td>
    <td>109</td>
  </tr>
   <tr>
    <td>38</td>
    <td>Baby beef</td>
    <td>1 unidade - 100 gramas</td>
    <td>120</td>
  </tr>
   <tr>
    <td>39</td>
    <td>Bacon fatiado</td>
    <td>1 fatia - 10 gramas</td>
    <td>54</td>
  </tr>
  <tr>
    <td>40</td>
    <td>Bacon frito</td>
    <td>Cubos - 30 gramas</td>
    <td>198</td>
  </tr>
  <tr>
    <td>41</td>
    <td>Bisteca de porco</td>
    <td>1 unidade - 100 gramas</td>
    <td>337</td>
  </tr>
  <tr>
    <td>42</td>
    <td>Costeleta de porco</td>
    <td>1 unidade - 100 gramas</td>
    <td>483</td>
  </tr>
   <tr>
    <td>43</td>
    <td>Coxa de frango</td>
    <td>1 unidade - 100 gramas</td>
    <td>144</td>
  </tr>
  <tr>
    <td>44</td>
    <td>Coxa de frango assada c/ pele</td>
    <td>1 unidade - 100 gramas</td>
    <td>110</td>
  </tr>
  <tr>
    <td>45</td>
    <td>Coxa de frango assada s/ pele</td>
    <td>1 fatia - 100 gramas</td>
    <td>98</td>
  </tr>
  <tr>
    <td>46</td>
    <td>Coxa de frango cozida</td>
    <td>1 fatia - 100 gramas</td>
    <td>120</td>
  </tr>
    <tr>
    <td>47</td>
    <td>Cupim</td>
    <td>2 fatias - 150 gramas</td>
    <td>375</td>
  </tr>
    <tr>
    <td>48</td>
    <td>Fígado de boi frito</td>
    <td>1 fatia - 100 gramas</td>
    <td>210</td>
  </tr>
    <tr>
    <td>49</td>
    <td>Fígado de galinha</td>
    <td>1 fatia - 25 gramas</td>
    <td>35</td>
  </tr>
   <tr>
    <td>50</td>
    <td>Filé de frango</td>
    <td>1 fatia - 100 gramas</td>
    <td>101</td>
  </tr>
   <tr>
    <td>51</td>
    <td>Filé mignon</td>
    <td>1 fatia - 100 gramas</td>
    <td>140</td>
  </tr>
    <tr>
    <td>52</td>
    <td>Hambuguer bovino</td>
    <td>1 unidade - 56 gramas</td>
    <td>116</td>
  </tr>
   <tr>
    <td>53</td>
    <td>Hambuguer de calabresa</td>
    <td>1 unidade - 56 gramas</td>
    <td>149</td>
  </tr>
   <tr>
    <td>54</td>
    <td>Hambuguer de chester</td>
    <td>1 unidade - 56 gramas</td>
    <td>105</td>
  </tr>
  <tr>
    <td>55</td>
    <td>Hambuguer de frango</td>
    <td>1 unidade - 56 gramas</td>
    <td>179</td>
  </tr>
   <tr>
    <td>56</td>
    <td>Lagarto de boi assado</td>
    <td>3 fatias - 100 gramas</td>
    <td>170</td>
  </tr>
  <tr>
    <td>57</td>
    <td>Leitão</td>
    <td>2 pedaços - 170 gramas</td>
    <td>308</td>
  </tr> 
  <tr>
    <td>58</td>
    <td>Lingua de boi cozida</td>
    <td>2 pedaços - 100 gramas</td>
    <td>287</td>
  </tr>  
  <tr>
    <td>59</td>
    <td>Lombo assado</td>
    <td>1 fatia - 100 gramas</td>
    <td>272</td>
  </tr> 
 <tr>
    <td>60</td>
    <td>Maminha</td>
    <td>1 fatia - 100 gramas</td>
    <td>141</td>
  </tr> 
   <tr>
    <td>61</td>
    <td>Miolo de coxão mole</td>
    <td>1 fatia - 100 gramas</td>
    <td>120</td>
  </tr> 
   <tr>
    <td>62</td>
    <td>Moela de galinha</td>
    <td>1 fatia - 100 gramas</td>
    <td>78</td>
  </tr> 
 <tr>
    <td>63</td>
    <td>Músculo cozido</td>
    <td>1 fatia - 100 gramas</td>
    <td>180</td>
  </tr>  
  <tr>
    <td>64</td>
    <td>Patinho de boi assado</td>
    <td>1 fatia - 100 gramas</td>
    <td>200</td>
  </tr>
  <tr>
    <td>65</td>
    <td>Peito de frango s/ pele</td>
    <td>1 fatia - 100 gramas</td>
    <td>100</td>
  </tr>
   <tr>
    <td>66</td>
    <td>Pernil de porco assado</td>
    <td>1 fatia - 100 gramas</td>
    <td>196</td>
  </tr>
   <tr>
    <td>67</td>
    <td>Perú</td>
    <td>1 fatia - 100 gramas</td>
    <td>155</td>
  </tr>
    <tr>
    <td>68</td>
    <td>Picanha</td>
    <td>1 fatia - 100 gramas</td>
    <td>287</td>
  </tr>
    <tr>
    <td>69</td>
    <td>Rã</td>
    <td>1 unidade - 100 gramas</td>
    <td>64</td>
  </tr>
    <tr>
    <td>70</td>
    <td>Rabo de porco salgado</td>
    <td>1 unidade - 100 gramas</td>
    <td>426</td>
  </tr>
    <tr>
    <td>71</td>
    <td>Rosbife</td>
    <td>1 fatia - 100 gramas</td>
    <td>166</td>
  </tr>
  <tr>
    <td>72</td>
    <td>Tender</td>
    <td>1 fatia - 100 gramas</td>
    <td>210</td>
  </tr>
  <tr>
    <td>73</td>
    <td>Apresuntado</td>
    <td>1 fatia - 15 gramas</td>
    <td>22</td>
  </tr>
    <tr>
    <td>74</td>
    <td>Blanquet de peru</td>
    <td>1 fatia - 10 gramas</td>
    <td>13</td>
  </tr>
   <tr>
    <td>75</td>
    <td>Copa fatiada maturada</td>
    <td>1 fatia - 6 gramas</td>
    <td>22</td>
  </tr>
    <tr>
    <td>76</td>
    <td>Linguiça calabresa</td>
    <td>1 porção - 100 gramas</td>
    <td>300</td>
  </tr>
    <tr>
    <td>77</td>
    <td>Linguiça de frango</td>
    <td>1 porção - 100 gramas</td>
    <td>166</td>
  </tr>
    <tr>
    <td>78</td>
    <td>Linguiça de peru defumada</td>
    <td>1 porção - 100 gramas</td>
    <td>148</td>
  </tr>
    <tr>
    <td>79</td>
    <td>Linguiça toscana</td>
    <td>1 porção - 100 gramas</td>
    <td>255</td>
  </tr>
    <tr>
    <td>80</td>
    <td>Lombo canadense</td>
    <td>1 fatia - 15 gramas</td>
    <td>21</td>
  </tr>
    <tr>
    <td>81</td>
    <td>Lombo defumado</td>
    <td>1 fatia - 15 gramas</td>
    <td>29</td>
  </tr>
   <tr>
    <td>82</td>
    <td>Morcela</td>
    <td>1 porção - 100 gramas</td>
    <td>258</td>
  </tr>
   <tr>
    <td>83</td>
    <td>Mortadela</td>
    <td>1 fatia - 15 gramas</td>
    <td>41</td>
  </tr>
   <tr>
    <td>84</td>
    <td>Mortadela de frango</td>
    <td>1 fatia - 15 gramas</td>
    <td>20</td>
  </tr>
   <tr>
    <td>85</td>
    <td>Paio</td>
    <td>1 unidade - 100 gramas</td>
    <td>314</td>
  </tr>
  <tr>
    <td>86</td>
    <td>Peito de peru defumado</td>
    <td>1 fatia - 15 gramas</td>
    <td>14</td>
  </tr>
  <tr>
    <td>87</td>
    <td>Presunto cozido</td>
    <td>1 fatia - 15 gramas</td>
    <td>18</td>
  </tr>
    <tr>
    <td>88</td>
    <td>Presunto cru</td>
    <td>1 fatia - 15 gramas</td>
    <td>54</td>
  </tr>
     <tr>
    <td>89</td>
    <td>Salame italiano</td>
    <td>1 fatia - 5 gramas</td>
    <td>20</td>
  </tr>
    <tr>
    <td>90</td>
    <td>Salaminho</td>
    <td>1 fatia - 5 gramas</td>
    <td>20</td>
  </tr>
   <tr>
    <td>91</td>
    <td>Salsicha</td>
    <td>1 unidade - 40 gramas</td>
    <td>120</td>
  </tr>
   <tr>
    <td>92</td>
    <td>Salsicha light de Chester</td>
    <td>1 unidade - 40 gramas</td>
    <td>64</td>
  </tr>
   <tr>
    <td>93</td>
    <td>Salsicha hotdog</td>
    <td>1 unidade - 50 gramas</td>
    <td>115</td>
  </tr>
   <tr>
    <td>94</td>
    <td>Salsichao</td>
    <td>1 unidade - 40 gramas</td>
    <td>120</td>
  </tr>
  <tr>
    <td>95</td>
    <td>Anchova cozida</td>
    <td>1 fatia - 100 gramas</td>
    <td>118</td>
  </tr>
  <tr>
    <td>96</td>
    <td>Anchova à milanesa</td>
    <td>1 fatia - 100 gramas</td>
    <td>210</td>
  </tr>
  <tr>
    <td>97</td>
    <td>Atum cru/td>
    <td>1 porção - 100 gramas</td>
    <td>146</td>
  </tr>
    <tr>
    <td>98</td>
    <td>Bacalhau cozido/td>
    <td>1 porção - 100 gramas</td>
    <td>100</td>
  </tr>
    <tr>
    <td>99</td>
    <td>Cação cozido/td>
    <td>1 porção - 100 gramas</td>
    <td>129</td>
  </tr>
  <tr>
    <td>100</td>
    <td>Camarão cozido/td>
    <td>1 porção - 100 gramas</td>
    <td>82</td>
  </tr>
    <tr>
    <td>101</td>
    <td>Camarão frito</td>
    <td>1 porção - 100 gramas</td>
    <td>310</td>
  </tr>
    <tr>
    <td>102</td>
    <td>Casquinha de caranguejo</td>
    <td>1 unidade</td>
    <td>250</td>
  </tr>
    <tr>
    <td>103</td>
    <td>Casquinha de siri</td>
    <td>1 unidade - 200 gramas</td>
    <td>413</td>
  </tr>
   <tr>
    <td>104</td>
    <td>Caviar</td>
    <td>1 porção - 100 gramas</td>
    <td>240</td>
  </tr>
  <tr>
    <td>105</td>
    <td>Dourado</td>
    <td>1 fatia - 100 gramas</td>
    <td>88</td>
  </tr>
   <tr>
    <td>106</td>
    <td>Haddock cozido</td>
    <td>1 fatia - 100 gramas</td>
    <td>100</td>
  </tr>
     <tr>
    <td>107</td>
    <td>Kani Kama</td>
    <td>1 steak - 16 gramas</td>
    <td>13</td>
  </tr>
    <tr>
    <td>108</td>
    <td>Lagosta cozida s/ molho</td>
    <td>1 unidade - 200 gramas</td>
    <td>196</td>
  </tr>
  <tr>
    <td>109</td>
    <td>Linguado assado ou grelhado</td>
    <td>1 fatia - 100 gramas</td>
    <td>90</td>
  </tr>
    <tr>
    <td>110</td>
    <td>Lula cozida</td>
    <td>1 porção - 100 gramas</td>
    <td>93</td>
  </tr>
   <tr>
    <td>111</td>
    <td>Lula frita</td>
    <td>1 porção - 100 gramas</td>
    <td>373</td>
  </tr>
   <tr>
    <td>112</td>
    <td>Mariscos cozidos</td>
    <td>1 porção - 100 gramas</td>
    <td>96</td>
  </tr>
    <tr>
    <td>113</td>
    <td>Mexilhão cozidos</td>
    <td>1 porção - 100 gramas</td>
    <td>79</td>
  </tr>
    <tr>
    <td>114</td>
    <td>Namorado cozido</td>
    <td>1 fatia - 100 gramas</td>
    <td>122</td>
  </tr>
    <tr>
    <td>115</td>
    <td>Ostras</td>
    <td>1 porção - 100 gramas</td>
    <td>81</td>
  </tr>
    <tr>
    <td>116</td>
    <td>Pescada cozida</td>
    <td>1 fatia - 100 gramas</td>
    <td>97</td>
  </tr>
    <tr>
    <td>117</td>
    <td>Pintado grelhado</td>
    <td>1 fatia - 100 gramas</td>
    <td>104</td>
  </tr>
    <tr>
    <td>118</td>
    <td>Polvo cru</td>
    <td>1 porção - 100 gramas</td>
    <td>64</td>
  </tr>
    <tr>
    <td>119</td>
    <td>Robalo</td>
    <td>1 fatia - 100 gramas</td>
    <td>72</td>
  </tr>
    <tr>
    <td>120</td>
    <td>Salmão assado ou grelhado</td>
    <td>1 fatia - 100 gramas</td>
    <td>292</td>
  </tr>
   <tr>
    <td>121</td>
    <td>Salmão cru</td>
    <td>1 fatia - 100 gramas</td>
    <td>211</td>
  </tr>
   <tr>
    <td>122</td>
    <td>Sardinha em óleo</td>
    <td>1 porção - 100 gramas</td>
    <td>174</td>
  </tr>
   <tr>
    <td>123</td>
    <td>Sardinha em azeite</td>
    <td>1 porção - 100 gramas</td>
    <td>298</td>
  </tr>
   <tr>
    <td>124</td>
    <td>Tainha cozida</td>
    <td>1 porção - 100 gramas</td>
    <td>204</td>
  </tr>
   <tr>
    <td>125</td>
    <td>Truta assada ou grelhada</td>
    <td>1 fatia - 100 gramas</td>
    <td>189</td>
  </tr>
   <tr>
    <td>126</td>
    <td>Truta assada ou grelhada</td>
    <td>1 fatia - 100 gramas</td>
    <td>189</td>
  </tr>
     <tr>
    <td>127</td>
    <td>Bolacha de agua e sal</td>
    <td>1 unidade - 32 gramas</td>
    <td>189</td>
  </tr>
    <tr>
    <td>128</td>
    <td>Biscoito de manteiga</td>
    <td>1 porção - 100 gramas</td>
    <td>500</td>
  </tr>
    <tr>
    <td>129</td>
    <td>Biscoito integral de trigo</td>
    <td>1 unidade - 15 gramas</td>
    <td>28</td>
  </tr>
    <tr>
    <td>130</td>
    <td>Bolacha cream cracker</td>
    <td>1 unidade</td>
    <td>31</td>
  </tr>
    <tr>
    <td>131</td>
    <td>Bolacha de leite</td>
    <td>1 unidade</td>
    <td>24</td>
  </tr>
    <tr>
    <td>132</td>
    <td>Bolacha de maisena</td>
    <td>1 unidade</td>
    <td>24</td>
  </tr>
   <tr>
    <td>133</td>
    <td>Bolacha passatempo</td>
    <td>1 unidade</td>
    <td>76</td>
  </tr>
   <tr>
    <td>134</td>
    <td>Bolacha waffer chocolate</td>
    <td>1 unidade</td>
    <td>41</td>
  </tr>
     <tr>
    <td>135</td>
    <td>Bolinho Ana maria da Pullman</td>
    <td>1 unidade - 50 gramas</td>
    <td>130</td>
  </tr>
      <tr>
    <td>136</td>
    <td>Bolo de cenoura caseiro</td>
    <td>1 fatia - 50 gramas</td>
    <td>135</td>
  </tr>
  <tr>
    <td>137</td>
    <td>Bolo de cenoura c/ cobertura de chocolate</td>
    <td>1 fatia - 50 gramas</td>
    <td>371</td>
  </tr>
       <tr>
    <td>138</td>
    <td>Bolo de chocolate</td>
    <td>1 fatia - 50 gramas</td>
    <td>171</td>
  </tr>
       <tr>
    <td>139</td>
    <td>Bolo de fubá caseiro</td>
    <td>1 fatia - 50 gramas</td>
    <td>310</td>
  </tr>
     <tr>
    <td>140</td>
    <td>Bolo de laranja</td>
    <td>1 fatia - 50 gramas</td>
    <td>173</td>
  </tr>
    <tr>
    <td>141</td>
    <td>Bolo de pão de ló</td>
    <td>1 fatia - 50 gramas</td>
    <td>268</td>
  </tr>
   <tr>
    <td>142</td>
    <td>Bolo de coco</td>
    <td>1 fatia - 50 gramas</td>
    <td>186</td>
  </tr>
    <tr>
    <td>143</td>
    <td>Chocolate aerado ao leite</td>
    <td>1 unidade - 30 gramas</td>
    <td>167</td>
  </tr>
    <tr>
    <td>144</td>
    <td>Chocolate alfajor </td>
    <td>1 unidade - 50 gramas</td>
    <td>190</td>
  </tr>
      <tr>
    <td>145</td>
    <td>bombom alpino chocolate ao leite </td>
    <td>1 unidade - 13 gramas</td>
    <td>71</td>
  </tr>
   <tr>
    <td>146</td>
    <td>chocolate meio-amargo </td>
    <td>1 unidade - 200 gramas</td>
    <td>1074</td>
  </tr>
   <tr>
    <td>147</td>
    <td>chocolate ao leite </td>
    <td>1 unidade - 200 gramas</td>
    <td>1074</td>
  </tr>
   <tr>
    <td>148</td>
    <td>chocolate bis </td>
    <td>20 unidades - caixa</td>
    <td>800</td>
  </tr>
  <tr>
    <td>149</td>
    <td>chocolate em pó </td>
    <td>1 colher de sopa - 6 gramas</td>
    <td>22</td>
  </tr>
  <tr>
    <td>150</td>
    <td>chocolate diamante negro </td>
    <td>1 unidade - 30 gramas</td>
    <td>156</td>
  </tr>
   <tr>
    <td>151</td>
    <td>chocolate diplomata </td>
    <td>1 unidade - 11 gramas</td>
    <td>60</td>
  </tr>
     <tr>
    <td>152</td>
    <td>chocolate branco </td>
    <td>1 unidade - 30 gramas</td>
    <td>170</td>
  </tr>
   <tr>
    <td>153</td>
    <td>chocolate ouro branco </td>
    <td>1 unidade - 21,5 gramas</td>
    <td>114</td>
  </tr>
   <tr>
    <td>154</td>
    <td>chocolate sulflair </td>
    <td>1 unidade - 50 gramas</td>
    <td>271</td>
  </tr>
     <tr>
    <td>155</td>
    <td>Trufas </td>
    <td>1 unidade - 20 gramas</td>
    <td>89</td>
  </tr>
      <tr>
    <td>156</td>
    <td>Amendoim c/ chocolate </td>
    <td>1 unidade - 40 gramas</td>
    <td>140</td>
  </tr>
    <tr>
    <td>157</td>
    <td>Arroz doce </td>
    <td>1 porção - 100 gramas</td>
    <td>164</td>
  </tr>
    <tr>
    <td>158</td>
    <td>Baba de moça</td>
    <td>1 porção - 150 gramas</td>
    <td>615</td>
  </tr>
  <tr>
    <td>159</td>
    <td>Banana caramelizada</td>
    <td>1 unidade - 50 gramas</td>
    <td>140</td>
  </tr>
    <tr>
    <td>160</td>
    <td>Bananada</td>
    <td>2 unidade - 100 gramas</td>
    <td>254</td>
  </tr>
  <tr>
    <td>161</td>
    <td>Banana passa</td>
    <td>1 unidade - 15 gramas</td>
    <td>28</td>
  </tr>
   <tr>
    <td>162</td>
    <td>Bomba de chocolate</td>
    <td>1 unidade - 80 gramas</td>
    <td>187</td>
  </tr>
   <tr>
    <td>163</td>
    <td>Bombocado</td>
    <td>1 unidade - 30 gramas</td>
    <td>91</td>
  </tr>
   <tr>
    <td>164</td>
    <td>Brigadeiro</td>
    <td>1 unidade - 30 gramas</td>
    <td>96</td>
  </tr>
  <tr>
    <td>165</td>
    <td>Cajuzinho</td>
    <td>1 unidade - 12 gramas</td>
    <td>102</td>
  </tr>
   <tr>
    <td>166</td>
    <td>Calda de caramelo</td>
    <td>1 porção - 20 gramas</td>
    <td>55</td>
  </tr>
  <tr>
    <td>167</td>
    <td>Calda de chocolate c/ leite</td>
    <td>1 porção - 20 gramas</td>
    <td>109</td>
  </tr>
   <tr>
    <td>168</td>
    <td>Canjica</td>
    <td>1 porção - 200 gramas</td>
    <td>226</td>
  </tr>
    <tr>
    <td>169</td>
    <td>Chantibon</td>
    <td>1 porção - 15 gramas</td>
    <td>67</td>
  </tr>
   <tr>
    <td>170</td>
    <td>Claybon Amendocrem</td>
    <td>1 porção - 20 gramas</td>
    <td>123</td>
  </tr>
  <tr>
    <td>171</td>
    <td>Cobertura de caramelo</td>
    <td>1 porção - 15 gramas</td>
    <td>156</td>
  </tr>
  <tr>
    <td>172</td>
    <td>Cobertura de cereja</td>
    <td>1 porção - 15 gramas</td>
    <td>147</td>
  </tr>
  <tr>
    <td>173</td>
    <td>Cobertura de chocolate</td>
    <td>1 porção - 15 gramas</td>
    <td>128</td>
  </tr>
   <tr>
    <td>174</td>
    <td>Cobertura de marshmellow </td>
    <td>1 porção - 15 gramas</td>
    <td>50</td>
  </tr>
   <tr>
    <td>175</td>
    <td>Cocada Branca</td>
    <td>1 unidade</td>
    <td>55</td>
  </tr>
   <tr>
    <td>176</td>
    <td>Creme de amendoim</td>
    <td>1 porção - 15 gramas</td>
    <td>88</td>
  </tr>
  <tr>
    <td>177</td>
    <td>Creme de marshmellow</td>
    <td>1 porção - 15 gramas</td>
    <td>158</td>
  </tr>
   <tr>
    <td>178</td>
    <td>Doce de Banana mole </td>
    <td>1 porção - 20 gramas</td>
    <td>46</td>
  </tr>
    <tr>
    <td>179</td>
    <td>Doce de leite  </td>
    <td>1 fatia - 50 gramas</td>
    <td>158</td>
  </tr>
      <tr>
    <td>180</td>
    <td>Folheado com creme</td>
    <td>1 fatia - 50 gramas</td>
    <td>704</td>
  </tr>
    <tr>
    <td>181</td>
    <td>Fambroesa em calda</td>
    <td>1 porção - 25 gramas</td>
    <td>29</td>
  </tr>
     <tr>
    <td>182</td>
    <td>Geléia de goiaba</td>
    <td>1 porção - 15 gramas</td>
    <td>30</td>
  </tr>
   <tr>
    <td>183</td>
    <td>Geléia de morango</td>
    <td>1 porção - 15 gramas</td>
    <td>39</td>
  </tr>
     <tr>
    <td>184</td>
    <td>Geléia de mocotó</td>
    <td>1 porção - 20 gramas</td>
    <td>36</td>
  </tr>
    <tr>
    <td>185</td>
    <td>Marmelada </td>
    <td>1 fatia - 100 gramas</td>
    <td>264</td>
  </tr>
    <tr>
    <td>186</td>
    <td>Marrom glacê </td>
    <td>1 fatia - 100 gramas</td>
    <td>270</td>
  </tr>
   <tr>
    <td>187</td>
    <td>Mel com própolis </td>
    <td>1 porção - 20 gramas</td>
    <td>65</td>
  </tr>
   <tr>
    <td>188</td>
    <td>Mel de abelhas</td>
    <td>1 porção - 20 gramas</td>
    <td>62</td>
  </tr>
   <tr>
    <td>189</td>
    <td>Mousse de chocolate</td>
    <td>1 porção - 150 gramas</td>
    <td>333</td>
  </tr>
   <tr>
    <td>190</td>
    <td>Paçoca</td>
    <td>1 unidade - 30 gramas</td>
    <td>114</td>
  </tr>
    <tr>
    <td>191</td>
    <td>Pamonha</td>
    <td>1 unidade</td>
    <td>135</td>
  </tr>
      <tr>
    <td>192</td>
    <td>Papo-de-anjo </td>
    <td>1 unidade</td>
    <td>150</td>
  </tr>
        <tr>
    <td>193</td>
    <td>Pavê</td>
    <td>1 porção - 100 gramas</td>
    <td>200</td>
  </tr>
       <tr>
    <td>194</td>
    <td>Pé-de-moleque</td>
    <td>1 unidade - 20 gramas</td>
    <td>46</td>
  </tr>
   <tr>
    <td>195</td>
    <td>Pêssego em calda</td>
    <td>1 unidade - 100 gramas</td>
    <td>81</td>
  </tr>
     <tr>
    <td>196</td>
    <td>Pudim de arroz caseiro </td>
    <td>1 porção - 100 gramas</td>
    <td>230</td>
  </tr>
   <tr>
    <td>197</td>
    <td>Quindim caseiro</td>
    <td>1 unidade - 80 gramas</td>
    <td>314</td>
  </tr>
   <tr>
    <td>198</td>
    <td>Rabanada</td>
    <td>1 porção - 100 gramas</td>
    <td>445</td>
  </tr>
   <tr>
    <td>199</td>
    <td>Rapadura </td>
    <td>1 pedaço - 100 gramas</td>
    <td>168</td>
  </tr>
  <tr>
    <td>200</td>
    <td>Sonho </td>
    <td>1 unidade - 85 gramas</td>
    <td>573</td>
  </tr>
  <tr>
    <td>201</td>
    <td>Suspiro pequeno </td>
    <td>1 unidade - 10 gramas</td>
    <td>37</td>
  </tr>
    <tr>
    <td>202</td>
    <td>Gelatina de abacaxi</td>
    <td>1 porção - 100 gramas</td>
    <td>68</td>
  </tr>
    <tr>
    <td>203</td>
    <td>Gelatina de cereja</td>
    <td>1 porção - 100 gramas</td>
    <td>68</td>
  </tr>
   <tr>
    <td>204</td>
    <td>Gelatina de framboesa</td>
    <td>1 porção - 145 gramas</td>
    <td>68</td>
  </tr>
   <tr>
    <td>205</td>
    <td>Gelatina de limão</td>
    <td>1 porção - 100 gramas</td>
    <td>68</td>
  </tr>
  <tr>
    <td>206</td>
    <td>Gelatina de morango</td>
    <td>1 porção - 100 gramas</td>
    <td>68</td>
  </tr>
  <tr>
    <td>207</td>
    <td>Gelatina de uva</td>
    <td>1 porção - 100 gramas</td>
    <td>68</td>
  </tr>
  <tr>
    <td>208</td>
    <td>Sorvete de massa de limão</td>
    <td>1 bola - 40 gramas</td>
    <td>62</td>
  </tr>
  <tr>
    <td>209</td>
    <td>Sorvete de massa de cholate</td>
    <td>1 bola - 40 gramas</td>
    <td>75</td>
  </tr>
    <tr>
    <td>210</td>
    <td>Sorvete de massa de creme</td>
    <td>1 bola - 40 gramas</td>
    <td>75</td>
  </tr>
      <tr>
    <td>211</td>
    <td>Sorvete de massa de morango</td>
    <td>1 bola - 40 gramas</td>
    <td>75</td>
  </tr>
   <tr>
    <td>212</td>
    <td>Sorvete de massa de coco</td>
    <td>1 bola - 40 gramas</td>
    <td>75</td>
  </tr>
  <tr>
    <td>213</td>
    <td>Banana split</td>
    <td>1 unidade</td>
    <td>843</td>
  </tr>
  <tr>
    <td>214</td>
    <td>Sorvete colegial</td>
    <td>1 taça</td>
    <td>482</td>
  </tr>
  <tr>
    <td>215</td>
    <td>Milk shake de baunilha</td>
    <td>1 copo - 290 ml</td>
    <td>336</td>
  </tr>
   <tr>
    <td>216</td>
    <td>Milk shake de chocolate</td>
    <td>1 copo - 300 ml</td>
    <td>380</td>
  </tr>
   <tr>
    <td>217</td>
    <td>Sundae</td>
    <td>1 taça</td>
    <td>616</td>
  </tr>
     <tr>
    <td>218</td>
    <td>Açúcar branco refinado</td>
    <td>1 porção - 10 gramas</td>
    <td>40</td>
  </tr>
  <tr>
    <td>219</td>
    <td>Açúcar Mascavo</td>
    <td>1 porção - 10 gramas</td>
    <td>36</td>
  </tr>
  <tr>
    <td>220</td>
    <td>Alcaparra s/ azeitona</td>
    <td>1 porção - 6 gramas</td>
    <td>2</td>
  </tr>
  <tr>
    <td>221</td>
    <td>Alho</td>
    <td>1 dente</td>
    <td>7</td>
  </tr>
   <tr>
    <td>222</td>
    <td>Caldo de carne</td>
    <td>1 tablete - 12 gramas</td>
    <td>33</td>
  </tr>
     <tr>
    <td>223</td>
    <td>Caldo de galinha</td>
    <td>1 tablete - 12 gramas</td>
    <td>35</td>
  </tr>
   <tr>
    <td>224</td>
    <td>Cebola crua</td>
    <td>1 porção - 20 gramas</td>
    <td>6</td>
  </tr>
  <tr>
    <td>225</td>
    <td>Cheiro verde</td>
    <td>1 maço</td>
    <td>4</td>
  </tr>
  <tr>
    <td>226</td>
    <td>Curry</td>
    <td>1 porção - 6 gramas</td>
    <td>23</td>
  </tr>
   <tr>
    <td>227</td>
    <td>Erva doce</td>
    <td>1 porção - 6 gramas</td>
    <td>1</td>
  </tr>
    <tr>
    <td>228</td>
    <td>Extrato de tomate</td>
    <td>1 porção - 20 gramas</td>
    <td>14</td>
  </tr>
    <tr>
    <td>229</td>
    <td>Ketchup</td>
    <td>1 porção - 15 gramas</td>
    <td>20</td>
  </tr>
      <tr>
    <td>230</td>
    <td>Leite de coco</td>
    <td>1/2 copo - 120 ml</td>
    <td>132</td>
  </tr>
  <tr>
    <td>231</td>
    <td>Molho de pimenta vermelha</td>
    <td>1 porção - 6 gramas</td>
    <td>2</td>
  </tr>
   <tr>
    <td>232</td>
    <td>Molho inglês</td>
    <td>1 porção - 15 gramas</td>
    <td>5</td>
  </tr>
   <tr>
    <td>233</td>
    <td>Mostarda</td>
    <td>1 porção - 10 gramas</td>
    <td>8</td>
  </tr>
   <tr>
    <td>234</td>
    <td>Páprica</td>
    <td>1 porção - 6 gramas</td>
    <td>20</td>
  </tr>
   <tr>
    <td>235</td>
    <td>Pimenta-do-reino</td>
    <td>1 porção - 6 gramas</td>
    <td>1</td>
  </tr>
  <tr>
    <td>236</td>
    <td>Molho Shoyo</td>
    <td>1 porção - 15 gramas</td>
    <td>6</td>
  </tr>
   <tr>
    <td>237</td>
    <td>Vinagre</td>
    <td>1 porção - 15 gramas</td>
    <td>3</td>
  </tr>
   <tr>
    <td>238</td>
    <td>Creme branco</td>
    <td>1 porção - 20 gramas</td>
    <td>28</td>
  </tr>
  <tr>
    <td>239</td>
    <td>Creme Chutney de manga </td>
    <td>1 porção - 20 gramas</td>
    <td>82</td>
  </tr>
  <tr>
    <td>240</td>
    <td>Maionese</td>
    <td>1 porção - 20 gramas</td>
    <td>141</td>
  </tr>
    <tr>
    <td>241</td>
    <td>Maionese Hellmans</td>
    <td>1 porção - 20 gramas</td>
    <td>40</td>
  </tr>
   <tr>
    <td>242</td>
    <td>Molho agridoce</td>
    <td>1 porção - 20 gramas</td>
    <td>31</td>
  </tr>
   <tr>
    <td>243</td>
    <td>Molho de iogurte</td>
    <td>1 porção - 15 gramas</td>
    <td>21</td>
  </tr>
    <tr>
    <td>244</td>
    <td>Molho roquefort </td>
    <td>1 porção - 15 gramas</td>
    <td>78</td>
  </tr>
      <tr>
    <td>245</td>
    <td>Molho rose</td>
    <td>1 porção - 15 gramas</td>
    <td>135</td>
  </tr>
  <tr>
    <td>246</td>
    <td>Molho de tomate caseiro</td>
    <td>1 porção - 15 gramas</td>
    <td>10</td>
  </tr>
  <tr>
    <td>247</td>
    <td>Molho tártaro</td>
    <td>1 porção - 15 gramas</td>
    <td>64</td>
  </tr>
    <tr>
    <td>248</td>
    <td>Azeite-de-dendê</td>
    <td>1 porção - 10 gramas</td>
    <td>89</td>
  </tr>
      <tr>
    <td>249</td>
    <td>Azeite de oliva</td>
    <td>1 porção - 10 gramas</td>
    <td>90</td>
  </tr>
  <tr>
    <td>250</td>
    <td>Banha de galinha</td>
    <td>1 porção - 10 gramas</td>
    <td>63</td>
  </tr>
    <tr>
    <td>251</td>
    <td>Banha de porco industrializada</td>
    <td>1 porção - 10 gramas</td>
    <td>90</td>
  </tr>
      <tr>
    <td>252</td>
    <td>Gordura vegetal hidrogenada</td>
    <td>1 porção - 10 gramas</td>
    <td>90</td>
  </tr>
  <tr>
    <td>253</td>
    <td>Manteiga com sal</td>
    <td>1 porção - 10 gramas</td>
    <td>77</td>
  </tr>
  <tr>
    <td>254</td>
    <td>Margarina</td>
    <td>1 porção - 10 gramas</td>
    <td>74</td>
  </tr>
  <tr>
    <td>255</td>
    <td>Óleo de algodão</td>
    <td>1 porção - 10 gramas</td>
    <td>90</td>
  </tr>
  <tr>
    <td>256</td>
    <td>Óleo de amendoim</td>
    <td>1 porção - 10 gramas</td>
    <td>90</td>
  </tr>
   <tr>
    <td>257</td>
    <td>Óleo de canola</td>
    <td>1 porção - 10 gramas</td>
    <td>90</td>
  </tr>
   <tr>
    <td>258</td>
    <td>Óleo de fígado de bacalhau</td>
    <td>1 porção - 13 gramas</td>
    <td>130</td>
  </tr>
  <tr>
    <td>259</td>
    <td>Óleo de gergelim</td>
    <td>1 porção - 10 gramas</td>
    <td>90</td>
  </tr>
   <tr>
    <td>260</td>
    <td>Óleo de girassol</td>
    <td>1 porção - 10 gramas</td>
    <td>90</td>
  </tr>
   <tr>
    <td>261</td>
    <td>Óleo de milho</td>
    <td>1 porção - 10 gramas</td>
    <td>90</td>
  </tr>
   <tr>
    <td>262</td>
    <td>Óleo de peixe</td>
    <td>1 porção - 10 gramas</td>
    <td>90</td>
  </tr>
  <tr>
    <td>263</td>
    <td>Óleo de soja</td>
    <td>1 porção - 10 gramas</td>
    <td>90</td>
  </tr>
   <tr>
    <td>264</td>
    <td>Abacate</td>
    <td>1 porção - 100 gramas</td>
    <td>177</td>
  </tr>
   <tr>
    <td>265</td>
    <td>Abacaxi</td>
    <td>1 fatia - 80 gramas</td>
    <td>50</td>
  </tr>
  <tr>
    <td>266</td>
    <td>Acerola</td>
    <td>1 unidade - 12 gramas</td>
    <td>4</td>
  </tr>
   <tr>
    <td>267</td>
    <td>Banana da terra</td>
    <td>1 unidade - 100 gramas</td>
    <td>117</td>
  </tr>
  <tr>
    <td>268</td>
    <td>Banana maça</td>
    <td>1 unidade - 65 gramas</td>
    <td>72</td>
  </tr>
  <tr>
    <td>269</td>
    <td>Banana nanica</td>
    <td>1 unidade - 90 gramas</td>
    <td>87</td>
  </tr>
  <tr>
    <td>270</td>
    <td>Banana prata</td>
    <td>1 unidade - 65 gramas</td>
    <td>55</td>
  </tr>
  <tr>
    <td>271</td>
    <td>Caju</td>
    <td>1 unidade - 100 gramas</td>
    <td>37</td>
  </tr>
  <tr>
    <td>272</td>
    <td>Cana-de-açúcar</td>
    <td>1 gomo - 100 gramas</td>
    <td>64</td>
  </tr>
   <tr>
    <td>273</td>
    <td>Caqui</td>
    <td>1 unidade - 100 gramas</td>
    <td>74</td>
  </tr>
  <tr>
    <td>274</td>
    <td>Castanha de caju picada</td>
    <td>1 porção - 150 gramas</td>
    <td>835</td>
  </tr>
  <tr>
    <td>275</td>
    <td>Cereja</td>
    <td>1 porção - 100 gramas</td>
    <td>97</td>
  </tr>
   <tr>
    <td>276</td>
    <td>Coco ralado fresco</td>
    <td>1 porção - 20 gramas</td>
    <td>50</td>
  </tr>
  <tr>
    <td>277</td>
    <td>Figo maduro</td>
    <td>1 unidade - 50 gramas</td>
    <td>68</td>
  </tr>
   <tr>
    <td>278</td>
    <td>Framboesa</td>
    <td>1 porção - 20 gramas</td>
    <td>12</td>
  </tr>
   <tr>
    <td>279</td>
    <td>Goiaba vermelha</td>
    <td>1 porção - 100 gramas</td>
    <td>43</td>
  </tr>
   <tr>
    <td>280</td>
    <td>Graviola</td>
    <td>1 porção - 100 gramas</td>
    <td>60</td>
  </tr>
    <tr>
    <td>281</td>
    <td>Guaraná</td>
    <td>1 porção - 100 gramas</td>
    <td>69</td>
  </tr>
  <tr>
    <td>282</td>
    <td>Kiwi</td>
    <td>1 unidade</td>
    <td>46</td>
  </tr>
   <tr>
    <td>283</td>
    <td>Laranja</td>
    <td>1 unidade</td>
    <td>46</td>
  </tr>
   <tr>
    <td>284</td>
    <td>Limão</td>
    <td>1 unidade</td>
    <td>12</td>
  </tr>
  <tr>
    <td>285</td>
    <td>Maçã verde</td>
    <td>1 unidade - 130 gramas</td>
    <td>79</td>
  </tr>
    <tr>
    <td>286</td>
    <td>Maçã vermelha</td>
    <td>1 unidade - 130 gramas</td>
    <td>85</td>
  </tr>
  <tr>
    <td>287</td>
    <td>Mamão maduro</td>
    <td>1 porção - 100 gramas</td>
    <td>36</td>
  </tr>
  <tr>
    <td>288</td>
    <td>Manga</td>
    <td>1 unidade - 350 gramas</td>
    <td>230</td>
  </tr>
    <tr>
    <td>289</td>
    <td>Maracujá comum</td>
    <td>1 unidade - 50 gramas</td>
    <td>28</td>
  </tr>
  <tr>
    <td>290</td>
    <td>Melancia</td>
    <td>1 porção - 100 gramas</td>
    <td>24</td>
  </tr>
  <tr>
    <td>291</td>
    <td>Melão</td>
    <td>1 porção - 70 gramas</td>
    <td>19</td>
  </tr>
  <tr>
    <td>292</td>
    <td>Morango</td>
    <td>1 porção - 100 gramas</td>
    <td>43</td>
  </tr>
  <tr>
    <td>293</td>
    <td>Nozes</td>
    <td>1 porção - 100 gramas</td>
    <td>710</td>
  </tr>
   <tr>
    <td>294</td>
    <td>Pêra</td>
    <td>1 porção - 110 gramas</td>
    <td>68</td>
  </tr>
  <tr>
    <td>295</td>
    <td>Pêra seca</td>
    <td>1 porção - 150 gramas</td>
    <td>114</td>
  </tr>
  <tr>
    <td>296</td>
    <td>Pêssego</td>
    <td>1 porção - 150 gramas</td>
    <td>63</td>
  </tr>
   <tr>
    <td>297</td>
    <td>Tangerina</td>
    <td>1 porção - 100 gramas</td>
    <td>50</td>
  </tr>
   <tr>
    <td>298</td>
    <td>Uva passa</td>
    <td>1 porção - 18 gramas</td>
    <td>54</td>
  </tr>
  <tr>
    <td>299</td>
    <td>Iogurte danone de morango</td>
    <td>1 copo - 200 gramas</td>
    <td>90</td>
  </tr>
  <tr>
    <td>300</td>
    <td>Coalhada</td>
    <td>1 porção - 20 gramas</td>
    <td>52</td>
  </tr>
  <tr>
    <td>301</td>
    <td>Iogurte batavo c/ mel</td>
    <td>1 unidade</td>
    <td>210</td>
  </tr>
  <tr>
    <td>302</td>
    <td>Corpus Diet morango</td>
    <td>1 unidade</td>
    <td>74</td>
  </tr>
   <tr>
    <td>303</td>
    <td>Danette</td>
    <td>1 unidade</td>
    <td>75</td>
  </tr>
  <tr>
    <td>304</td>
    <td>Danoninho morango </td>
    <td>1 unidade - 65 gramas</td>
    <td>71</td>
  </tr>
  <tr>
    <td>305</td>
    <td>Dan'up</td>
    <td>1 unidade</td>
    <td>170</td>
  </tr>
   <tr>
    <td>306</td>
    <td>Iogurte batido com açúcar e mel</td>
    <td>1 copo - 200 ml</td>
    <td>180</td>
  </tr>
  <tr>
    <td>307</td>
    <td>Iogurte desnatado light Batavo</td>
    <td>1 copo - 200 ml</td>
    <td>88</td>
  </tr>
   <tr>
    <td>308</td>
    <td>Iogurte natural batido Vigor</td>
    <td>1 copo - 200 ml</td>
    <td>176</td>
  </tr>
  <tr>
    <td>309</td>
    <td>Iogurte natural batido light Vigor</td>
    <td>1 copo - 200 ml</td>
    <td>78</td>
  </tr>
  <tr>
    <td>310</td>
    <td>Iogurte natural Paulista</td>
    <td>1 unidade</td>
    <td>89</td>
  </tr>
   <tr>
    <td>311</td>
    <td>Neston c/ cereal e frutas</td>
    <td>1 unidade</td>
    <td>202</td>
  </tr>
  <tr>
    <td>312</td>
    <td>Parmalat natural desnatado</td>
    <td>1 unidade</td>
    <td>88</td>
  </tr>
  <tr>
    <td>313</td>
    <td>Shake morango Nestlé</td>
    <td>1 pote - 400 gramas</td>
    <td>376</td>
  </tr>
  <tr>
    <td>314</td>
    <td>Achocolatado Leco</td>
    <td>1 copo - 200 ml</td>
    <td>194</td>
  </tr>
  <tr>
    <td>315</td>
    <td>Chocolate pronto Glória</td>
    <td>1 unidade</td>
    <td>204</td>
  </tr>
    <tr>
    <td>316</td>
    <td>Creme de leite</td>
    <td>1 porção - 15 gramas</td>
    <td>37</td>
  </tr>
    <tr>
    <td>317</td>
    <td>Leite com chocolate</td>
    <td>1 copo - 200 ml</td>
    <td>222</td>
  </tr>
   <tr>
    <td>318</td>
    <td>Leite condesado</td>
    <td>1 colher de sopa - 20 gramas</td>
    <td>65</td>
  </tr>
  <tr>
    <td>319</td>
    <td>Leite de búfala</td>
    <td>1 copo - 240 ml</td>
    <td>253</td>
  </tr>
  <tr>
    <td>320</td>
    <td>Leite de cabra</td>
    <td>1 copo - 240 ml</td>
    <td>220</td>
  </tr>
   <tr>
    <td>321</td>
    <td>Leite de soja</td>
    <td>1 copo - 240 ml</td>
    <td>120</td>
  </tr>
   <tr>
    <td>322</td>
    <td>Leite em pó integral</td>
    <td>1 colher de sopa - 20 gramas</td>
    <td>99</td>
  </tr>
  <tr>
    <td>323</td>
    <td>Leite em pó desnatado</td>
    <td>1 colher de sopa - 20 gramas</td>
    <td>37</td>
  </tr>
  <tr>
    <td>324</td>
    <td>Leite integral</td>
    <td>1 copo - 240 ml</td>
    <td>150</td>
  </tr>
  <tr>
    <td>325</td>
    <td>Leite longa vida c/ ferro</td>
    <td>1 copo - 240 ml</td>
    <td>146</td>
  </tr>
   <tr>
    <td>326</td>
    <td>Leite semidesnatado</td>
    <td>1 copo - 240 ml</td>
    <td>115</td>
  </tr>
   <tr>
    <td>327</td>
    <td>Queijo brie</td>
    <td>1 fatia - 30 gramas</td>
    <td>110</td>
  </tr>
     <tr>
    <td>328</td>
    <td>Queijo camembert</td>
    <td>1 fatia - 50 gramas</td>
    <td>136</td>
  </tr>
     <tr>
    <td>329</td>
    <td>Queijo catupiry</td>
    <td>1 porção - 20 gramas</td>
    <td>49</td>
  </tr>
   <tr>
    <td>330</td>
    <td>Queijo cheddar americano</td>
    <td>1 fatia - 30 gramas</td>
    <td>107</td>
  </tr>
  <tr>
    <td>331</td>
    <td>Queijo cottage lacreme </td>
    <td>1 porção - 30 gramas</td>
    <td>55</td>
  </tr>
  <tr>
    <td>332</td>
    <td>Queijo cream cheese light danúbio</td>
    <td>1 porção - 20 gramas</td>
    <td>38</td>
  </tr>
  <tr>
    <td>333</td>
    <td>Cream cheese tradicional alouette</td>
    <td>1 porção - 20 gramas</td>
    <td>70</td>
  </tr>
    <tr>
    <td>334</td>
    <td>Queijo edam</td>
    <td>1 fatia - 30 gramas</td>
    <td>92</td>
  </tr>
   <tr>
    <td>335</td>
    <td>Queijo ementhal</td>
    <td>1 fatia - 30 gramas</td>
    <td>85</td>
  </tr>
   <tr>
    <td>336</td>
    <td>Queijo estepe</td>
    <td>1 fatia - 30 gramas</td>
    <td>52</td>
  </tr>
     <tr>
    <td>337</td>
    <td>Queijo gorgonzola</td>
    <td>1 porção - 30 gramas</td>
    <td>119</td>
  </tr>
  <tr>
    <td>338</td>
    <td>Queijo gouda luna</td>
    <td>1 fatia - 30 gramas</td>
    <td>107</td>
  </tr>
  <tr>
    <td>339</td>
    <td>Queijo gruyère francês </td>
    <td>1 porção - 25 gramas</td>
    <td>93</td>
  </tr>
   <tr>
    <td>340</td>
    <td>Queijo mussarela</td>
    <td>1 fatia - 30 gramas</td>
    <td>94</td>
  </tr>
  <tr>
    <td>341</td>
    <td>Queijo palmira</td>
    <td>1 fatia - 30 gramas</td>
    <td>114</td>
  </tr>
    <tr>
    <td>342</td>
    <td>Queijo parmesão</td>
    <td>1 fatia - 30 gramas</td>
    <td>121</td>
  </tr>
  <tr>
    <td>343</td>
    <td>Queijo pecorino</td>
    <td>1 fatia - 35 gramas</td>
    <td>128</td>
  </tr>
  <tr>
    <td>344</td>
    <td>Queijo petit-suisse</td>
    <td>1 unidade - 25 gramas</td>
    <td>45</td>
  </tr>
  <tr>
    <td>345</td>
    <td>Polenguinho</td>
    <td>1 unidade</td>
    <td>57</td>
  </tr>
  <tr>
    <td>346</td>
    <td>Queijo prato</td>
    <td>1 fatia - 30 gramas</td>
    <td>106</td>
  </tr>
   <tr>
    <td>347</td>
    <td>Queijo provolone</td>
    <td>1 fatia - 30 gramas</td>
    <td>102</td>
  </tr>
  <tr>
    <td>348</td>
    <td>Queijo de minas</td>
    <td>1 fatia - 30 gramas</td>
    <td>112</td>
  </tr>
   <tr>
    <td>349</td>
    <td>Queijo de minas semicurado</td>
    <td>1 fatia - 30 gramas</td>
    <td>90</td>
  </tr>
  <tr>
    <td>350</td>
    <td>Queijo do reino</td>
    <td>1 fatia - 30 gramas</td>
    <td>155</td>
  </tr>
  <tr>
    <td>351</td>
    <td>Queijo ricota de leite integral</td>
    <td>1 fatia - 30 gramas</td>
    <td>54</td>
  </tr>
   <tr>
    <td>352</td>
    <td>Requeijão cremoso nestlé</td>
    <td>1 porção - 20 gramas</td>
    <td>54</td>
  </tr>
  <tr>
    <td>353</td>
    <td>Requeijão cremoso light nestlé</td>
    <td>1 porção - 20 gramas</td>
    <td>36</td>
  </tr>
   <tr>
    <td>354</td>
    <td>Queijo roquefort</td>
    <td>1 porção - 25 gramas</td>
    <td>100</td>
  </tr>
    <tr>
    <td>355</td>
    <td>Queijo suiço</td>
    <td>1 fatia - 30 gramas</td>
    <td>121</td>
  </tr>
  <tr>
    <td>356</td>
    <td>Queijo tofú - Queijo de soja</td>
    <td>1 porção - 50 gramas</td>
    <td>68</td>
  </tr>
  <tr>
    <td>357</td>
    <td>Omelete</td>
    <td>1 porção - 100 gramas</td>
    <td>170</td>
  </tr>
   <tr>
    <td>358</td>
    <td>Ovo de codorna</td>
    <td>1 unidade</td>
    <td>33</td>
  </tr>
   <tr>
    <td>359</td>
    <td>Ovo de galinha cozido</td>
    <td>1 unidade</td>
    <td>78</td>
  </tr>
  <tr>
    <td>360</td>
    <td>Ovo de galinha frito</td>
    <td>1 unidade</td>
    <td>108</td>
  </tr>
    <tr>
    <td>361</td>
    <td>Ovo de galinha frito</td>
    <td>1 unidade</td>
    <td>108</td>
  </tr>
  <tr>
    <td>362</td>
    <td>Ovo mexido</td>
    <td>1 porção - 100 gramas</td>
    <td>195</td>
  </tr>
  <tr>
    <td>363</td>
    <td>Abóbora</td>
    <td>1 porção - 100 gramas</td>
    <td>40</td>
  </tr>
  <tr>
    <td>364</td>
    <td>Agrião</td>
    <td>1 porção - 100 gramas</td>
    <td>28</td>
  </tr>
  <tr>
    <td>365</td>
    <td>Aipim frito</td>
    <td>1 porção - 100 gramas</td>
    <td>353</td>
  </tr>
  <tr>
    <td>366</td>
    <td>Alface</td>
    <td>1 porção - 100 gramas</td>
    <td>20</td>
  </tr>
  <tr>
    <td>367</td>
    <td>Amendoim</td>
    <td>1 porção - 100 gramas</td>
    <td>549</td>
  </tr>
  <tr>
    <td>368</td>
    <td>Arroz branco cozido</td>
    <td>1 porção - 100 gramas</td>
    <td>164</td>
  </tr>
  <tr>
    <td>369</td>
    <td>Arroz integral cozido</td>
    <td>1 porção - 100 gramas</td>
    <td>110</td>
  </tr>
   <tr>
    <td>370</td>
    <td>Aspargo cozido</td>
    <td>1 porção - 100 gramas</td>
    <td>20</td>
  </tr>
     <tr>
    <td>371</td>
    <td>Azeitona preta</td>
    <td>1 porção - 12 gramas</td>
    <td>16</td>
  </tr>
      <tr>
    <td>372</td>
    <td>Azeitona verde</td>
    <td>1 porção - 12 gramas</td>
    <td>15</td>
  </tr>
        <tr>
    <td>373</td>
    <td>Batata-doce assada</td>
    <td>1 porção - 100 gramas</td>
    <td>143</td>
  </tr>
   <tr>
    <td>374</td>
    <td>Batata-doce frita</td>
    <td>1 porção - 100 gramas</td>
    <td>383</td>
  </tr>
   <tr>
    <td>375</td>
    <td>Batata palha frita</td>
    <td>1 porção - 70 gramas</td>
    <td>220</td>
  </tr>
  <tr>
    <td>376</td>
    <td>Berinjela</td>
    <td>1 unidade - 250 gramas</td>
    <td>489</td>
  </tr>
    <tr>
    <td>377</td>
    <td>Beterraba</td>
    <td>1 unidade - 125 gramas</td>
    <td>55</td>
  </tr>
  <tr>
    <td>378</td>
    <td>Brócolis</td>
    <td>1 porção - 80 gramas</td>
    <td>23</td>
  </tr>
  <tr>
    <td>379</td>
    <td>Cebola</td>
    <td>1 unidade - 70 gramas</td>
    <td>32</td>
  </tr>
  <tr>
    <td>380</td>
    <td>Cebola cozida</td>
    <td>1 porção - 100 gramas</td>
    <td>54</td>
  </tr>
  <tr>
    <td>381</td>
    <td>Cenoura</td>
    <td>1 unidade - 100 gramas</td>
    <td>45</td>
  </tr>
   <tr>
    <td>382</td>
    <td>Cenoura cozida</td>
    <td>1 porção - 100 gramas</td>
    <td>54</td>
  </tr>
     <tr>
    <td>383</td>
    <td>Couve-flor cozida</td>
    <td>1 porção - 100 gramas</td>
    <td>41</td>
  </tr>
    <tr>
    <td>384</td>
    <td>Ervilha em conserva</td>
    <td>1 porção - 100 gramas</td>
    <td>95</td>
  </tr>
    <tr>
    <td>385</td>
    <td>Escarola</td>
    <td>1 porção - 100 gramas</td>
    <td>35</td>
  </tr>
    <tr>
    <td>386</td>
    <td>Espinafre</td>
    <td>1 porção - 100 gramas</td>
    <td>38</td>
  </tr>
    <tr>
    <td>387</td>
    <td>Feijão branco cozido</td>
    <td>1 porção - 100 gramas</td>
    <td>120</td>
  </tr>
   <tr>
    <td>388</td>
    <td>Feijão cozido e desidratado</td>
    <td>1 porção - 100 gramas</td>
    <td>390</td>
  </tr>
  <tr>
    <td>389</td>
    <td>Feijão preto cozido</td>
    <td>1 porção - 100 gramas</td>
    <td>70</td>
  </tr>
    <tr>
    <td>390</td>
    <td>Mandioca frita</td>
    <td>1 porção - 100 gramas</td>
    <td>352</td>
  </tr>
     <tr>
    <td>391</td>
    <td>Palmito cru</td>
    <td>1 porção - 100 gramas</td>
    <td>26</td>
  </tr>
  <tr>
    <td>392</td>
    <td>Palmito em conserva</td>
    <td>1 porção - 100 gramas</td>
    <td>22</td>
  </tr>
  <tr>
    <td>393</td>
    <td>Pepino cru c/ casca</td>
    <td>1 porção - 150 gramas</td>
    <td>21</td>
  </tr>
    <tr>
    <td>394</td>
    <td>Pepino cru s/ casca</td>
    <td>1 porção - 150 gramas</td>
    <td>5</td>
  </tr>
     <tr>
    <td>395</td>
    <td>Repolho</td>
    <td>1 porção - 100 gramas</td>
    <td>33</td>
  </tr>
  <tr>
    <td>396</td>
    <td>Repolho cozido</td>
    <td>1 porção - 100 gramas</td>
    <td>13</td>
  </tr>
  <tr>
    <td>397</td>
    <td>Tomate cozido</td>
    <td>1 porção - 100 gramas</td>
    <td>18</td>
  </tr>
    <tr>
    <td>398</td>
    <td>Tomate cru</td>
    <td>1 porção - 100 gramas</td>
    <td>20</td>
  </tr>
   <tr>
    <td>399</td>
    <td>vargem cozida</td>
    <td>1 porção - 100 gramas</td>
    <td>52</td>
  </tr>
    <tr>
    <td>400</td>
    <td>Pão francês</td>
    <td>1 unidade - 50 gramas</td>
    <td>135</td>
  </tr>
  <tr>
    <td>401</td>
    <td>Bisnaguinha</td>
    <td>1 unidade</td>
    <td>45</td>
  </tr>
  <tr>
    <td>402</td>
    <td>Brioche</td>
    <td>1 unidade</td>
    <td>210</td>
  </tr>
  <tr>
    <td>403</td>
    <td>Broa de milho</td>
    <td>1 unidade</td>
    <td>150</td>
  </tr>
  <tr>
    <td>404</td>
    <td>Croissant</td>
    <td>1 unidade - 60 gramas</td>
    <td>247</td>
  </tr>
  <tr>
    <td>405</td>
    <td>Panetone</td>
    <td>1 fatia - 100 gramas</td>
    <td>283</td>
  </tr>
    <tr>
    <td>406</td>
    <td>Pão de batata</td>
    <td>1 unidade - 30 gramas</td>
    <td>90</td>
  </tr>
  <tr>
    <td>407</td>
    <td>Pão de cará</td>
    <td>1 unidade - 50 gramas</td>
    <td>140</td>
  </tr>
   <tr>
    <td>408</td>
    <td>Pão de centeio integral</td>
    <td>1 fatia</td>
    <td>58</td>
  </tr>
   <tr>
    <td>409</td>
    <td>Pão de forma tradicional</td>
    <td>1 fatia</td>
    <td>74</td>
  </tr>
   <tr>
    <td>410</td>
    <td>Pão de hambúrguer</td>
    <td>1 unidade - 100 gramas</td>
    <td>278</td>
  </tr>
  <tr>
    <td>411</td>
    <td>Pão de hot-dog</td>
    <td>1 unidade - 100 gramas</td>
    <td>286</td>
  </tr>
  <tr>
    <td>412</td>
    <td>Pão de mel c/ cobertura de chocolate</td>
    <td>1 unidade - 100 gramas</td>
    <td>455</td>
  </tr>
  <tr>
    <td>413</td>
    <td>Pão de queijo</td>
    <td>1 unidade - 100 gramas</td>
    <td>340</td>
  </tr>
  <tr>
    <td>414</td>
    <td>Pão integral de trigo</td>
    <td>1 fatia - 100 gramas</td>
    <td>261</td>
  </tr>
  <tr>
    <td>415</td>
    <td>Pão sírio integral</td>
    <td>1 unidade - 100 gramas</td>
    <td>294</td>
  </tr>
  <tr>
    <td>416</td>
    <td>Canelone de presunto e queijo à bolonhesa </td>
    <td>2 unidades - 150 gramas</td>
    <td>552</td>
  </tr>
  <tr>
    <td>417</td>
    <td>Capelete de carne</td>
    <td>1 porção - 100 gramas</td>
    <td>278</td>
  </tr>
  <tr>
    <td>418</td>
    <td>Capelete de frango</td>
    <td>1 porção - 100 gramas</td>
    <td>279</td>
  </tr>
  <tr>
    <td>419</td>
    <td>Espaguete comum cozido</td>
    <td>1 porção - 160 gramas</td>
    <td>233</td>
  </tr>
   <tr>
    <td>420</td>
    <td>Espaguete ao sugo</td>
    <td>1 porção - 160 gramas</td>
    <td>139</td>
  </tr>
  <tr>
    <td>421</td>
    <td>Lasanha</td>
    <td>1 porção - 100 gramas</td>
    <td>139</td>
  </tr>
   <tr>
    <td>422</td>
    <td>Macarrão à carbonara</td>
    <td>1 porção - 100 gramas</td>
    <td>362</td>
  </tr>
  <tr>
    <td>423</td>
    <td>Macarrão integral cozido</td>
    <td>1 porção - 160 gramas</td>
    <td>195</td>
  </tr>
  <tr>
    <td>424</td>
    <td>Macarrão c/ molho de tomate e queijo</td>
    <td>1 porção - 100 gramas</td>
    <td>104</td>
  </tr>
    <tr>
    <td>425</td>
    <td>Macarrão cozido</td>
    <td>1 porção - 100 gramas</td>
    <td>154</td>
  </tr>
  <tr>
    <td>426</td>
    <td>Macarronada</td>
    <td>1 porção - 100 gramas</td>
    <td>289</td>
  </tr>
    <tr>
    <td>427</td>
    <td>Nhoque s/ molho</td>
    <td>1 porção - 160 gramas</td>
    <td>227</td>
  </tr>
  <tr>
    <td>428</td>
    <td>Pizza de alho é oleo</td>
    <td>1 fatia - 140 gramas</td>
    <td>276</td>
  </tr>
   <tr>
    <td>429</td>
    <td>Pizza de calabresa</td>
    <td>1 fatia - 140 gramas</td>
    <td>412</td>
  </tr>
  <tr>
    <td>430</td>
    <td>Pizza de catupiry c/ tomate</td>
    <td>1 fatia - 140 gramas</td>
    <td>324</td>
  </tr>
  <tr>
    <td>431</td>
    <td>Pizza de champignon c/ mussarela</td>
    <td>1 fatia - 140 gramas</td>
    <td>249</td>
  </tr>
   <tr>
    <td>432</td>
    <td>Pizza de escarola c/ mussarela</td>
    <td>1 fatia - 140 gramas</td>
    <td>246</td>
  </tr>
   <tr>
    <td>433</td>
    <td>Pizza de frango c/ catupiry</td>
    <td>1 fatia - 140 gramas</td>
    <td>305</td>
  </tr>
  <tr>
    <td>434</td>
    <td>Pizza de mussarela</td>
    <td>1 fatia - 140 gramas</td>
    <td>304</td>
  </tr>
   <tr>
    <td>435</td>
    <td>Pizza de margherita</td>
    <td>1 fatia - 140 gramas</td>
    <td>275</td>
  </tr>
   <tr>
    <td>436</td>
    <td>Pizza portuguesa</td>
    <td>1 fatia - 140 gramas</td>
    <td>396</td>
  </tr>
  <tr>
    <td>437</td>
    <td>Aveia em flocos</td>
    <td>1 porção - 15 gramas</td>
    <td>50</td>
  </tr>
  <tr>
    <td>438</td>
    <td>Corn Flakes</td>
    <td>1 porção - 110 gramas</td>
    <td>217</td>
  </tr>
  <tr>
    <td>439</td>
    <td>Farinha de amendoim</td>
    <td>1 porção - 15 gramas</td>
    <td>56</td>
  </tr>
  <tr>
    <td>440</td>
    <td>Farinha de arroz</td>
    <td>1 porção - 15 gramas</td>
    <td>53</td>
  </tr>
    <tr>
    <td>441</td>
    <td>Farinha de aveia crua</td>
    <td>1 porção - 15 gramas</td>
    <td>57</td>
  </tr>
  <tr>
    <td>442</td>
    <td>Farinha de batata doce</td>
    <td>1 porção - 15 gramas</td>
    <td>52</td>
  </tr>
  <tr>
    <td>443</td>
    <td>Farinha de batata inglesa</td>
    <td>1 porção - 15 gramas</td>
    <td>53</td>
  </tr>
  <tr>
    <td>444</td>
    <td>Farinha de fubá de milho</td>
    <td>1 porção - 20 gramas</td>
    <td>69</td>
  </tr>
  <tr>
    <td>445</td>
    <td>Farinha de mandioca</td>
    <td>1 porção - 15 gramas</td>
    <td>54</td>
  </tr>
   <tr>
    <td>446</td>
    <td>Farinha de milho integral</td>
    <td>1 porção - 15 gramas</td>
    <td>30</td>
  </tr>
   <tr>
    <td>447</td>
    <td>Farinha de rosca</td>
    <td>1 porção - 15 gramas</td>
    <td>54</td>
  </tr>
  <tr>
    <td>448</td>
    <td>Farinha de trigo</td>
    <td>1 porção - 15 gramas</td>
    <td>54</td>
  </tr>
  <tr>
    <td>449</td>
    <td>Granola com castalhas</td>
    <td>1 porção - 15 gramas</td>
    <td>75</td>
  </tr>
  <tr>
    <td>450</td>
    <td>Granola com castalhas</td>
    <td>1 porção - 15 gramas</td>
    <td>75</td>
  </tr>
  <tr>
    <td>451</td>
    <td>Grão de aveia cru</td>
    <td>1 porção - 15 gramas</td>
    <td>48</td>
  </tr>
  <tr>
    <td>452</td>
    <td>Germe de trigo</td>
    <td>1 porção - 15 gramas</td>
    <td>55</td>
  </tr>
  <tr>
    <td>453</td>
    <td>Maisena</td>
    <td>1 porção - 15 gramas</td>
    <td>52</td>
  </tr>
  <tr>
    <td>454</td>
    <td>Malte em pó</td>
    <td>1 porção - 15 gramas</td>
    <td>56</td>
  </tr>
  <tr>
    <td>455</td>
    <td>Arroz com feijão</td>
    <td>1 porção - 40 gramas</td>
    <td>75</td>
  </tr>
  <tr>
    <td>456</td>
    <td>Arroz-de-carreteiro</td>
    <td>1 porção - 40 gramas</td>
    <td>112</td>
  </tr>
    <tr>
    <td>457</td>
    <td>Bife à parmegiana</td>
    <td>1 bife</td>
    <td>485</td>
  </tr>
  <tr>
    <td>458</td>
    <td>Carne de panela</td>
    <td>1 bife - 100 gramas</td>
    <td>230</td>
  </tr>
  <tr>
    <td>459</td>
    <td>Creme de milho c/ leite e maisena</td>
    <td>1 porção - 40 gramas</td>
    <td>144</td>
  </tr>
  <tr>
    <td>460</td>
    <td>Empadão de frango</td>
    <td>1 porção - 100 gramas</td>
    <td>359</td>
  </tr>
  <tr>
    <td>461</td>
    <td>Estrogonofe</td>
    <td>1 concha</td>
    <td>332</td>
  </tr>
  <tr>
    <td>462</td>
    <td>Farofa</td>
    <td>1 porção - 20 gramas</td>
    <td>169</td>
  </tr>
  <tr>
    <td>463</td>
    <td>Feijoada</td>
    <td>1 concha</td>
    <td>273</td>
  </tr>
  <tr>
    <td>464</td>
    <td>Frango xadrez</td>
    <td>1 concha</td>
    <td>180</td>
  </tr>
  <tr>
    <td>465</td>
    <td>Leitão a pururuca</td>
    <td>1 concha</td>
    <td>966</td>
  </tr>
  <tr>
    <td>466</td>
    <td>Moqueca de peixe</td>
    <td>1 concha</td>
    <td>325</td>
  </tr>
  <tr>
    <td>467</td>
    <td>Panqueca</td>
    <td>1 unidade - 30 gramas</td>
    <td>60</td>
  </tr>
  <tr>
    <td>468</td>
    <td>Pimentão assado com carne</td>
    <td>1 unidade - 200 gramas</td>
    <td>298</td>
  </tr>
  <tr>
    <td>469</td>
    <td>Rabada</td>
    <td>1 porção</td>
    <td>389</td>
  </tr> 
  <tr>
    <td>470</td>
    <td>Ratatoille</td>
    <td>1 porção - 40 gramas</td>
    <td>76</td>
  </tr>
  <tr>
    <td>471</td>
    <td>Risoto caseiro</td>
    <td>1 porção - 40 gramas</td>
    <td>104</td>
  </tr>
  <tr>
    <td>472</td>
    <td>Salada de batata</td>
    <td>1 porção - 100 gramas</td>
    <td>147</td>
  </tr>
    <tr>
    <td>473</td>
    <td>Sashimi c/ atum namorado, linguado ou nabo</td>
    <td>1 porção</td>
    <td>363</td>
  </tr>
   <tr>
    <td>474</td>
    <td>Tabule</td>
    <td>1 porção - 40 gramas</td>
    <td>104</td>
  </tr>
  <tr>
    <td>475</td>
    <td>Torta de camarão</td>
    <td>1 fatia - 100 gramas</td>
    <td>310</td>
  </tr>
  <tr>
    <td>476</td>
    <td>Vatapá</td>
    <td>1 concha</td>
    <td>227</td>
  </tr>
  <tr>
    <td>477</td>
    <td>Beirute</td>
    <td>1 unidade</td>
    <td>510</td>
  </tr>
   <tr>
    <td>478</td>
    <td>Cachorro-quente com maionese e molho vinagrete</td>
    <td>1 unidade</td>
    <td>624</td>
  </tr>
  <tr>
    <td>479</td>
    <td>Cachorro-quente com ketchup</td>
    <td>1 unidade</td>
    <td>314</td>
  </tr>
  <tr>
    <td>480</td>
    <td>Cachorro-quente com mostarda</td>
    <td>1 unidade</td>
    <td>330</td>
  </tr>
  <tr>
    <td>481</td>
    <td>Cachorro-quente com ketchup e mostarda</td>
    <td>1 unidade</td>
    <td>342</td>
  </tr>
    <tr>
    <td>482</td>
    <td>Cheeseburguer</td>
    <td>1 unidade</td>
    <td>305</td>
  </tr>
  <tr>
    <td>483</td>
    <td>Cheese salada com maionese</td>
    <td>1 unidade</td>
    <td>738</td>
  </tr>
  <tr>
    <td>484</td>
    <td>Hambúrguer</td>
    <td>1 unidade</td>
    <td>296</td>
  </tr>
  <tr>
    <td>485</td>
    <td>Misto quente</td>
    <td>1 unidade</td>
    <td>283</td>
  </tr>
  <tr>
    <td>486</td>
    <td>Sanduíche de lingüiça</td>
    <td>1 unidade</td>
    <td>370</td>
  </tr>
  <tr>
    <td>487</td>
    <td>Sanduíche de peito de peru</td>
    <td>1 unidade</td>
    <td>220</td>
  </tr>
  <tr>
    <td>488</td>
    <td>Sanduíche de queijo quente</td>
    <td>1 unidade</td>
    <td>340</td>
  </tr>
  <tr>
    <td>489</td>
    <td>Sanduíche de salada de atum</td>
    <td>1 unidade</td>
    <td>417</td>
  </tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>