<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://cdn.jsdelivr.net/npm/signature_pad@2.3.2/dist/signature_pad.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<style>
.wrapper {
  position: relative;
  width: 200px;
  height: 150px;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
.signature-pad {
  position: relative;
  left: 0;
  top: 0;
  width:200;
  height:150;
}
</style>
<body>
<div class="wrapper">
  <canvas id="signature-pad" class="signature-pad" width=200 height=150></canvas>
</div>
<div>
  <button id="save">저장</button>
  <button id="clear">지우기</button>
  <button onClick="javascript:window.close()">취소</button>
</div>
</body>
</html>

<script>
var signaturePad = new SignaturePad(document.getElementById('signature-pad'), {
	  backgroundColor: 'rgba(255, 255, 255, 0)',
	  penColor: 'rgb(255, 0, 0)'
	});
	var saveButton = document.getElementById('save');
	var cancelButton = document.getElementById('clear');

	saveButton.addEventListener('click', function (event) {
		var data = signaturePad.toDataURL('image/png');
		$("#imgData").val(data);
// ajax 사인데이터 보내기
		$.ajax({
			type: "post",
			async: false,
			url: "/sign ",
			data:{
				"imgData": data,
			}
		}).done(function(){
			window.close();
		})
	});

	cancelButton.addEventListener('click', function (event) {
	  signaturePad.clear();
	});
</script>