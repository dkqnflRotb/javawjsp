<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>adMemList.jsp</title>
  <jsp:include page="/include/bs4.jsp"></jsp:include>
  <script>
    'use strict';
    
    function midSearch() {
      let mid = myform.mid.value;
      if(mid.trim() == "") {
    	  alert("아이디를 입력하세요!");
    	  myform.mid.focus();
      }
      else {
    	  myform.submit();
      }
    }
    
	   /*  let query={
	    		idx: idx,
	    		level: level
	    } */
	   
    function levelUpdate(){
    	let str = $("select[name=level] option:selected").val();
	    //let str1 = str.split("/");
    	let level = str;
    	//let idx = str1[1];
    	alert(level);
    	//alert(idx);
    	$.ajax({
    		url : "${ctp}/adMemberLevel.ad",
    		type : "get",
    		data : {
	    		idx: idx,
	    		level: level
	    	},
    		success:function(res){
    			alert("회원 등급 변경 완료");
    		},
    		error:function(){
    			alert("회원 등급 변경 실패");
    		}
    	});
    }
    
    
    
    function delCheck(${idx}){
    	
    }
  </script>
</head>
<body>
	<p><br/></p>
	<div id="wrap">
		<div class="container">
	  	<h2>전체 회원 리스트</h2>
	  	<br/>
		  <form name="myform" method="post" action="${ctp}/adMemberSearch.ad">
		  	<div class="row mb-2">
		  	  <div class="col form-inline">
		  	    <input type="text" name="mid" class="form-control" autofocus />&nbsp;
		  	    <input type="button" value="아이디개별검색" onclick="midSearch();" class="btn btn-secondary" />
		  	  </div>
		  	  <div class="col text-right"><button type="button" onclick="location.href='${ctp}/adMemList.ad';" class="btn btn-secondary">전체검색</button></div>
		  	</div>
		  </form>
	  	<table class="table table-hover text-center">
	    <thead class="thead-dark">
	      <tr>
	        <th>번호</th>
	        <th>아이디</th>
	        <th>별명</th>
	        <th>성명</th>
	        <th>최초 가입일</th>
	        <th>마지막 접속일</th>
	        <th>등급</th>
	        <th>탈퇴유무</th>
	      </tr>
	    </thead>
	    <c:forEach var="vo" items="${vos}" varStatus="st">
	    <tbody>
	      <tr>
	        <td>${vo.idx}</td>
	        <td><a href="${ctp}/adMemInfor.ad?mid=${vo.mid}">${vo.mid}</a></td>
	        <td>${vo.nickName }</td>
	        <td>${vo.name }<c:if test="${sLevel == 0 && vo.userInfor == '비공개'}"><font color='red'><b>(비공개)</b></font></c:if></td>
	        <td>${vo.startDate}</td>
	        <td>${vo.lastDate}</td>
	        <td>
	        	<form name="levelForm" id="levelForm" method="post" action="${ctp}/adMemberLevel.ad">
	        		<select name="level" onchange="javascript:alert('회원정보를 변경하시려면, 등급변경버튼을 클릭하세요.')">
	        			<option value="0" <c:if test="${vo.level==0}">selected</c:if>>관리자</option>
	        			<option value="1" <c:if test="${vo.level==1}">selected</c:if>>준회원</option>
	        			<option value="2" <c:if test="${vo.level==2}">selected</c:if>>정회원</option>
	        			<option value="3" <c:if test="${vo.level==3}">selected</c:if>>우수회원</option>
	        		</select>
	        		<input type="button" value="등급변경" onclick="levelUpdate()" class="btn btn-warning btn-sm"/>
	        		<input type="hidden" name="idx" value="${vo.idx}" class="btn btn-warning btn-sm"/>
	        	</form>
	        </td>
	        <td>
	        	<c:if test="${vo.userDel=='OK'}"><a href="javascript:delCheck(${idx})"><font color="red">탈퇴신청</font></a></c:if>
	        	<c:if test="${vo.userDel!='OK'}">활동중</c:if>
	        </td>
	      </tr>
	    </tbody>
	    </c:forEach>
	    <tr><td colspan="5" class="m-0 p-0"></td></tr>
	  </table>
	  <div class="text-center">
			<ul class="pagination justify-content-center">
				<c:if test="${pag > 1}">
					<li class="page-item"><a class="page-link text-secondary" href="${ctp}/adMemList.ad?pag=1">첫페이지</a></li>
				</c:if>
				<c:if test="${curBlock > 0}">
					<li class="page-item"><a class="page-link text-secondary" href="${ctp}/adMemList.ad?pag=${(curBlock-1)*blockSize + 3}">이전페이지</a></li>
				</c:if>
				
				<c:forEach var="i" begin="${(curBlock*blockSize) + 1}" end="${(curBlock*blockSize) +blockSize}" varStatus="st">
					<c:if test="${i <= totPage && i == pag}">
						<li class="page-item active"><a class="page-link bg-secondary border-secondary" href="${ctp}/adMemList.ad?pag=${i}">${i}</a></li>
					</c:if>
					<c:if test="${i <= totPage && i != pag}">
						<li class="page-item"><a class="page-link text-secondary" href="${ctp}/adMemList.ad?pag=${i}">${i}</a></li>
					</c:if>
				</c:forEach> 
				<c:if test="${curBlock < lastBlock}">
					<li class="page-item"><a class="page-link text-secondary" href="${ctp}/adMemList.ad?pag=${(curBlock+1)*blockSize + 1}">다음페이지</a></li>
				</c:if>
				<c:if test="${pag < totPage}">
					<li class="page-item"><a class="page-link text-secondary" href="${ctp}/adMemList.ad?pag=${totPage}">마지막페이지</a></li>
				</c:if>
			</ul>
		</div>
		</div>
	</div>
	<p><br/></p>
</body>
</html>