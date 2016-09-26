$(document).ready(function() {
	$.material.init();
	
	function deixarDivsInvisiveis() {
		$('#divIdentificacao').toggle();
		$('#divHistoricoFamiliar').toggle();
		$('#divDadosAntropo').toggle();
	}
	
	$('#btnIdentificacao').click(function() {
		$('#divIdentificacao').show();
		$('#divHistoricoFamiliar').hide();
		$('#divDadosAntropo').hide();
	});
	
	$('#btnHistoricoFamiliar').click(function() {
		$('#divIdentificacao').hide();
		$('#divHistoricoFamiliar').show();
		$('#divDadosAntropo').hide();
	});
	
	$('#btnDadosAntropo').click(function() {
		$('#divIdentificacao').hide();
		$('#divHistoricoFamiliar').hide();
		$('#divDadosAntropo').show();
	});
	
	$('#btnAdicionarColunaTabela').click(function() {
		var numerosColunasTabela = $("#tableDadosAntropometricos").find("thead tr th label input").length;
		
		$("#colunaCampoData").append("<label> <input type='checkbox' id='checkboxData"+ numerosColunasTabela +"'> Data: </label>").append("<input type='text' size='7' placeholder='  /  /    ' id='data'/>");
		$("#colunaCampoPa").append("<td> <input type='text' size='5' id='pa"+ numerosColunasTabela +"'/> </td>");
	});
	
	deixarDivsInvisiveis();
});