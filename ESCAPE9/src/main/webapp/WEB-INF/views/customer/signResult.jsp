<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>서약서</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/resources/html2canvas.js"></script>
<script>
    $(function(){
        /** btnDown 버튼 클릭 **/
        $('#btnDown').click(function() {
			html2canvas(document.body).then(function(canvas) {
//			    document.body.appendChild(canvas);
                    var image = canvas.toDataURL("image/png"); 
                    $("#imgData").val(image);
                    $("#imgForm").submit();
			});
        });
    });
</script>
</head>
<style>
.img {
	background-image:url("/images/brochure.png");
	background-size: 800px 600px;
	background-repeat: no-repeat;
}
</style>
<body>
    <form name="imgForm" id="imgForm" action="/oath" method="post">
        <input type="hidden" id="imgData" name="imgData">
        <input type="hidden" name="file_name" value="${fileName}">
    </form>
	<c:if test="${!empty date}">
	    <div class="printDiv">
			<div class="img">
				<img src="/saveSignImage/${fileName}" width="800" height="600">
			</div>
			<div style="margin-left: 300px;">
				<h5>[작성일시 : ${date}]</h5>
			</div>
		</div>
		<div>
			<button type="button" id="btnDown" class="btn btn-primary">확인</a>
		</div>
	</c:if>
	<c:if test="${empty date }">
		<div>
			<img src="/oath/${fileName}" width="1200" height="900">
		</div>
		<div align="center">
			<button type="button" class="btn btn-default" onClick="history.back()">목록</button>
		</div>
	</c:if>
</body>
</html>