$(document).ready(function () {
	$.material.init();

	new Chartist.Line('.ct-chart', {
		  labels: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab'],
		  series: [
			[2, 3, 2, 2, 3, 3, 3],
		  ]
		}, {
			fullWidth: true,
			chartPadding: {
				right: 60
			}
		});

	var data = {
		labels: ['Bananas', 'Apples', 'Grapes'],
		series: [20, 15, 40]
	};

	var options = {
		labelInterpolationFnc: function (value) {
			return value[0]
		}
	};

	var responsiveOptions = [
		['screen and (min-width: 640px)', {
			chartPadding: 30,
			labelOffset: 100,
			labelDirection: 'explode',
			labelInterpolationFnc: function (value) {
				return value;
			}
		}],
		['screen and (min-width: 1024px)', {
			labelOffset: 80,
			chartPadding: 20
		}]
	];

	new Chartist.Pie('.ct-chart2', data, options, responsiveOptions);

	function init() {
		var ctx = $("#myChart").get(0).getContext("2d");

		var data = {
			// labels onde ficara as datas das consultas, que estará armazenando no banco de dados
			labels: ["January", "February", "March", "April", "May", "June", "July"],
			datasets: [
				{
					fillColor: "rgba(151,187,205,0.5)",
					strokeColor: "rgba(151,187,205,1)",
					pointColor: "rgba(151,187,205,1)",
					pointStrokeColor: "#fff",

					// valores do grafico que vamos representar, como peso do paciente, que estará
					// armazenando no banco de dados
					data: [20, 48, 40, 19, 96, 27, 100]
				}
			]
		}

		var myNewChart = new Chart(ctx).Line(data);
	}

	init();
});