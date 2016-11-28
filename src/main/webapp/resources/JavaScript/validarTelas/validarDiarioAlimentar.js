$(document).ready(function () {

});

function resetActive(event, percent, step) {
    $(".progress-bar").css("width", percent + "%").attr("aria-valuenow", percent);
    $(".progress-completed").text(percent + "%");

    $("div").each(function () {
        if ($(this).hasClass("activestep")) {
            $(this).removeClass("activestep");
        }
    });

    if (event.target.className == "col-md-2") {
        $(event.target).addClass("activestep");
    }
    else {
        $(event.target.parentNode).addClass("activestep");
    }

    hideSteps();
    showCurrentStepInfo(step);
}

function hideSteps() {
    $("div").each(function () {
        if ($(this).hasClass("activeStepInfo")) {
            $(this).removeClass("activeStepInfo");
            $(this).addClass("hiddenStepInfo");
        }
    });
}

function showCurrentStepInfo(step) {
    let id = "#" + step;
    $(id).addClass("activeStepInfo");
}

$(function () {

    jsGrid.locale("pt-br");

    $("#jsGrid4").jsGrid({
        height: "300px",
        width: "100%",
        filtering: true,
        editing: true,
        inserting: true,
        sorting: true,
        paging: true,
        autoload: true,
        pageSize: 15,
        pageButtonCount: 5,
        deleteConfirm: "Você tem certeza que deseja apagar esse dado?",
        controller: db,
        fields: [
            { name: "Data", type: "text", width: 50, validate: "required" },
            { name: "Alimento ", type: "text", width: 70, validate: "required" },
            { name: "Quantidade ", type: "text", width: 70, validate: "required" },
            { type: "control" }
        ]
    });
});


$(function () {

    jsGrid.locale("pt-br");

    $("#jsGrid5").jsGrid({
        height: "300px",
        width: "100%",
        filtering: true,
        editing: true,
        inserting: true,
        sorting: true,
        paging: true,
        autoload: true,
        pageSize: 15,
        pageButtonCount: 5,
        deleteConfirm: "Você tem certeza que deseja apagar esse dado?",
        controller: db,
        fields: [
            { name: "Data", type: "text", width: 50, validate: "required" },
            { name: "Alimento ", type: "text", width: 70, validate: "required" },
            { name: "Quantidade ", type: "text", width: 70, validate: "required" },
            { type: "control" }
        ]
    });
});

$(function () {

    jsGrid.locale("pt-br");

    $("#jsGrid6").jsGrid({
        height: "300px",
        width: "100%",
        filtering: true,
        editing: true,
        inserting: true,
        sorting: true,
        paging: true,
        autoload: true,
        pageSize: 15,
        pageButtonCount: 5,
        deleteConfirm: "Você tem certeza que deseja apagar esse dado?",
        controller: db,
        fields: [
            { name: "Data", type: "text", width: 50, validate: "required" },
            { name: "Alimento ", type: "text", width: 70, validate: "required" },
            { name: "Quantidade ", type: "text", width: 70, validate: "required" },
            { type: "control" }
        ]
    });
});

$(function () {

    jsGrid.locale("pt-br");

    $("#jsGrid7").jsGrid({
        height: "300px",
        width: "100%",
        filtering: true,
        editing: true,
        inserting: true,
        sorting: true,
        paging: true,
        autoload: true,
        pageSize: 15,
        pageButtonCount: 5,
        deleteConfirm: "Você tem certeza que deseja apagar esse dado?",
        controller: db,
        fields: [
            { name: "Data", type: "text", width: 50, validate: "required" },
            { name: "Alimento ", type: "text", width: 70, validate: "required" },
            { name: "Quantidade ", type: "text", width: 70, validate: "required" },
            { type: "control" }
        ]
    });
});

$(function () {

    jsGrid.locale("pt-br");

    $("#jsGrid8").jsGrid({
        height: "300px",
        width: "100%",
        filtering: true,
        editing: true,
        inserting: true,
        sorting: true,
        paging: true,
        autoload: true,
        pageSize: 15,
        pageButtonCount: 5,
        deleteConfirm: "Você tem certeza que deseja apagar esse dado?",
        controller: db,
        fields: [
            { name: "Data", type: "text", width: 50, validate: "required" },
            { name: "Alimento ", type: "text", width: 70, validate: "required" },
            { name: "Quantidade ", type: "text", width: 70, validate: "required" },
            { type: "control" }
        ]
    });
});

$(function () {

    jsGrid.locale("pt-br");

    $("#jsGrid9").jsGrid({
        height: "300px",
        width: "100%",
        filtering: true,
        editing: true,
        inserting: true,
        sorting: true,
        paging: true,
        autoload: true,
        pageSize: 15,
        pageButtonCount: 5,
        deleteConfirm: "Você tem certeza que deseja apagar esse dado?",
        controller: db,
        fields: [
            { name: "Data", type: "text", width: 50, validate: "required" },
            { name: "Alimento ", type: "text", width: 70, validate: "required" },
            { name: "Quantidade ", type: "text", width: 70, validate: "required" },
            { type: "control" }
        ]
    });
});
