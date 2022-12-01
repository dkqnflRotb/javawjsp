<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>memOutPwdCheck.jsp</title>
  <jsp:include page="/include/bs4.jsp"></jsp:include>
  <script>
  	'use strict';
    function fCheck() {
    	let pwd = document.getElementById("pwd").value;
    	
    	if(pwd.trim()==""){
    		alert("비밀번호를 입력해주세요")
    		document.getElementById("pwd").focus();
    	}
    	else {
    		let ans = confirm("탈퇴후 1개월간은 같은아이디로 가입하실수 없습니다.\n탈퇴 하시겠습니까?")
    		if(ans) myform.submit();
    	}
    }
  </script>
</head>
<body>
	<jsp:include page="/include/header.jsp"/>
	<p><br/></p>
	<div id="wrap">
		<div class="container">
			<form name="myform" method="post" action="${ctp}/memPwdCheckOk.mem?sw=1" class="was-validated">
				<h2 class="text-center">회원 탈퇴 비밀번호 확인</h2>
				<br/>
				<table class="table table-vordered">
					<tr>
						<th>비밀번호</th>
						<td>
							<input type="password" name="pwd" id="pwd" autofocus required class="form-control"/>
							<div class="invalid-feedback">비밀번호를 입력하세요.</div>					
						</td>
					</tr>
					<tr>
						<td colspan="2" class="text-center">
							<input type="button" value="탈퇴하기" onclick="fCheck()" class="btn btn-success"/> &nbsp;
							<input type="reset" value="다시입력" class="btn btn-success"/> &nbsp;
							<input type="button" value="돌아가기" onclick="location.href='${ctp}/memMain.mem';" class="btn btn-success"/>
						</td>
					</tr>
				</table>
				<input type="hidden" name="mid" value="${sMid}"/>
			</form>
		</div>
	</div>
	<p><br/></p>
	<jsp:include page="/include/footer.jsp"/>
</body>
</html>