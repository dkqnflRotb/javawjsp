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
  	function idCheck() {
  		// let mid= document.getElementById("mid").value;
  		// let mid = document.myform.mid.value;
  		let mid = $("#mid").val();
  		
  		if(mid.trim()==""){
  			alert("아이디를 입력하세요.");
  			$("#mid").focus();
  			return false;
  		}
  		
  		/* let query = {
  				mid: mid, 
  				idx: idx,
  				address: address
  		} */
  		
  	}
  	
  	function idCheck2() {
  		// let mid= document.getElementById("mid").value;
  		// let mid = document.myform.mid.value;
  		let mid = $("#mid").val();
  		
  		if(mid.trim()==""){
  			alert("아이디를 입력하세요.");
  			$("#mid").focus();
  			return false;
  		}
  		
  	 //	location.href = "${ctp}/idSearchTest2?mid="+mid;
			$.ajax({
				url : "${ctp}/idSearchTest2",
				type : "get",   //type 생략하면 기본 "get"                          
				/* data : query, */
				data : {mid: mid}, 
				// contentType: "application/json",
				// charset : "utf-8",
				success: function(res){
					alert("사버에서 아이디검색을 성공적으로 마치고 돌아왔습니다. 검색된성명은? "+res);
					$("#demo").html(res);
				},
				error: function(){
					alert("전송 실패!");
				} 
			});  		
  	}
  	
  	function idCheck3() {
  		let mid = $("#mid").val();
  		
  		if(mid.trim()==""){
  			alert("아이디를 입력하세요.");
  			$("#mid").focus();
  			return false;
  		}
  		
			$.ajax({
				url : "${ctp}/idSearchTest3",
				type : "post",   //type 생략하면 기본 "get"                          
				data : {mid: mid}, 
				success: function(res){
					$("#demo").html(res);
					let str =res.split("/");
					$("#tMid").html(str[0]);
					$("#name").html(str[1]);
					$("#nickName").html(str[2]);
					$("#gender").html(str[3]);
					$("#point").html(str[4]);
				},
				error: function(){
					alert("전송 실패!");
				} 
			});  		
  	}
  </script>
</head>
<body>
	<jsp:include page="/include/header.jsp"/>
	<p><br/></p>
	<div id="wrap">
		<div class="container">
			<h2>AJax연습</h2>
			<hr/>
			<form name="myform">
				아이디 : <input type="text" name="mid" id="mid" /> &nbsp;
				<input type="button" value="아이디일반검색1" onclick="idCheck()" class="btn btn-info"/> &nbsp;
				<input type="button" value="아이디검색2" onclick="idCheck2()" class="btn btn-success"/> &nbsp;
				<input type="button" value="아이디검색3" onclick="idCheck3()" class="btn btn-primary"/> &nbsp;
				<br/>
				<div>출력결과 : <span id="demo">${name}</span></div>
				<hr/>
				<div>
					<p>아이디 : <span id="tMid"></span></p>
					<p>성명 : <span id="name"></span></p>
					<p>별명 : <span id="nickName"></span></p>
					<p>성별 : <span id="gender"></span></p>
					<p>포인트:<span id="point"></span></p>
				</div>
			</form>
		</div>
	</div>
	<p><br/></p>
	<jsp:include page="/include/footer.jsp"/>
</body>
</html>