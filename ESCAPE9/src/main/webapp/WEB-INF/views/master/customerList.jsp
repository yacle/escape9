<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객 명단</title>
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
<div align="center">
	<h2>고객명단</h2>
</div><br/>
<table width="100%">
	<thead>
		<tr>
			<th width="10%">이름</th>
			<th width="20">전화번호</th>
			<th width="30%">이메일</th>
			<th width="30%">기타</th>
			<th width="10%">서약서</th>
		</tr>
	</thead>
	<tbody>
  	<c:forEach var="vo" items="${list}">
		<tr>
			<td><a href="/master/customer_survey?phone=${vo.phone}&&name=${vo.name}">${vo.name}</a></td>
 			<td>${vo.phone}</td>
			<td>${vo.email}</td>
			<td class="comment" data="${vo.phone}">${vo.comments}</td>
			<td><a href="/master/customer_sign?phone=${vo.phone}&&name=${vo.name}">서약서</a></td>
		</tr>
	</c:forEach>
	</tbody>
</table><br/>
<!-- pagination -->
<div class="text-center">
	<ul class="pagination">
		<c:if test="${pageMaker.prev}">
			<li><a href="/master/customer?page=${pageMaker.startPage - 1}">&laquo;</a></li>
		</c:if>
		<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
			<li <c:out value="${pageMaker.cri.page == idx ? 'class=active' : ''}"/>> 
				<a href="/master/customer?page=${idx}">${idx}</a>
			</li>
		</c:forEach>
		<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
			<li><a href="/master/customer?page=${pageMaker.endPage + 1}">&laquo;</a></li>
		</c:if>
	</ul>
</div> 

<div align="center">
	<button type="button" onClick="history.back()">메인</button>
</div>
<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
     	<div class="modal-header" style="padding:7px 7px; text-align:center;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4>고객정보</h4>
        </div>
        <div class="modal-body">
          <form action="/master/comment" method="post" role="form">
            <div class="form-group">
              <textarea class="form-control" id="comments" name="comments"></textarea>
            </div>
            <button type="button" class="btn btn-success" id="save">저장</button>
         	<button type="submit" class="btn btn-danger" data-dismiss="modal">취소</button>
          </form>
        </div>
      </div>
    </div>
  </div> 
</body>
</html>
<script>
var phone;
	$(".comment").click(function(){
		var tt = $(this);
		phone = tt.attr("data");
		$("#myModal").modal();
	})
	$("#save").click(function(){
		$.ajax({
			type: "post",
			async: false,
			url: "/master/comment",
			data:{
				"phone": phone,
				"comments": $("#comments").val()
			}
		}).done(function(){
			location.reload(true);
		})
	})
</script>