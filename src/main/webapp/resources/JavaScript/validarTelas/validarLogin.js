$(document).ready(function () {
    $.material.init();

    const usuario = $('#usuario');
    const senha = $('#senha');

    //botoes
    const btnEntrar = $('#btnEntrar');
    const btnCadastrar = $('#btnCadastrar');

    function validarCamposDigitados(fields) {
        fields.unbind('keyup').bind('keyup', function () {
            let thisVal = $(this).val();

            if (!thisVal || thisVal === "") {
                $(this).css("border-color", "#FF0000");
            } else {
                $(this).css("border-color", "#FFFFFF");
            }
        });
    }

    function logarSistema(fields) {
        fields.click(function () {
            let usuarioLogin = usuario.val();
            let senhaLogin = senha.val();
            let display = false;

            if (!usuarioLogin || usuarioLogin === "") {
                usuario.css("border-color", "#FF0000");
                display = true;
            }

            if (!senhaLogin || senhaLogin === "") {
                senha.css("border-color", "#FF0000");
                display = true;
            }

            if (display) {
                return false;

            } else {
                let object = {
                    usuario: usuarioLogin,
                    senha: senhaLogin
                };

                $.ajax({
                    url: "/ProjetoTcc/entrarTelaPrincipal",
                    type: 'POST',
                    data: JSON.stringify(object),
                    contentType: "application/json",
                    dataType: 'json',
                    success: function (data) {
                        if (data.codigo !== 0) {
                            /*
                             *  Uanderson a mensagem que você vai que aparece no alert está na variavel "data.mensagem"
                             */

                            alert(data.mensagem);

                            /*
                             *  Dar um jeito de aparecer a mensagem antes do "return false"
                             */
                            return false;
                        } else {
                            window.location.href = '/ProjetoTcc/telaPrincipal';
                            return true;
                        }
                    }
                });
            }
        });
    }

    function cadastrarUsuario(fields) {
        fields.click(function () {
            window.location.href = '/ProjetoTcc/telaCadastrarUsuario/acrescentar';
        });
    }

    logarSistema(btnEntrar);
    cadastrarUsuario(btnCadastrar);

    validarCamposDigitados(usuario);
    validarCamposDigitados(senha);
});