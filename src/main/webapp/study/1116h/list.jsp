<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- list.jsp -->

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>list.jsp</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<style>
	th,td{text-align:center}
  .table-dark td{border: 1px solid #dee2e6;}
  body{
			width: 1000px;
			margin: 0 auto;
			padding: 0px;
		}
		#header{
			background-color : aqua;
			text-align: center;
			padding-top : 20px;
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
		
		

</style>
	<body>
	<!-- 헤더영역('메뉴/로고' 를 표시한다. -->
		<div id="header">
		  <%-- <%@ include file="menu.jsp" %> --%>
			<jsp:include page="menu.jsp"></jsp:include>
		</div>
		<p><br/></p>
		<h2 class='text-center'>${vo.buyer}님의 상품 안내</h2>
		<div class='container'>
			<table class='table table-bordered'><tr class='table-info text-info'>
			<th>상품 분류</th><th>상품명</th><th>수량</th><th>금액</th><th>총 금액</th>
		    
		    	
		    <!-- int hapresult = 0;
		    DecimalFormat decFormat = new DecimalFormat("###,###");
		    
		    for(int i=0;i<goods.length;i++) {
		    	String productClss=proproductClss[i];
		    	String good= goods[i];
		    	String su= sus[i];
		    	String result= decFormat.format(Integer.parseInt(results[i]))+"원";
		    	String totresult= totresults[i];
		    	int abc = Integer.parseInt(totresult.substring(0,totresult.length()-1).replaceAll(",","")); 
		    	hapresult += abc;
		    	
		    }-->
			<tr>
			<td>d</td>
			<td>d</td>
			<td>d</td>
			<td>d</td>
			<td>d</td>
			</tr>
			    <!-- String tot = decFormat.format(hapresult)+"원"; -->
			    <!-- out.println("<tr class='table-dark text-white'><td>총가격</td><td colspan='4'>" + tot + "</td></tr>"); -->
			</table>
			<a href="<%=request.getContextPath()%>/study/1116h/main.jsp" class="btn btn-success form-control">돌아가기</a>
			<div id="footer">
			  <%-- <%@ include file="footer.jsp" %> --%>
			  <jsp:include page="footer.jsp"></jsp:include>
			</div>
		</div>
	<hr/>
</body>
</html>