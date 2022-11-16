<%@page import="j1116h.InputVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
 	InputVO vo = (InputVO) request.getAttribute("vo");
	/* System.out.println("jsp에서 vo : " + vo); */
%>
	<!-- <div class="text-center">
	  <a href="main.jsp">홈으로</a> |
	  <a href="guest.jsp">방명록</a> |
	  <a href="board.jsp">게시판</a> |
	  <a href="pds.jsp">자료실</a> |
	  <a href="photo.jsp">포토북</a> 
	</div> -->
	<div class="text-center">
	  <a href="${pageContext.request.contextPath}/j1116h/Input1?sw=main&buyer=${vo.buyer}&productClss=${vo.productClss}&good=${good}&su=${su}&result${result}&totresult${totresult}">홈으로</a> |
	  <a href="${pageContext.request.contextPath}/j1116h/Input1?sw=input&buyer=${vo.buyer}&productClss=${vo.productClss}&good=${good}&su=${su}&result${result}&totresult${totresult}">상품등록</a> |
	  <a href="${pageContext.request.contextPath}/j1116h/Input1?sw=list&buyer=$buyer=${vo.buyer}&productClss=${vo.productClss}&good=${good}&su=${su}&result${result}&totresult${totresult}">상품조회</a> 
	</div>
