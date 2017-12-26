<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<title>설문 통계</title>
</head>
<style>
th, td{
	text-align: center;
	font-size: 15px;
	border-bottom: 1px solid #ddd;
}
tr{
	height: 40px;
}
tr:hover {background-color:#f5f5f5;}
</style>
<body>
<!-- nav bar -->
	<ul class="nav nav-tabs">
		<li><a href="#">설문리스트</a></li>
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#">게임별
			<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="/master/game/1">The grand museum_잠입명령</a></li>
				<li><a href="/master/game/2">Project 380 : The Alien_폐쇄된 외계인 실험실</a></li>
				<li><a href="/master/game/3">The secret of my wife_아내</a></li> 
				<li><a href="/master/game/4">The secret of my husband_남편</a></li>
				<li><a href="/master/game/5">The Jungle_실종된 탐사대</a></li>
				<li><a href="/master/game/6">Light and shade_죽음의 예배당</a></li> 
				<li><a href="/master/game/7">The Forgotten Remains_사라진 고대유적</a></li>
				<li><a href="/master/game/8">The Last BUNKER_보스의 은신처</a></li> 
			</ul>
		</li>
		<li><a href="#">기타</a></li>
	</ul><br/>
	
<!-- view part -->
<iframe src="/master/surveyStats" style="border:none;" height="500" width="100%"></iframe><br/>
<div class="form-group">
	<label for="game">게임 선택</label>
	<select class="form-control" id="game">
		<option value="1">잠입명령</option>
		<option value="2">폐쇄된 외계인 실험실</option>
		<option value="3">아내</option>
		<option value="4">남편</option>
		<option value="5">실종된 탐사대</option>
		<option value="6">죽음의 예배당</option>
		<option value="7">사라진 고대유적</option>
		<option value="8">보스의 은신처</option>
	</select>
</div>
<h4>SURVEY RESULT CHART</h4>
    <div id="columnchart_values">
    </div>
<div align="center">
	<a href="/master"><button type="button">메인</button></a>
</div>
</body>
</html>
<script>
var map;
var game = $("#game").val();
$("#game").change(function(){
	$.ajax({
        type: "post",
        dataType : "json",
        url: "/master/survey_avg",
        data:{
        	"game": game
        },
        success:function(data) {
        	var obj = JSON.parse(data);
        	console.log(dobj.eval);
		}
    });
})

    google.charts.load("current", {packages:['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      
      var x = [
               ["Element", "Density", { role: "style" } ],
               ["총점",1, "#b87333"],
               ["환경", 1, "silver"],
               ["주제", 1, "gold"],
               ["구성", 1, "color: #e5e4e2"],
               ["난이도", 1, "color: #e5e4e2"]
             ];
      
      var data = google.visualization.arrayToDataTable(x);
 
      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);
 
      var options = {
        title: game,
        width: 600,
        height: 400,
        bar: {groupWidth: "95%"},
        legend: { position: "none" },
      };
      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
      chart.draw(view, options);
  }
</script>