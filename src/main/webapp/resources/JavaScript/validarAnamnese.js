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
              height: "70%",
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
                  { name: "PA", type: "text", width: 150, validate: "required" },
                  { name: "Age", type: "number", width: 50, validate: { validator: "range", param: [18,80] } },
                  { name: "Address", type: "text", width: 200, validate: { validator: "rangeLength", param: [10, 250] } },
                  { name: "Country", type: "select", items: db.countries, valueField: "Id", textField: "Name",
                      validate: { message: "Country should be specified", validator: function(value) { return value > 0; } } },
                  { name: "Married", type: "checkbox", title: "Is Married", sorting: false },
                  { type: "control" }
              ]
          });

      });
	  
	deixarDivsInvisiveis();
});