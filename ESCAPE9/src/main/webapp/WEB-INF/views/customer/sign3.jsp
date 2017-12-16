<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>전자서명</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/signature_pad@2.3.2/dist/signature_pad.min.js"></script>
</head>
<style>
.wrapper {
  position: relative;
  width: 800px;
  height: 600px;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
img {
  position: absolute;
  left: 0;
  top: 0;
}
.signature-pad {
  position: absolute;
  left: 0;
  top: 0;
  width:800px;
  height:600px;
}

</style>
<body>
	<div class="wrapper">
		<img src="/images/brochure.png" width="800" height="600"/>
		<canvas id="signature-pad" class="signature-pad" width=800 height=600></canvas>
	</div>
	<div>
		<form name="imgForm" id="imgForm" action="/signResult" method="post">
			<input type="hidden" id="imgData" name="imgData">
			<b>이름 : </b><input type="text" name="name"/>
			<b>전화번호 : </b><input type="number" name="phone"/>
			<b>이메일 : </b><input type="email" name="email"/>
	    </form>
		<button id="save">Save</button>
		<button id="clear">Clear</button>
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
	$("#imgForm").submit();
	
});

cancelButton.addEventListener('click', function (event) {
  signaturePad.clear();
});
</script>
