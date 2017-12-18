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
.wrapper {
  position: relative;
  width: 800px;
  height: 910px;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
img{
	position: absolute; 
	left: 0; 
	top: 0;
}
img.sign{
	left: 20px;
	top: 10px;
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
				<div class="wrapper">
					<img src="/images/sign_back.png" width="800px" height="900px">
					<img src="/saveSignImage/${fileName}" class="sign" width="800px" height="910px">
				</div><br/>
			</div>
			<div style="margin-left: 260px;">
				<h5>[작성자 : ${name} &#8193;작성일시 : ${date}]</h5>
			</div>
		</div>
		<div style="margin-left:390;">
			<button type="button" id="btnDown" class="btn btn-primary">확인</a>
		</div>
	</c:if>
	<c:if test="${empty date }">
		<div>
			<img src="/oath/${fileName}">
		</div>
		<div align="center">
			<button type="button" class="btn btn-default" onClick="history.back()">목록</button>
		</div>
	</c:if>
</body>
</html>