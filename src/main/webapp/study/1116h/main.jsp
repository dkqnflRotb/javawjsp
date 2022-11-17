<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>title</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<style>
		body{
			width: 1000px;
			margin: 0 auto;
			padding: 0px;
		}
		#header{
			background-color : aqua;
			text-align: center;
			padding-top : 15px;
			height: 80px;
			font-size: 32px;
		}
		#footer{
			padding-top : 10px;
			background-color : #ccc;
			text-align: center;
			height: 40px;
			width:1000px;
			position : fixed;
			bottom:0;
		}
		#content {
			background-color : #fff;
			text-align: center;
		}
		#tdtd {
			text-align:center;
			width:350px;
		}
		
		#addTable div {
		  margin : 0 auto;
			text-align:right;
		}
		h2, p{
			text-align:center;
		}
		
		input[type="text"]{
			text-align:right;
		}
	</style>
</head>
<body>
<div class="container">
	<!-- 헤더영역(메뉴/로고를 표시한다. -->
	<div id="header">
		<jsp:include page="menu.jsp"></jsp:include>
	</div>
  <!-- 본문영역 -->
  <div id="content">
	  <br/>
	  <h2>이 곳은 메인화면입니다.</h2>
	  <hr/>
	  <p><img src="https://www.lgcns.com/wp-content/uploads/2021/11/9923143E5CDE636C07.png" width="600px"/></p>
	  <br/>
  </div>
  <!-- 푸터영역(Copyright나 주소, 소속, 작성자 등을 기술한다.) -->
  <div id="footer">
  	<jsp:include page="footer.jsp"></jsp:include>
  </div>
</div>
</body>
</html>