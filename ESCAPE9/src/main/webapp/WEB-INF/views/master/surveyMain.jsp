<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
			</ul>
		</li>
		<li><a href="#">기타</a></li>
	</ul><br/>
	
<!-- view part -->
<table>
	<thead>
		<tr>
			<th width="15%">게임명</th>
			<th width="4%">총점</th>
			<th width="4%">환경</th>
			<th width="4%">주제</th>
			<th width="4%">구성</th>
			<th width="5%">난이도</th>
			<th width="7%">게임횟수</th>
			<th width="7%">방문경로</th>
			<th width="20%">코멘트</th>
			<th width="7%">날자</th>
			<th width="4%">연령대</th>
			<th width="4%">성별</th>
			<th width="4%">인원</th>
			<th width="6%">작성자</th>
		</tr>
	</thead>
	<tbody>
  	<c:forEach var="vo" items="${list}">
		<tr>
			<td>
			<c:choose>
				<c:when test="${vo.game_name eq '1' }">잠입명령</c:when>
				<c:when test="${vo.game_name eq '2' }">폐쇄된 외계인 실험실</c:when>
				<c:when test="${vo.game_name eq '3' }">아내의 비밀</c:when>
				<c:when test="${vo.game_name eq '4' }">남편의 비밀</c:when>
				<c:when test="${vo.game_name eq '5' }">실종된 탐사대</c:when>
				<c:otherwise>죽음의 예배당</c:otherwise>
			</c:choose>
			</td>
 			<td>${vo.total_eval}</td>
			<td>${vo.environment}</td>
			<td>${vo.thema}</td>
			<td>${vo.composition}</td>
 			<td>${vo.difficulty}</td>
			<td>${vo.repeat_num}</td>
			<td>
			<c:choose>
				<c:when test="${vo.route eq '1' }">간판</c:when>
				<c:when test="${vo.route eq '2' }">지인추천</c:when>
				<c:when test="${vo.route eq '6' }">기타</c:when>
				<c:when test="${vo.route eq '4' }">SNS</c:when>
				<c:when test="${vo.route eq '5' }">재방문</c:when>
				<c:otherwise>네이버블로그</c:otherwise>
			</c:choose>
			</td>
			<td>${vo.comments}</td>
 			<td>${vo.join_date}</td>
			<td>${vo.age}</td>
			<td>${vo.gender}</td>
			<td>${vo.member}</td>
 			<td>${vo.name}</td>
		</tr>
	</c:forEach>
	</tbody>
</table><br/>
<div align="center">
	<a href="/master"><button type="button">메인</button></a>
</div>
</body>
</html>