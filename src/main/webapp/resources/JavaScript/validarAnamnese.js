$(document).ready(function() {
	$.material.init();
	
	function deixarDivsInvisiveis() {
		$('#divIdentificacao').toggle();
		$('#divHistoricoFamiliar').toggle();
		$('#divDadosAntropo').toggle(); 
		$('#divDadosClinicos').toggle();
		$('#divAtividadeFisica').toggle();
		$('#divHistoricoAlimentar').toggle();
		$('#divExamesBio').toggle();
		$('#divUsoMedicamentos').toggle();
		$('#divRecordata').toggle();
		$('#divFrequenciaAlimentar').toggle();
	}
	
	$('#btnIdentificacao').click(function() {
		$('#divIdentificacao').show();
		$('#divHistoricoFamiliar').hide();
		$('#divDadosAntropo').hide();
		$('#divDadosClinicos').hide();
		$('#divAtividadeFisica').hide();
		$('#divHistoricoAlimentar').hide();
		$('#divExamesBio').hide();
		$('#divUsoMedicamentos').hide();
		$('#divRecordata').hide();
		$('#divFrequenciaAlimentar').hide();
	});
	
	$('#btnHistoricoFamiliar').click(function() {
		$('#divIdentificacao').hide();
		$('#divHistoricoFamiliar').show();
		$('#divDadosAntropo').hide();
		$('#divDadosClinicos').hide();
		$('#divAtividadeFisica').hide();
		$('#divHistoricoAlimentar').hide();
		$('#divExamesBio').hide();
		$('#divUsoMedicamentos').hide();
		$('#divRecordata').hide();
		$('#divFrequenciaAlimentar').hide();
	});
	
	$('#btnDadosAntropo').click(function() {
		$('#divIdentificacao').hide();
		$('#divHistoricoFamiliar').hide();
		$('#divDadosAntropo').show();
		$('#divDadosClinicos').hide();
		$('#divAtividadeFisica').hide();
		$('#divHistoricoAlimentar').hide();
		$('#divExamesBio').hide();
		$('#divUsoMedicamentos').hide();
		$('#divRecordata').hide();
		$('#divFrequenciaAlimentar').hide();
	});
	
	$('#btnDadosClinicos').click(function() {
		$('#divIdentificacao').hide();
		$('#divHistoricoFamiliar').hide();
		$('#divDadosAntropo').hide();
		$('#divDadosClinicos').show();
		$('#divAtividadeFisica').hide();
		$('#divHistoricoAlimentar').hide();
		$('#divExamesBio').hide();
		$('#divUsoMedicamentos').hide();
		$('#divRecordata').hide();
		$('#divFrequenciaAlimentar').hide();
	});
	
	$('#btnAtividadeFisica').click(function() {
		$('#divIdentificacao').hide();
		$('#divHistoricoFamiliar').hide();
		$('#divDadosAntropo').hide();
		$('#divDadosClinicos').hide();
		$('#divAtividadeFisica').show();
		$('#divHistoricoAlimentar').hide();
		$('#divExamesBio').hide();
		$('#divUsoMedicamentos').hide();
		$('#divRecordata').hide();
		$('#divFrequenciaAlimentar').hide();
	});
	
	$('#btnHistoricoAlimentar').click(function() {
		$('#divIdentificacao').hide();
		$('#divHistoricoFamiliar').hide();
		$('#divDadosAntropo').hide();
		$('#divDadosClinicos').hide();
		$('#divAtividadeFisica').hide();
		$('#divHistoricoAlimentar').show();
		$('#divExamesBio').hide();
		$('#divUsoMedicamentos').hide();
		$('#divRecordata').hide();
		$('#divFrequenciaAlimentar').hide();
	});
	
	$('#btnExamesBio').click(function() {
		$('#divIdentificacao').hide();
		$('#divHistoricoFamiliar').hide();
		$('#divDadosAntropo').hide();
		$('#divDadosClinicos').hide();
		$('#divAtividadeFisica').hide();
		$('#divHistoricoAlimentar').hide();
		$('#divExamesBio').show();
		$('#divUsoMedicamentos').hide();
		$('#divRecordata').hide();
		$('#divFrequenciaAlimentar').hide();
	});
	
	$('#btnUsoMedicamentos').click(function() {
		$('#divIdentificacao').hide();
		$('#divHistoricoFamiliar').hide();
		$('#divDadosAntropo').hide();
		$('#divDadosClinicos').hide();
		$('#divAtividadeFisica').hide();
		$('#divHistoricoAlimentar').hide();
		$('#divExamesBio').hide();
		$('#divUsoMedicamentos').show();
		$('#divRecordata').hide();
		$('#divFrequenciaAlimentar').hide();
	});
	
	$('#btnRecordata').click(function() {
		$('#divIdentificacao').hide();
		$('#divHistoricoFamiliar').hide();
		$('#divDadosAntropo').hide();
		$('#divDadosClinicos').hide();
		$('#divAtividadeFisica').hide();
		$('#divHistoricoAlimentar').hide();
		$('#divExamesBio').hide();
		$('#divUsoMedicamentos').hide();
		$('#divRecordata').show();
		$('#divFrequenciaAlimentar').hide();
	});
	
	$('#btnFrequenciaAlimentar').click(function() {
		$('#divIdentificacao').hide();
		$('#divHistoricoFamiliar').hide();
		$('#divDadosAntropo').hide();
		$('#divDadosClinicos').hide();
		$('#divAtividadeFisica').hide();
		$('#divHistoricoAlimentar').hide();
		$('#divExamesBio').hide();
		$('#divUsoMedicamentos').hide();
		$('#divRecordata').hide();
		$('#divFrequenciaAlimentar').show();
	});
	
	 $('#inputOculto').hide();
	  $('#HabIntestinal').change(function() {
	    if ($('#HabIntestinal').val() == 'Outro') {
	      $('#inputOculto').show();
	    } else {
	      $('#inputOculto').hide();
	    }
	  });
	
	  $('#inputOculto2').hide();
	  $('#ConsFezes').change(function() {
	    if ($('#ConsFezes').val() == 'Outro') {
	      $('#inputOculto2').show();
	    } else {
	      $('#inputOculto2').hide();
	    }
	  });
	  
	  $('#inputOculto3').hide();
	  $('#AltApetite').change(function() {
	    if ($('#AltApetite').val() == 'Sim') {
	      $('#inputOculto3').show();
	    } else {
	      $('#inputOculto3').hide();
	    }
	  });
	  
	  
	  /*
	   *  Esse é a função da tabela que esta na div "Dados Antropométricos", ainda preciso fazer uns ajustes mas vocês já podem colocar mais colunas na tabela,
	   *  é só acrescentar ou alterar no fields(name = nome da tabela, type = tipo do campo, exemplo se é texto, numero, width = é a largura da campo, no validate não 
	   *  é para mexer ainda)
	   */
	  $(function() {

          $("#jsGrid").jsGrid({
              height: "500px",
              width: "100%",
              filtering: true,
              editing: true,
              inserting: true,
              sorting: true,
              paging: true,
              autoload: true,
              pageSize: 15,
              pageButtonCount: 5,
              deleteConfirm: "Do you really want to delete the client?",
              controller: db,
              fields: [
                  { name: "Data", type: "text", width: 30, validate: "required" },
                  { name: "PA", type: "text", width: 30, validate: "required" },
                  { name: "Peso (kg)", type: "number", width: 30, validate: { validator: "range", param: [18,80] } },
                  { name: "Altura (cm)", type: "text", width: 30, validate: { validator: "rangeLength", param: [10, 250] } },
                  { name: "IMC", type: "number",width: 30, textField: "Name"},
                  { name: "PCT", type: "text", width: 30, validate: "required" },
                  { name: "PCB", type: "text", width: 30, validate: "required" },
                  { name: "PCSE", type: "text", width: 30, validate: "required" },
                  { name: "PCPeitoral", type: "text", width: 40, validate: "required" },
                  { name: "PCAb", type: "text", width: 30, validate: "required" },
                  { name: "PCSI", type: "text", width: 30, validate: "required" },
                  { name: "PCCoxa", type: "text", width: 30, validate: "required" },
                  { name: "PCPant", type: "text", width: 30, validate: "required" },
                  { name: "CBraço", type: "text", width: 30, validate: "required" },
                  { name: "CAntebraço", type: "text", width: 40, validate: "required" },
                  { name: "CPunho", type: "text", width: 30, validate: "required" },
                  { name: "CTórax", type: "text", width: 30, validate: "required" },
                  { name: "CCintura", type: "text", width: 40, validate: "required" },
                  { name: "CCoxa", type: "text", width: 30, validate: "required" },
                  { name: "CPanturrilha", type: "text", width: 40, validate: "required" },
                  { name: "Compleição", type: "text", width: 40, validate: "required" },
                  { name: "EM", type: "text", width: 30, validate: "required" },
                  { name: "%G", type: "text", width: 30, validate: "required" },
                  { name: "%MM", type: "text", width: 30, validate: "required" },
                  { name: "CCintura", type: "text", width: 30, validate: "required" },
                  
                  
                      
                  { type: "control" }
              ]
          });

      });
	  
	deixarDivsInvisiveis();
});