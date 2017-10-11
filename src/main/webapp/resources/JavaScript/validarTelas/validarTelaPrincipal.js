$(document).ready(function () {
    $.material.init();

    const altura = $('#altura');
    const peso = $('#peso');

    //botoes
    const btnPerfil = $('#btnPerfil');
    const btnPaciente = $('#btnPaciente');
    const btnAlterarDados = $('#btnAlterarDados');
    const btnCalcularImc = $('#btnCalcular');

    let idUsuario;
    let tipoUsuario;

    function onlyNumber(fields) {
        fields.unbind('keyup').bind('keyup', function (e) {
            let thisVal = $(this).val();
            let tempVal = "";

            for (let i = 0; i < thisVal.length; i++) {
                if (new RegExp(/^[0-9]$/).test(thisVal.charAt(i))) {
                    tempVal += thisVal.charAt(i);
                }
            }
            $(this).val(tempVal);
        });
    }

    function pegarDadosUsuario() {
        let object = {};

        $.ajax({
            url: "/ProjetoTcc/pegarIdUsuarioLogado",
            type: 'POST',
            data: JSON.stringify(object),
            contentType: "application/json",
            dataType: 'json',
            success: function (data) {
                if (data.codigo === 2) {
                    alert(data.mensagem);
                    location.href = '/ProjetoTcc/sairSistema';
                } else {
                    tipoUsuario = data.mensagem;
                    idUsuario = data.objeto;

                    if (tipoUsuario === 'nutricionista') {
                        btnPerfil.toggle();
                    } else if (tipoUsuario === 'paciente') {
                        btnPaciente.toggle();
                    }
                }
            }
        });
    }

    function telaPerfil(fields) {
        fields.click(function () {
            location.href = '/ProjetoTcc/telaAnamnese/visualizar/' + idUsuario;
        });
    }

    function telaAlterarDados(fields) {
        fields.click(function () {
            location.href = '/ProjetoTcc/telaUpdateCadastro/' + tipoUsuario + '/' + idUsuario;
        });
    }

    function calcularImc(fields) {
        fields.click(function () {
            let sexo = $("input:radio[id='radioSexo']:checked").val();
            let calculo = (peso.val() / (altura.val() * altura.val()));

            if (calculo < 18.5) {
                alert("Você está magro com esse indice: " + calculo);
            }
            else if (calculo >= 18.5 && calculo < 24.9) {
                alert("Você está normal com esse indice: " + calculo);
            }
            else if (calculo >= 25 && calculo < 29.9) {
                alert("Você está com sobre peso com esse indice: " + calculo);
            }
            else if (calculo >= 30 && calculo < 39.9) {
                alert("Você está com obesidade com esse indice: " + calculo);
            }
            else if (calculo > 40)
                alert("Você estácom obesidade grave com esse indice: " + calculo);

            $('#ModalIMC').modal('toggle');
        });
    }

    pegarDadosUsuario();

    onlyNumber(altura);
    onlyNumber(peso);

    calcularImc(btnCalcularImc);

    telaAlterarDados(btnAlterarDados);
    telaPerfil(btnPerfil);
});

function maxDays(mm, yyyy) {
    let mDay;
    if ((mm === 3) || (mm === 5) || (mm === 8) || (mm === 10)) {
        mDay = 30;
    }
    else {
        mDay = 31;
        if (mm === 1) {
            if (yyyy / 4 - parseInt(yyyy / 4) !== 0) {
                mDay = 28
            }
            else {
                mDay = 29
            }
        }
    }
    return mDay;
}

function changeBg(id) {
    if (eval(id).style.backgroundColor !== "yellow") {
        eval(id).style.backgroundColor = "yellow";
        location.href = '/ProjetoTcc/telaDiarioAlimentar/' + $('#' + id).text() + '/' + $('#selMonth').val() + '/' + $('#selYear').val();
    }
    else {
        eval(id).style.backgroundColor = "#ffffff"
    }
}

function writeCalendar() {
    let now = new Date;
    let dd = now.getDate();
    let mm = now.getMonth();
    let dow = now.getDay();
    let yyyy = now.getFullYear();
    let arrM = ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"];
    let arrY = [];
    let ii;
    let aa;
    let kk;

    for (ii = 0; ii <= 4; ii++) {
        arrY[ii] = yyyy - 2 + ii
    }
    let arrD = ["Dom", "Seg", "Ter", "Qua", "Qui", "Sex", "Sab"];

    let text;
    text = "<form name=calForm>";
    text += "<table border=0>";
    text += "<tr><td>";
    text += "<table width=100%><tr>";
    text += "<td align=left>";
    text += "<select id='selMonth' name='selMonth' onChange='changeCal()' class='form-control'>";

    for (ii = 0; ii <= 11; ii++) {
        if (ii === mm) {
            text += "<option value= " + ii + " Selected>" + arrM[ii] + "</option>"
        }
        else {
            text += "<option value= " + ii + ">" + arrM[ii] + "</option>"
        }
    }

    text += "</select>";
    text += "</td>";
    text += "<td align=right>";
    text += "<select id='selYear' name='selYear' onChange='changeCal()' class='form-control'>";

    for (ii = 0; ii <= 4; ii++) {
        if (ii === 2) {
            text += "<option value= " + arrY[ii] + " Selected>" + arrY[ii] + "</option>"
        }
        else {
            text += "<option value= " + arrY[ii] + ">" + arrY[ii] + "</option>"
        }
    }

    text += "</select>";
    text += "</td>";
    text += "</tr></table>";
    text += "</td></tr>";
    text += "<tr><td>";
    text += "<table border=0>";
    text += "<tr>";

    for (ii = 0; ii <= 6; ii++) {
        text += "<td align=center><span class=label>" + arrD[ii] + "</span></td>"
    }
    text += "</tr>";
    aa = 0;
    for (kk = 0; kk <= 5; kk++) {
        text += "<tr>";
        for (ii = 0; ii <= 6; ii++) {
            text += `<td align=center><span id=sp${aa} onClick='changeBg(this.id)'>1</span></td>`
            aa += 1
        }
        text += "</tr>"
    }
    text += "</table>";
    text += "</td></tr>";
    text += "</table>";
    text += "</form>";
    document.write(text);
    changeCal()
}

function changeCal() {
    let now = new Date;
    let dd = now.getDate();
    let mm = now.getMonth();
    let dow = now.getDay();
    let yyyy = now.getFullYear();
    let currM = parseInt(document.calForm.selMonth.value);
    let prevM;
    let ii;

    if (currM !== 0) {
        prevM = currM - 1
    }
    else {
        prevM = 11
    }
    let currY = parseInt(document.calForm.selYear.value);
    let mmyyyy = new Date();

    mmyyyy.setFullYear(currY);
    mmyyyy.setMonth(currM);
    mmyyyy.setDate(1);

    let day1 = mmyyyy.getDay();
    if (day1 === 0) {
        day1 = 7
    }

    let arrN = new Array(41);
    let aa;

    for (ii = 0; ii < day1; ii++) {
        arrN[ii] = maxDays((prevM), currY) - day1 + ii + 1
    }

    aa = 1;
    for (ii = day1; ii <= day1 + maxDays(currM, currY) - 1; ii++) {
        arrN[ii] = aa;
        aa += 1
    }

    aa = 1;
    for (ii = day1 + maxDays(currM, currY); ii <= 41; ii++) {
        arrN[ii] = aa;
        aa += 1
    }

    for (ii = 0; ii <= 41; ii++) {
        eval("sp" + ii).style.backgroundColor = "#FFFFFF"
    }

    let dCount = 0;
    for (ii = 0; ii <= 41; ii++) {
        if (((ii < 7) && (arrN[ii] > 20)) || ((ii > 27) && (arrN[ii] < 20))) {
            eval("sp" + ii).innerHTML = arrN[ii];
            eval("sp" + ii).className = "c3"
        }
        else {
            eval("sp" + ii).innerHTML = arrN[ii];
            if ((dCount === 0) || (dCount === 6)) {
                eval("sp" + ii).className = "c2"
            }
            else {
                eval("sp" + ii).className = "c1"
            }
            if ((arrN[ii] === dd) && (mm === currM) && (yyyy === currY)) {
                eval("sp" + ii).style.backgroundColor = "#90EE90"
            }
        }
        dCount += 1;
        if (dCount > 6) {
            dCount = 0
        }
    }
}