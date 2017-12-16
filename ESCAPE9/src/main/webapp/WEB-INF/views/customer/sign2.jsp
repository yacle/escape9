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
.printDiv {
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
    <form name="imgForm" id="imgForm" action="/sign" method="post">
        <input type="hidden" id="imgData" name="imgData">
    </form>
    <div class="printDiv">
    	<img src="/images/brochure.png" width="800" height="600" id="imgTarget"/>
		<canvas id="signature-pad" class="signature-pad" width=800 height=600></canvas>
    </div>
	<div align="center">
		<button type="button" class="btn btn-primary" id="btnDown">저장</button>
	</div>
</body>
</html>
<script>
var signaturePad = new SignaturePad(document.getElementById('signature-pad'), {
	  backgroundColor: 'rgba(255, 255, 255, 0)',
	  penColor: 'rgb(0, 0, 255)'
	});
</script>
