<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>설문조사 통계자료</title>
<script type="text/javascript">
	function goPage(pageNo){
		document.listForm.pageNo.value = pageNo;
		document.listForm.submit();
		console.log("pageNo : " + pageNo);
	}
</script>
</head>
<style>
th, td{
	text-align: center;
	font-size: 15px;
	border-bottom: 1px solid #ddd;
}
tr:hover {background-color:#f5f5f5;}
</style>
<body>
<form name="listForm" action="/paging" method="post">
	<input type="text" name="pageNo" value="" /><br/>
	<table>
		<thead>
			<tr>
				<th width="15%">게임명</th>
				<th width="4%">총점</th>
				<th width="4%">환경</th>
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
					<c:when test="${vo.game_name eq '7' }">사라진 고대유겆</c:when>
					<c:when test="${vo.game_name eq '8' }">보스의 은신처</c:when>
					<c:otherwise>죽음의 예배당</c:otherwise>
				</c:choose>
				</td>
	 			<td>${vo.total_eval}</td>
				<td>${vo.environment}</td>
				<td>${vo.composition}</td>
	 			<td>${vo.difficulty}</td>
				<td>${vo.repeat_num}</td>
				<td>${vo.route}</td>
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
	<jsp:include page="./paging.jsp" flush="true">
		<jsp:param name="firstPageNo" value="${paging.firstPageNo}" />
		<jsp:param name="prevPageNo" value="${paging.prevPageNo}" />
		<jsp:param name="startPageNo" value="${paging.startPageNo}" />
		<jsp:param name="pageNo" value="${paging.pageNo}" />
		<jsp:param name="endPageNo" value="${paging.endPageNo}" />
		<jsp:param name="nextPageNo" value="${paging.nextPageNo}" />
		<jsp:param name="finalPageNo" value="${paging.finalPageNo}" />
	</jsp:include>
</form>
</body>
</html>