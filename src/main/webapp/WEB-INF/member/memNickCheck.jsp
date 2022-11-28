<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>memIdCheck.jsp</title>
  <jsp:include page="/include/bs4.jsp"></jsp:include>
	<script>
		'use strict';
		
		//중복 아이디 재검색하기
		function nickCheck(){
			let nickName = childForm.nickName.value;
			
			if(nickName.trim()==""){
				alert("닉네임을 입력하세요!");
				childForm.nickName.focus();
			}
			else {
				childForm.submit();
			}
		}
		
		function sendCheck(){
			opener.window.document.myform.nickName.value = '${nickName}';
			opener.window.document.myform.name.focus();
			window.close();
		}
	</script>
</head>
<body>
	<div class="container">
  	<h3>닉네임 체크폼</h3>
  	<c:if test="${resN == 1 }">
  		<h4><font color="blue"><b>${nickName}</b></font>닉네임은 사용 가능합니다.</h4>
  		<p><input type="button" value="창닫기" onclick="sendCheck()"/></p>
  	</c:if>
  	<c:if test="${resN != 1 }">
  		<h4><font color="blue"><b>${nickName}</b></font>이 닉네임 이미 사용중인 닉네임입니다.</h4>
			<form name="childForm" method="post" action="${ctp}/memNickCheck.mem">
				<p>
					<input type="text" name="nickName"/>
					<input type="button" value="닉네임재검색" onclick="nickCheck()"/>
				</p>
			</form>
  	</c:if>
	</div>
</body>
</html>