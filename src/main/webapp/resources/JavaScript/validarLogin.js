$(document).ready(function() {

	function validarCampo(field) {

		$(field).click(function() {

			var usuario = $('#usuario').val();
			var senha = $('#senha').val();
			var tipoPessoa = $('input[id=tipoPessoa]:checked').val();
			var display = false;

			if (usuario == null || usuario == "") {
				$('#usuario').css("border-color", "#FF0000");
				display = true;
			}

			if (senha == null || senha == "") {
				$('#senha').css("border-color", "#FF0000");
				display = true;
			}

			if (display) {
				return false;
			}

			return true;
		});
	}

	validarCampo($('input[id="btnEntrar"]'));
});

$(document).ready(function() {

	function validarCamposDigitados(fields) {
		$(fields).unbind('keyup').bind('keyup', function(e) {
			var thisVal = $(this).val();
			var tempVal = "";

			if (thisVal == null || thisVal == "") {
				$(this).css("border-color", "#FF0000");
			} else {
				$(this).css("border-color", "#FFFFFF");
			}
		});
	}

	validarCamposDigitados($('input[id="usuario"]'));
	validarCamposDigitados($('input[id="senha"]'));
});

var validarLoginApp = angular.module("validarLoginApp", []);

validarLoginApp.controller("validarLogin", function($scope, $window, $http) {

	$scope.usuario = null;
	$scope.senha = null;

	$scope.btnEntrar = function() {
		
		var login =  new Object();
		login.usuario  = $scope.usuario,
		login.senha = $scope.senha;
		
		var response = $http.post("EntrarTelaPrincipal", login);

		response.success(function(data, status, headers, config) {
			if (data.codigo == 2) {
				$window.alert(data.mensagem);
				return false;
			} else {
				return true;
			}
		});

		response.error(function(data, status, headers, config) {
			$window.alert(data);
			return false;
		});

	};
});