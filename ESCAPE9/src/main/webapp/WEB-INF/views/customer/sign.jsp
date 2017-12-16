<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>전자서명</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/signature_pad@2.3.2/dist/signature_pad.min.js"></script>
<script type="text/javascript" src="/resources/html2canvas.js"></script>
<script type="text/javascript" src="/resources/html2canvas.min.js"></script>
<script>
function fnCopy() {
	html2canvas($("#divSource"), {
		//allowTaint: true,
		//taintTest: false,
		useCORS: true,
		proxy: '/etc/proxy_image',
		onrendered: function(canvas) {
			var image = canvas.toDataURL();
			$("#imgTarget").attr("src", image);
		}
	});
}	
</script>
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
	<div class="wrapper" id="divSource">
		<img src="/images/brochure.png" width="800" height="600" id="imgTarget"/>
		<canvas id="signature-pad" class="signature-pad" width=800 height=600></canvas>
	</div>
	<div>
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
function upload(getCanvas){
	var imageData = getCanvas.toDataURL("image/png");
	var formData = new FormData();
	formData.append('file', imageData);
	$.ajax({
		url:'/sign',
		type: 'post',
		dataType:'json',
		data: formData,
		processData: false,
		contentType: false,
		success:function(data){
			alert("저장되었습니다.");
		},
		error:function(request, status, error){
			console.log(request, status, error);
		}
	})
}
function makeImage(){
	element = $("#divSource");
	html2canvas(element,{
		onrendered:function(canvas){
		var	getCanvas = canvas;
			upload(getCanvas);
		}
	})
}
saveButton.addEventListener('click', function (event) {
	makeImage();
})

cancelButton.addEventListener('click', function (event) {
	signaturePad.clear();
});

</script>