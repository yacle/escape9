<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<title>설문리스트</title>
</head>
<style>
table{
	width:100%;
}
.table-bordered{
	color:blue;
}
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
		<li><a href="/master/stats">설문리스트</a></li>
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
<h4>설문 결과</h4>
<div id="columnchart_values" align="center"></div><br/><br/>
<h3>[<span id="game">
<c:choose>
	<c:when test="${game eq '1' }">잠입명령</c:when>
	<c:when test="${game eq '2' }">폐쇄된 외계인 실험실</c:when>
	<c:when test="${game eq '3' }">아내의 비밀</c:when>
	<c:when test="${game eq '4' }">남편의 비밀</c:when>
	<c:when test="${game eq '5' }">실종된 탐사대</c:when>
	<c:when test="${game eq '7' }">사라진 고대유겆</c:when>
	<c:when test="${game eq '8' }">보스의 은신처</c:when>
	<c:otherwise>죽음의 예배당</c:otherwise>
</c:choose></span>]
</h3>
<div class="table-responsive">
	<table class="table-bordered">
		<thead>
			<tr>
				<th width="15%" rowspan="2" style="text-align:middle;">평균</th>
				<th width="20%">총점</th>
				<th width="20%">게임 환경</th>
				<th width="20%">게임 구성</th>
				<th width="20%">난이도</th>
			</tr>
			<tr style="border-bottom: 2px solid black;">
				<td><span id="eval">${avg.eval}</span></td>
				<td><span id="env">${avg.env}</span></td>
				<td><span id="comp">${avg.comp}</span></td>
				<td><span id="diff">${avg.diff}</span></td>
			</tr>
		</thead>
	</table><br/>
	<table>
		<thead>
			<tr>
				<th width="10%">총점</th>
				<th width="10%">게임 환경</th>
				<th width="10%">게임 구성</th>
				<th width="10%">난이도</th>
				<th width="30%">코멘트</th>
				<th width="10%">인원수</th>
				<th width="10%">고객명</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="vo" items="${list}">
			<tr>
				<td>${vo.total_eval}</td>
				<td>${vo.environment}</td>
				<td>${vo.composition}</td>
				<td>${vo.difficulty}</td>
				<td style="text-align: left;">${vo.comments}</td>
				<td>${vo.member}</td>
				<td>${vo.name}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table><br/>
</div>


<div align="center">
	<a href="/master"><button type="button">메인</button></a>
</div><br/><br/><br/><br/>
</body>
</html>
<script>

    google.charts.load("current", {packages:['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      
      var x = [
               ["Element", "Density", { role: "style" } ],
               ["종합평가",${avg.eval}, "#0000FF"],
               ["환경", ${avg.env}, "#FFD700"],
               ["구성", ${avg.comp}, "#32CD32"],
               ["난이도", ${avg.diff}, "#FF00FF"]
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
        title: $("#game").html(),
        width: 800,
        height: 400,
        bar: {groupWidth: "70%"},
        legend: { position: "none" },
      };
      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
      chart.draw(view, options);
  }
</script>
