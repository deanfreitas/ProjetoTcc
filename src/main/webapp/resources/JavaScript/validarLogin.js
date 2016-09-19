$(document).ready(function() {
	$.material.init();
	
	$('input[id="senha"]').unbind('keyup').bind('keyup', function(e) {
		var thisVal = $(this).val();

		if (thisVal == null || thisVal == "") {
			$(this).css("border-color", "#FF0000");
		} else {
			$(this).css("border-color", "#FFFFFF");
		}
	});
	
	$('input[id="usuario"]').unbind('keyup').bind('keyup', function(e) {
		var thisVal = $(this).val();

		if (thisVal == null || thisVal == "") {
			$(this).css("border-color", "#FF0000");
		} else {
			$(this).css("border-color", "#FFFFFF");
		}
	});
	
	$('#btnEntrar').click(function() {

		var usuarioLogin = $('#usuario').val();
		var senhaLogin = $('#senha').val();
		var display = false;

		if (usuarioLogin == null || usuarioLogin == "") {
			$('#usuario').css("border-color", "#FF0000");
			display = true;
		}
		
		if (senhaLogin == null || senhaLogin == "") {
			$('#senha').css("border-color", "#FF0000");
			display = true;
		}

		if (display) {
			return false;
			
		} else {
			var object = {usuario : usuarioLogin, senha : senhaLogin};
			$.ajax({
				url: "/ProjetoTcc/EntrarTelaPrincipal",
				type: 'POST',
				data: JSON.stringify(object),
				contentType: "application/json",
				dataType: 'json',
				success: function(data, status) {
					if (data.codigo == 0) {
						/*
						 *  Uanderson a mensagem que você vai que aparece no alert está na variavel "data.mensagem"
						 */

						alert(data.mensagem);

						/*
						 *  Dar um jeito de aparecer a mensagem antes do "return false"
						 */
						return false;
					} else {
						window.location.href = '/ProjetoTcc/TelaPrincipal';
						return true;
					}
				}
			});
		}

	});
	
	$('#btnCadastrar').click(function() {
		window.location.href = '/ProjetoTcc/TelaCadastro';
	});
});

//var validarLoginApp = angular.module("validarLoginApp", []);
//
//validarLoginApp.controller("validarLogin", function($scope, $window, $http) {
//
//	$scope.usuario = null;
//	$scope.senha = null;
//
//	$scope.btnEntrar = function() {
//
//		var login = new Object();
//		login.usuario = $scope.usuario, login.senha = $scope.senha;
//
//		var response = $http.post("EntrarTelaPrincipal", login);
//
//		response.success(function(data, status, headers, config) {
//			if (data.codigo == 2) {
//				$window.alert(data.mensagem);
//				return false;
//			} else {
//				$window.location.href = '/ProjetoTcc/TelaPrincipal';
//				return true;
//			}
//		});
//
//		response.error(function(data, status, headers, config) {
//			$window.alert(data);
//			return false;
//		});
//
//	};
//});