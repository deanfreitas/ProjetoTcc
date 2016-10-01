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
                  { name: "Data", type: "text", width: 100, validate: "required"},
                  { name: "PA", type: "text", width: 100, validate: "required"},
                  { name: "Peso (kg)", type: "number", width: 100, validate: "required"},
                  { name: "Altura (cm)", type: "text", width: 100, validate: "required"},
                  { name: "IMC", type: "number",width: 100, validate: "required"},
                  { name: "PCT", type: "text", width: 100, validate: "required"},
                  { name: "PCB", type: "text", width: 100, validate: "required"},
                  { name: "PCSE", type: "text", width: 100, validate: "required"},
                  { name: "PCPeitoral", type: "text", width: 100, validate: "required"},
                  { name: "PCAb", type: "text", width: 100, validate: "required"},
                  { name: "PCSI", type: "text", width: 100, validate: "required" },
                  { name: "PCCoxa", type: "text", width: 100, validate: "required" },
                  { name: "PCPant", type: "text", width: 100, validate: "required" },
                  { name: "CBraço", type: "text", width: 100, validate: "required" },
                  { name: "CAntebraço", type: "text", width: 100, validate: "required" },
                  { name: "CPunho", type: "text", width: 100, validate: "required" },
                  { name: "CTórax", type: "text", width: 100, validate: "required" },
                  { name: "CCintura", type: "text", width: 100, validate: "required" },
                  { name: "CCoxa", type: "text", width: 100, validate: "required" },
                  { name: "CPanturrilha", type: "text", width: 100, validate: "required" },
                  { name: "Compleição", type: "text", width: 100, validate: "required" },
                  { name: "EM", type: "text", width: 100, validate: "required" },
                  { name: "%G", type: "text", width: 100, validate: "required" },
                  { name: "%MM", type: "text", width: 100, validate: "required" },
                  { name: "CCintura", type: "text", width: 100, validate: "required" },
                  { type: "control" }
              ]
          });

      });
	  
	deixarDivsInvisiveis();
});