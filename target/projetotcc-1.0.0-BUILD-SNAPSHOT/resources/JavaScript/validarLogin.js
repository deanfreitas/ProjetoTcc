$(document).ready(function() {
	
	$('input[id="senha"]').unbind('keyup').bind('keyup', function(e) {
		var thisVal = $(this).val();
		var tempVal = "";

		if (thisVal == null || thisVal == "") {
			$(this).css("border-color", "#FF0000");
		} else {
			$(this).css("border-color", "#FFFFFF");
		}
	});
	
	$('input[id="usuario"]').unbind('keyup').bind('keyup', function(e) {
		var thisVal = $(this).val();
		var tempVal = "";

		if (thisVal == null || thisVal == "") {
			$(this).css("border-color", "#FF0000");
		} else {
			$(this).css("border-color", "#FFFFFF");
		}
	});
	
	$('input[id="btnEntrar"]').click(function() {

		var usuario = $('#usuario').val();
		var senha = $('#senha').val();
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
	
	$.material.init();
	
	$('#btnEntrar').click(function() {

		var usuarioLogin = $('#usuario').val();
		var senhaLogin = $('#senha').val();
		var object = {usuario : usuarioLogin, senha : senhaLogin};
		$.ajax({
			url: "/ProjetoTcc/EntrarTelaPrincipal",
			type: 'POST',
			data: JSON.stringify(object),
			contentType: "application/json",
		    dataType: 'json',
			success: function(data, status) {
				if (data.codigo == 2) {
					alert(data.mensagem);
					return false;
				} else {
					window.location.href = '/ProjetoTcc/TelaQualquer';
					return true;
				}
			}
		}); 

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
//				$window.location.href = '/ProjetoTcc/TelaQualquer';
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