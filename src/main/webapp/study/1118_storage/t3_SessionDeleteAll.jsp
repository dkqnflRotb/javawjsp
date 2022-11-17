<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- t3_SessionDeleteAll.jsp -->
<%
	String imsiName = (String)session.getAttribute("sName");
	
	pageContext.setAttribute("pName", imsiName);

	session.invalidate(); //현재 저장된 모든 세션 삭제
%>
<script>
  alert("${pName}님의 모든 세션 삭제 완료!!");
  location.href = "t3_SessionMain.jsp";
</script>