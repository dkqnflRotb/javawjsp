<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>adMemInfor.jsp</title>
  <jsp:include page="/include/bs4.jsp"></jsp:include>
</head>
<body>
	<div id="wrap">
	<p><br/></p>
	<div class="container" align="center">
		<h2>회원 정보 상세 보기</h2>
	  <div class="card"  style="width:400px">
	    <img class="card-img-top" src="${ctp}/data/member/${vo.photo}"  alt="Card image" style="width:100%">
	    <div class="card-body" align="left">
	      <h4 class="card-title">아이디: ${vo.mid}</h4>
	      <p class="card-text">idx  :  ${vo.idx}</p> 
	      <p class="card-text">별명 : ${vo.nickName}</p> 
	      <p class="card-text">성명 :${vo.name}</p>  
	      <p class="card-text">성별 :${vo.gender}</p>  
	      <p class="card-text">생일 :${vo.birthday}</p>  
	      <p class="card-text">전화번호 : ${vo.tel}</p>  
	      <p class="card-text">주소 : ${vo.address}</p>  
	      <p class="card-text">이메일 : ${vo.email}</p>  
	      <p class="card-text">홈페이지 :${vo.homePage}</p>  
	      <p class="card-text">직업 : ${vo.job}</p> 
	      <p class="card-text">취미 : ${vo.hobby}</p> 
	      <p class="card-text">자기소개 : ${vo.content}</p> 
	      <p class="card-text">등급 : ${strLevel}</p> 
	      <p class="card-text">총방문횟수 : ${vo.visitCnt}</p> 
	      <p class="card-text">최초 가입일 : ${vo.startDate}</p> 
	      <p class="card-text">마지막 방문일 : ${vo.lastDate}</p> 
	      <p class="card-text">오늘 방문횟수 : ${vo.todayCnt}</p> 
      	<c:if test="${sLevel ==0}">
          <p class="card-text">총 포인트 : ${vo.point}</p>
          <p class="card-text">공개유무 : ${vo.userInfor}</p>
      	</c:if>
      	<a href="${ctp}/adMemList.ad?pag=${pag}" class="btn btn-success mx-auto d-block" >돌아가기</a> 
	    </div>
	  </div>
	  <br/>
	</div>
	<p><br/></p>
	</div>
</body>
</html>