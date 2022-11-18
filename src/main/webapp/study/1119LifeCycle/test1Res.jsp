<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>test1Res.jsp</title>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
	<p><br/></p>
	<div class="container">
	<h2>Servlet Life Cycle 연습(test1Res.jsp)</h2>
	<form name="myform" method="post" action="${pageContext.request.contextPath}/1119/LifeCycle">
  	<table class="table">
  		<tr>
  			<th>제목</th>
  			<td>${title}</td>
  			<td><input type="text" name="title" size="60" value="ServLet 메소드의 생명주기" autofocus/></td>
  		</tr>
  		<tr>
  			<th>내용</th>
  			<td>${content}</td>
  		</tr>
      <tr>
        <td colspan="2"><input type="button" value="돌아가기" onclick="location.href='${pageContext.request.contextPath}/study/1119LifeCycle/test1.jsp';" class="btn btn-success form-control"/></td>
      </tr>
    </table>
  </form>
	</div>
	<p><br/></p>
</body>
</html>