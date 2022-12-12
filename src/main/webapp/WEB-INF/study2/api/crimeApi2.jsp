<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>title</title>
  <jsp:include page="/include/bs4.jsp"></jsp:include>
  <script>
  	'use strict'
  	const API_KEY = 'nXLMY6LeIyusHiNiU8xOGmWeRZv%2FSw3Qd0rbT4Qh7uoISFMSDi5pjJgQGY0yr5dyksaP3JnbikjypalcMxh9Uw%3D%3D';
  	
  	// 외부 데이터를 가져오는 방식? jQuery / fetch 방식
  	
  	async function getCrimeData(){
			let url = "https://api.odcloud.kr/api/15084592​/v1​/uddi:21ec6fa1-a033-413b-b049-8433f5b446ff";   		
  		url += "?serviceKey="+API_KEY+"&page=1&perPage=100&returnType=json";
  		
  		// 앞의 지정한 URL을 호출한다. (전송시까지 기다리기 위해 async명령 사용 . await명령 사용시는 함수명 앞에 꼭 async 기술한다.)
  		const response = await fetch(url);  // 패치방식 await 이면 함수앞에 무조건 적어줘야함
  		
  		// 응답받은 데이터를 json데이터 형식으로 변환하여 data변수에 담는다.
  		const data =  await response.json();
  		
  		console.log("data : ", data);
  		
  		$("#demo").html(data);
  	}
  			
 	</script>
</head>
<body>
	<jsp:include page="/include/header.jsp"/>
	<p><br/></p>
	<div id="wrap">
		<div class="container">
  		<div>
  			<input type="button" value="강력범죄자료조회" onclick="getCrimeData()" class="btn btn-success"/>
  		</div>
  		<hr/>
  		<div id="demo"></div>
		</div>
	</div>
	<p><br/></p>
	<jsp:include page="/include/footer.jsp"/>
</body>
</html>