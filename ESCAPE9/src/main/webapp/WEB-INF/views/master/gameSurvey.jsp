<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>설문리스트</title>
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
			</ul>
		</li>
		<li><a href="#">기타</a></li>
	</ul><br/>
<!-- view part -->	
<h2>[
<c:choose>
	<c:when test="${game eq '1' }">잠입명령</c:when>
	<c:when test="${game eq '2' }">폐쇄된 외계인 실험실</c:when>
	<c:when test="${game eq '3' }">아내의 비밀</c:when>
	<c:when test="${game eq '4' }">남편의 비밀</c:when>
	<c:when test="${game eq '5' }">실종된 탐사대</c:when>
	<c:otherwise>죽음의 예배당</c:otherwise>
</c:choose>]
</h2>
<table width="100%">
	<thead>
		<tr>
			<th width="10%">총점</th>
			<th width="10%">게임 환경</th>
			<th width="10%">게임 주제</th>
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
			<td>${vo.thema}</td>
			<td>${vo.composition}</td>
			<td>${vo.difficulty}</td>
			<td style="text-align: left;">${vo.comments}</td>
			<td>${vo.member}</td>
			<td>${vo.name}</td>
		</tr>
	</c:forEach>
	<tr>
			<td>${avg.eval}</td>
			<td>${avg.env}</td>
			<td>${avg.thema}</td>
			<td>${avg.comp}</td>
			<td>${avg.diff}</td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</tbody>
</table>
</body>
</html>
