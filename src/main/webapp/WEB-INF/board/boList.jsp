<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>boList.jsp</title>
  <jsp:include page="/include/bs4.jsp"></jsp:include>
  <script>
  	'use strict';
  	function pageCheck() {
    	let pageSize = document.getElementById("pageSize").value;
    	location.href = "${ctp}/boList.bo?pageSize="+pageSize+"&pag=${pag}";
    }
  </script>
</head>
<body>
	<jsp:include page="/include/header.jsp"/>
	<p><br/></p>
	<div id="wrap">
		<div class="container">
  		<h2 class="text-center"><b>게 시 판 리 스 트</b></h2>
  		<br/>
  		<table class="table table-borderless">
  			<tr>
  				<td class="text-left p-0">
  					<c:if test="${sLevel != 1}"><a href="${ctp}/boInput.bo" class="btn btn-secondary btn-sm">글쓰기</a></c:if>
  				</td>
  				<td class="text-right p-0">
  					<select name="pageSize" id="pageSize" onchange="pageCheck()">
  						<option value="5"  ${pageSize==5  ? 'selected' : ''}>5건</option>
  						<option value="10" ${pageSize==10 ? 'selected' : ''}>10건</option>
  						<option value="15" ${pageSize==15 ? 'selected' : ''}>15건</option>
  						<option value="20" ${pageSize==20 ? 'selected' : ''}>20건</option>
  					</select>
  				</td>
  			</tr>
  		</table>
  		<table class="table table-hover text-center">
  			<tr class="table-dark text-dark">
  				<th>글번호</th>
  				<th>글제목</th>
  				<th>글쓴이</th>
  				<th>글쓴날짜</th>
  				<th>조회수</th>
  				<th>좋아요</th>
  			</tr>
				<%-- <c:set var="curScrStartNo" value="${curScrStartNo}"/>  넣는게 정석이고 좋지만 생략가능 --%>
  			<c:forEach var="vo" items="${vos}">
  				<tr>
  					<td>${curScrStartNo}</td>
  					<td class="text-left"><a href="${ctp}/boContent.bo?idx=${vo.idx}&pag=${pag}&pageSize=${pageSize}">${vo.title}</a><c:if test="${vo.hour_diff <= 24}"><img src="${ctp}/images/new.gif"></c:if></td>
  					<td>${vo.nickName }</td>
  					<%-- <td>${fn:substring(vo.wDate,0,10)}(${vo.day_diff})</td> --%>
  					
  					<!-- 오늘날짜는 시간으로 나오고 오늘이 지나면 (년-월-일) 로 출력된다.  -->
  					<%-- <td>${vo.day_diff > 0 ? fn:substring(vo.wDate,0,10) :fn:substring(vo.wDate,11,19) }</td> --%>
  					
  					<!-- 24시간 이지나면 (년-월-일) 로 출력되고 그전이면 시간으로 출력된다.  -->
  					<td>${vo.hour_diff > 24 ? fn:substring(vo.wDate,0,10) : fn:substring(vo.wDate,11,19)}</td>
  					
  					<td>${vo.readNum }</td>
  					<td>${vo.good }</td>
  				</tr>
  				<c:set var="curScrStartNo" value="${curScrStartNo-1}"/>
  			</c:forEach>
  			<tr><td colspan="6" class="m-0 p-0"></td></tr>
  		</table> 
  		<div class="text-center">
				<ul class="pagination justify-content-center">
					<c:if test="${pag > 1}">
						<li class="page-item"><a class="page-link text-secondary" href="${ctp}/boList.bo?pageSize=${pageSize}&pag=1">첫페이지</a></li>
					</c:if>
					<c:if test="${curBlock > 0}">
						<li class="page-item"><a class="page-link text-secondary" href="${ctp}/boList.bo?pageSize=${pageSize}&pag=${(curBlock-1)*blockSize + 3}">이전페이지</a></li>
					</c:if>
					
					<c:forEach var="i" begin="${(curBlock*blockSize) + 1}" end="${(curBlock*blockSize) +blockSize}" varStatus="st">
						<c:if test="${i <= totPage && i == pag}">
							<li class="page-item active"><a class="page-link bg-secondary border-secondary" href="${ctp}/boList.bo?pageSize=${pageSize}&pag=${i}">${i}</a></li>
						</c:if>
						<c:if test="${i <= totPage && i != pag}">
							<li class="page-item"><a class="page-link text-secondary" href="${ctp}/boList.bo?pageSize=${pageSize}&pag=${i}">${i}</a></li>
						</c:if>
					</c:forEach> 
					<c:if test="${curBlock < lastBlock}">
						<li class="page-item"><a class="page-link text-secondary" href="${ctp}/boList.bo?pageSize=${pageSize}&pag=${(curBlock+1)*blockSize + 1}">다음페이지</a></li>
					</c:if>
					<c:if test="${pag < totPage}">
						<li class="page-item"><a class="page-link text-secondary" href="${ctp}/boList.bo?pageSize=${pageSize}&pag=${totPage}">마지막페이지</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
	<p><br/></p>
	<jsp:include page="/include/footer.jsp"/>
</body>
</html>