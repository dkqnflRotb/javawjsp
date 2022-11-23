<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% pageContext.setAttribute("newLine","\n"); %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>guList.jsp</title>
  <jsp:include page="/include/bs4.jsp"></jsp:include>
  <style>
  	th {
  		text-align : center;
  		background-color: #ccc;
  	}
  </style>
  <script>
  	'use strict';
  		function delCheck(idx){
	  		let ans = confirm("정말로 삭제하시겠습니까?")
	  		if(ans) location.href="${ctp}/guDelete.gu?idx="+idx;
	  	}
  </script>
</head>
<body>
<%
	/*
		현 접속자의 IP를 구합니다.
	*/
	String clp = request.getRemoteAddr();
	/*
		허가된 IP목록 입니다.
		아래배열에 추가하면 해당IP에 대해 access가 허용 됩니다.
	*/
	String alpTable[]= {"192.168.50.145","192.168.50.218"};
	int i;
	int iOK = 0;
	for(i=0; i<alpTable.length; i++){
		if(alpTable[i].equals(clp)){
			iOK=1;
			break;
		}
	}
	if( iOK==0){
		System.out.println("[IP차단] Access Denied : " + clp);
		response.sendRedirect("../../../");
		
		return;
	}
%>
	<jsp:include page="/include/header.jsp"/>
	<p><br/></p>
	<div class="container">
  	<h2 class="text-center">방 명 록 리 스 트</h2>
  	<br/>
	  	<table class="table table-borderless mb-0">
	  		<tr>
	  			<td>
	  				<c:if test="${sAMid != 'admin'}"><a href="${ctp}/adminLogin.gu" class="btn btn-sm btn-secondary">관리자</a></c:if>
	  				<c:if test="${sAMid == 'admin'}"><a href="${ctp}/adminLogout.gu" class="btn btn-sm btn-secondary">관리자 로그아웃</a></c:if>
	  			</td>
	  			<td style="text-align:right;"><a href="${ctp}/guest/guInput.gu" class="btn btn-sm btn-secondary">글쓰기</a></td>
	  		</tr>
	  	</table>
  	<c:forEach var="vo" items="${vos}" varStatus="st" >
	  	<table class="table table-borderless mb-0">
	  	<tr>
			  <td>방문번호 : ${vo.idx}
			    <c:if test="${sAMid == 'admin'}"><a href="javascript:delCheck(${vo.idx})" class="btn btn-sm btn-danger">삭제</a></c:if>
			  </td>
			  <td style="text-align:right;">방문IP : ${vo.hostIp}</td>
			</tr>
	  	</table>
	  	<table class="table table-bordered">
	  		<tr>
	  			<th style="width:20%;">성명</th>
	  			<td style="width:25%;">${vo.name}</td>
	  			<th style="width:20%;">방문일짜</th>
	  			<td style="width:35%;">${vo.visitDate}</td>
	  		</tr>
	  		<tr>
	  			<th>전자우편</th>
	  			<td colspan="3">${vo.email}</td>
	  		</tr>
	  		<tr>
	  			<th>홈페이지</th>
	  			<td colspan="3">
	  				<c:if test="${fn:length(vo.homePage) <= 8}">- 없음 -</c:if>
	  				<c:if test="${fn:length(vo.homePage) > 8}"><a href="${vo.homePage}" target="_blank">${vo.homePage}</a></c:if>
	  			</td>
	  		</tr>
	  		<tr>
	  			<th>방문소감</th>
	  			<td colspan="3">${fn:replace(vo.content, newLine, '<br/>')}</td>  <!-- textarea 줄바꿈하기  -->
	  		</tr>
	  	</table>
	  	<br/>
	  </c:forEach>
	</div>
	<p><br/></p>
	<jsp:include page="/include/footer.jsp"/>
</body>
</html>