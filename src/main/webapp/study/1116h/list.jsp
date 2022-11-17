<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%  
	DecimalFormat decFormat = new DecimalFormat("###,###");
    String productClss=request.getParameter("productClss");
    String good=request.getParameter("good")==null ? "" : request.getParameter("good");
    String su=request.getParameter("su");
    String result=request.getParameter("result");
    String totresult=request.getParameter("totresult");
		
    String[] arrypro=productClss.split("/");
    String[] arrygood=good.split("/");
    String[] arrysu=su.split("/");
    String[] arryresult=result.split("/");
    
		String[] tot=new String[arrygood.length];
    
    System.out.println(productClss);
 
 %>
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
		    
		  <%if(!good.equals("")){
		  for(int i=0; i<arrygood.length; i++){
		  	
		  	tot[i]=decFormat.format((Integer.parseInt(arrysu[i])*Integer.parseInt(arryresult[i])))+"원";
		  	arryresult[i]=decFormat.format(Integer.parseInt(arryresult[i]))+"원"; 
		  %>
			<tr>
			<td><%= arrypro[i] %></td>
			<td><%= arrygood[i] %></td>
			<td><%= arrysu[i] %></td>
			<td><%= arryresult[i] %></td>
			<td><%=  tot[i]   %></td>
			</tr>
			<% }}%>
			    <!-- String tot = decFormat.format(hapresult)+"원"; -->
			    <tr class='table-dark text-white'><td><b>총가격</b></td><td colspan='4'>${vo.totresult}</td></tr>
			</table>
			<a href="${pageContext.request.contextPath}/j1116h/Input1?buyer=${vo.buyer}&productClss=${vo.productClss}&good=${vo.good}&su=${vo.su}&result=${vo.result}&totresult=${vo.totresult}" class="btn btn-success form-control">돌아가기</a>
			<a href="${pageContext.request.contextPath}/j1116h/Input1"class="btn btn-danger mt-2 form-control">초기화</a>
			<div id="footer">
			  <%-- <%@ include file="footer.jsp" %> --%>
			  <jsp:include page="footer.jsp"></jsp:include>
			</div>
		</div>
	<hr/>
</body>
</html>