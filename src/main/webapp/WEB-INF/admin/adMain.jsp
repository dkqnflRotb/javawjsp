<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>adMain.jsp</title>
  <frameset cols="130px, *">
  	<frame src="${ctp}/adLeft.ad" name="adLeft" frameborder="3"/>
  	<frame src="${ctp}/adContent.ad" name="adContent" frameborder="0"/>
  </frameset>
</head>
<body>
</body>
</html>