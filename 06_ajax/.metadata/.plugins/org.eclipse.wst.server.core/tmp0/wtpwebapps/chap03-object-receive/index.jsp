<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Object Receive</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
</head>
<body>

	<h1>AJAX 요청 후 stream을 이용한 JSON 응답 (toString overriding)</h1>
	
	<h3>1. 데이터 전송 없이 JSON 반환</h3>
	<button id="send-get-1">SEND</button>
	<script>
		$("#send-get-1").click(function(){
			$.ajax({
				url: "/chap03/receive/override",
				type: "get",
				success: function(data) {
					console.table(data);
				},
				error: function(error) {
					console.log(error);
				}
			});
		});
	</script>
	
	<h3>2. 데이터 전송 없이 JSONArray 반환</h3>
	<button id="send-get-2">SEND</button>
	<script>
		$("#send-get-2").click(function(){
			$.ajax({
				url: "/chap03/receive/list",
				type: "get",
				success: function(data) {
					console.table(data);
				},
				error: function(error) {
					console.log(error);
				}
			});
		});
	</script>
	
	<h3>3. 데이터 전송 없이 hashMap 반환</h3>
	<button id="send-get-3">SEND</button>
	<script>
		$("#send-get-3").click(function(){
			$.ajax({
				url: "/chap03/receive/map",
				type: "get",
				success: function(data) {
					console.table(data);
				},
				error: function(error) {
					console.log(error);
				}
			})
		});
	</script>

</body>
</html>