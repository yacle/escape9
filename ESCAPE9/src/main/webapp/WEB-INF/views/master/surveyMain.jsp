<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
				<li><a href="/master/game/7">The Forgotten Remains_사라진 고대유적</a></li>
				<li><a href="/master/game/8">The Last BUNKER_보스의 은신처</a></li> 
			</ul>
		</li>
		<li><a href="#">기타</a></li>
	</ul><br/>
	
<!-- view part -->
<iframe src="/master/surveyStats" style="border:none;" height="500" width="100%"></iframe><br/>
