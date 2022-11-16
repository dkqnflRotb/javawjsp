<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String sw = request.getParameter("sw")==null? "" : request.getParameter("sw");
%>
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
			padding-top : 29px;
			height: 80px;
		}
		#footer{
			padding-top : 23px;
			background-color : #ccc;
			text-align: center;
			height: 75px;
		}
		#content {
			background-color : #fff;
			text-align: center;
		}
		
	</style>
</head>
<body>
<div class="container">
	<!-- 헤더영역(메뉴/로고를 표시한다. -->
	<div id="header">
		<%@ include file="menu.jsp"%>
	
	</div>
  <!-- 본문영역 -->
  <div id="content">
	  <br/>
	<%if(sw.equals("guest")) { %>
		<%@ include file="guest.jsp"%>
	<%}else if(sw.equals("board")) { %>
		<%@ include file="board.jsp"%>
	<%}else if(sw.equals("pds")) { %>
		<%@ include file="pds.jsp"%>
	<%}else if(sw.equals("photo")) { %>
		<%-- <%@ include file="photo.jsp"%> --%>
		<jsp:include page="photo.jsp"></jsp:include> <!--인크루드 jsp 엑션 태그  -->
	<%} else{ %>
	  <h2>이 곳은 메인화면입니다.</h2>
	  <hr/>
	  <p><img src="../../images/람보르기니btn.jpg" width="600px"/></p>
	<%} %>  
	  <br/>
  </div>
  <!-- 푸터영역(Copyright나 주소, 소속, 작성자 등을 기술한다.) -->
  <div id="footer">
  	<%@ include file="footer.jsp"%>
  </div>
</div>
</body>
</html>