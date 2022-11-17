<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	String mid = "";
	
	if(cookies != null){
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("cMid")){
				mid = cookies[i].getValue();		
				pageContext.setAttribute("mid", mid);
				break;
			}
		}
	}
	String imsiMid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
  if(mid.equals("")) pageContext.setAttribute("mid", imsiMid);
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>t2_Login.jsp</title>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
	<form name="myform" method="post" action="${pageContext.request.contextPath}/study/1118_storage/t2_LoginOk.jsp">
		<table class="table table-bordered text-center">
			<tr>
				<td colspan="2"><font size="5">로그인</font></td>
			</tr>
			<tr>
				<th class="bg-primary text-white">아이디</th>
				<td><input type="text" name="mid" value="${mid}" autofocus required class="form-control"/></td>
			</tr>
			<tr>
				<th class="bg-primary text-white" >비밀번호</th>
				<td><input type="password" name="pwd" value="" required class="form-control"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="로그인"	class="btn btn-success"/> &nbsp;&nbsp;
					<input type="reset" value="다시입력" class="btn btn-warning"/>
				</td>
			</tr>
		</table>
	</form>
</div>
<p><br/></p>
</body>
</html>