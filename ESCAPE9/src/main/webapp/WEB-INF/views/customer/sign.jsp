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
<script src="/resources/html2canvas.js"></script>
<script src="/resources/html2canvas.min.js"></script>
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
	<div class="wrapper" id="canvas">
		<img src="/images/brochure.png" width="800" height="600"/>
		<canvas id="signature-pad" class="signature-pad" width="800" height="600"></canvas>
	</div><br/><br/>
	<form method="post" action="/info" id="info">
		<div style="margin-left:30px;">
			<b>이름</b>:<input type="text" size="10" name="name"/>
			<b>전화번호</b>:<input type="number" name="phone"/>
			<b>이메일</b>:<input type="email" size="30" name="email"/>
		</div><br/>
		<div align="center">
			<button onclick="javascript:save()">저장</button>
			<button onclick="javascript:clear()">지우기</button>
		</div>
	</form>
</body>
</html>
<script>
var canvas = document.getElementById('signature-pad');
var capture = document.getElementById('canvas');
var sign = new SignaturePad(canvas, {
	  backgroundColor: 'rgba(255, 255, 255, 0)',
	  penColor: 'rgb(255, 0, 0)'
	});

var save = function() {
	
	html2canvas($("#canvas")).then(function(capture) {
		$("#canvas").appendChild(capture);
	});
	
	html2canvas($("#canvas").parent(), {
	    onrendered: function(capture) {
	        if (typeof FlashCanvas != "undefined") {
	            FlashCanvas.initElement(capture);
	        }
	        $.ajax({
                url : "/sign",
                method : "post",
                dataType : "json",
                data : {
                    sign : capture.toDataURL("image/png")
                },
                success : function(r){
                    alert("저장완료 : " + r.filename);
                    sign.clear();
                    window.close();
                },
                error : function(res){
                    console.log(res);
                }
            });
	    }
	});
}

var clear = function(){}
	sign.clear();
}
</script>