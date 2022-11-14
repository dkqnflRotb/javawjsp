<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");
    String id= request.getParameter("id");
    String pwd= request.getParameter("pwd");
    String name= request.getParameter("name");
    String gender= request.getParameter("gender");    
    String email = request.getParameter("email");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>title</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>
<p><br/></p>
<div class="container">
  <table class="table table-bordered table-sm">
    <h2>회원 정보</h2>
      <thead>
     <tr>
        <th>아이디</th>
        <th>비밀번호</th>
        <th>성명</th>
        <th>성별</th>
        <th>이메일</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><%=id %></td>
        <td><%=pwd %></td>
        <td><%=name %></td>
        <td><%=gender %></td>
        <td><%=email %></td>
      </tr>
    </tbody>
  </table>
<p><a href="2022-11-13hw.jsp" class="btn btn-link">돌아가기</a></p>
</div>
<p><br/></p>
</body>
</html>
