<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="hightCharts/js/jquery-1.9.1.js"></script>
<script src="hightCharts/js/highcharts.js"></script>
<script src="hightCharts/js/modules/exporting.js"></script>
<script>
	$(function()
	{
		drawer();
		function foo()
		{
			this.type = "small";
		}
		;

		foo.tName = "TL";
		foo.prototype.age = 21;

		var bar = new foo();

		var tem = function myFun()
		{
			this.Tnam = "tNam";
		};
	});

	function drawer()
	{
		$('#container').highcharts({
		// 		 	chart:{type:'area'},
		// 		 	chart:{type:'pie'},
		chart : { type : 'column' },
		// 		 	chart:{type:'line'},
		// 		 	chart:{type:'bar'},
		// 		 	chart:{type:'scatter'},

		// 		 	chart:{type:'arearange'},
		// 		 	chart:{type:'areasplinerange'},
		// 		 	chart:{type:'boxplot'},
		// 		 	chart:{type:'bubble'},
		// 		 	chart:{type:'columnrange'},
		// 		 	chart:{type:'errorbar'},
		// 		 	chart:{type:'funnel'},
		// 		 	chart:{type:'gauge'},
		// 		 	chart:{type:'heatmap'},
		// 		 	chart:{type:'pyramid'},
		// 		 	chart:{type:'spline'},
		// 		 	chart:{type:'waterfall'},
		// 		 	chart:{type:'solidgauge'},
		title : { text : 'Monthly Average Temperature', x : -20 //center
		}, subtitle : { text : 'Source: WorldClimate.com', x : -20 }, xAxis : { categories :
		[
				'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
		] }, yAxis : { title : { text : 'Temperature (°C)' }, plotLines :
		[
			{ value : 0, width : 1, color : '#808080' }
		] }, tooltip : { valueSuffix : '°C' },
		// 	        legend: {
		// 	            layout: 'vertical',
		// 	            align: 'l',
		// 	            verticalAlign: 'bottom',
		// 	            borderWidth: 0
		// 	        },
		plotOptions : { column : { pointPadding : 0, borderWidth : 0 } }, series :
		[
				{ name : 'Tokyo', data :
				[
						7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6
				] }, { name : 'New York', data :
				[
						-0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5
				] }, { name : 'Berlin', data :
				[
						-0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0
				] }, { name : 'London', data :
				[
						3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8
				] }
		] });
	}
</script>

</head>



<body>
	<p>this is for test</p>
	<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
</body>
</html>



