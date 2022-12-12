<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>title</title>
  <jsp:include page="/include/bs4.jsp"></jsp:include>
  <script>
  	'use strict';
  	
  	function partCheck(){
  		let part = partForm.part.value;
  		location.href = "${ctp}/pdsList.pds?part="+part;
  	}
  	
  	function modalView(title, nickName, mid,part,fName,fSName,fSize,downNum){
  		let imgs = fSName.split("/");
  		
  		$("#myModal").on("show.bs.modal",function(e){
  			$(".modal-header #title").html(title);
  			$(".modal-header #part").html(part);
  			$(".modal-body #nickName").html(nickName);
  			$(".modal-body #mid").html(mid);
  			$(".modal-body #fName").html(fName);
  			$(".modal-body #fSize").html(fSize);
  			$(".modal-body #downNum").html(downNum);
  			$(".modal-body #fSName").html(fSName);
  			$(".modal-body #imgSrc").attr("src",'${ctp}/data/pds/'+imgs[0]);
  		});
  	}
  	
  	// 선택한 항목의 자료 삭제하기   (prompt창을 통하여 비밀번호를 입력받아서 처리)
  	function pdsDelCheck(idx,fSName) {
  		let ans = confirm("선택한 자료파일을 삭제하시겠습니까?");
  		if(!ans) return false;
  		
  		let pwd = prompt("비밀번호를 입력하세요");
  		let query = {
  				idx : idx,
  				fSName : fSName,
  				pwd : pwd
  		}
  		
  		$.ajax({
  			type : "post",
  			url : "${ctp}/pdsDelete.pds",
  			data  :query, 
  			success:function(res){
  				if(res == "1"){
  					alert("삭제 되었습니다.");
  					location.reload();
  				}
  				else{
  					alert("삭제 실패!");
  				}
  			},
  			error : function(){
  				alert("전송 오류 !!");
  			}
  		});
  	}
  	
  	// modal창을 통해서 비밀번호 확인후 파일 삭제하기   
  	function pdsDelCheckModal(idx ,fSName,part,pag) {
  		$("#myPwdModal").on("show.bs.modal",function(e){
  				$(".modal-body #idx").val(idx);
  				$(".modal-body #fSName").val(fSName);
  				$(".modal-body #part").val(part);
  				$(".modal-body #pag").val(pag);
  		});
  	}
  	
 		// 다운로드 회수 증가
    function downNumCheck(idx) {
    	$.ajax({
    		type  : "post",
    		url   : "${ctp}/pdsDownNum.pds",
    		data  : {idx : idx},
    		success:function() {
    			location.reload();
    		},
    		error : function() {
    			alert("전송오류!!");
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
			<h2>자 료 실 리 스 트(${part})</h2>
			<br/>
			<table class="table table-borderless">
				<tr>
					<td style="width:20%" class="text-left"	>
						<form name="partForm">
							<select name="part" class="form-control" onchange="partCheck()">
								<option value="전체" ${part == '전체' ? 'selected' : ''}>전체</option>      <!-- 많으면 데이타 넣기 힘들다 -->
								<option value="학습" ${part == '학습' ? 'selected' : ''}>학습</option>      <!-- 많으면 데이타 넣기 힘들다 -->
								<option value="여행" ${part == '여행' ? 'selected' : ''}>여행</option>      <!-- 많으면 데이타 넣기 힘들다 -->
								<option value="음식" ${part == '음식' ? 'selected' : ''}>음식</option>      <!-- 많으면 데이타 넣기 힘들다 -->
								<option value="기타" ${part == '기타' ? 'selected' : ''}>기타</option>      <!-- 많으면 데이타 넣기 힘들다 -->
							</select>						
						</form>
					</td>
					<td class="text-right">
						<a href="${ctp}/pdsInput.pds?part=${part}" class="btn btn-success">자료올리기</a>
					</td>
				</tr>
			</table>
			<table class="table table-hover text-center">
				<tr class="table-dark text-dark">
					<td>번호</td>
					<td>자료제목</td>
					<td>올린이</td>
					<td>올린날짜</td>
					<td>분류</td>
					<td>파일명(크기)</td>
					<td>다운수</td>
					<td>비고</td>
				</tr>
				<c:forEach var="vo" items="${vos}">
					<tr>
						<td>${curScrStartNo}</td>
						<td>${vo.title}</td>
						<td>${vo.nickName}</td>
						<td>${vo.fDate }</td>
						<td>${vo.part }</td>
						<td>
							<c:set var= "fNames" value="${fn:split(vo.fName,'/')}"/>
							<c:set var= "fSNames" value="${fn:split(vo.fSName,'/')}"/>
							<c:forEach var="fName" items="${fNames}" varStatus="st">
								<a href="${ctp}/data/pds/${fSNames[st.index]}" download="${fName}" onclick="downNumCheck(${vo.idx})">${fName }</a><br/>
							</c:forEach>
							
							(<fmt:formatNumber value="${vo.fSize/1024}" pattern="#,###" />KByte)
						
						</td>
						<td>${vo.downNum }</td>
						<td>
							<!-- Button to Open the Modal -->
  						<a href="#" onclick="modalView('${vo.title}','${vo.nickName}','${vo.mid}','${vo.part}','${vo.fName }','${vo.fSName}','${vo.fSize}','${vo.downNum }')" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">모달창</a><br/>
  						전체다운<br/>
							<a href="javascript:pdsDelCheck('${vo.idx }','${vo.fSName}')" class="btn btn-danger btn-sm mb-1">삭제1</a><br/> <!-- javascript:pdsDelCheck('${vo.idx }','${vo.fSName}')" 하나라도 타입이 문자면 숫자여도 문자타입으로 보내줘야함 안그럼 오류뜸 -->
							<a href="#" onclick="pdsDelCheckModal('${vo.idx}','${vo.fSName}','${part}','${pag}')" data-toggle="modal" data-target="#myPwdModal" class="btn btn-danger btn-sm">모달창 삭제2</a> <!-- javascript:pdsDelCheck('${vo.idx }','${vo.fSName}')" 하나라도 타입이 문자면 숫자여도 문자타입으로 보내줘야함 안그럼 오류뜸 -->
						</td>
					</tr>
					<c:set var="curScrStartNo" value="${curScrStartNo-1}"/>
				</c:forEach>
				<tr><td colspan="8" class="m-0 p-0"></td></tr>
			</table>
		</div>
	</div>
	<!-- The Modal(모달창 클릭시 자료실의 내용을 모달창에 출력한다.) -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title"><span id="title"></span>(분류:<span id="part"></span>)</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          - 올린이 : <span id="nickName"></span>
					<hr/>
					- 아이디 : <span id="mid"></span><br/>
					- 파일명 : <span id="fName"></span><br/>
					- 파일크기 : <span id="fSize"></span><br/>
					- 파일다운 횟수 : <span id="downNum"></span><br/>
					<hr/>
					- 저장파일명 : <span id="fSName"></span><br/>
					<img id= "imgSrc" width="450px"/><br/>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  
	<!-- The Modal(모달창 클릭시 비밀번호 처리하기 위한 모달창) -->
  <div class="modal fade" id="myPwdModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">비밀번호 조회</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          <form name= "pwdModalForm" method="post" action="${ctp}/pdsPwdCheck.pds" class="was-validated">
          	비밀번호:
          	<input type="password" name="pwd" id="pwd" placeholder="비밀번호를 입력하세요." class="form-control mb-2" required />
	          <input type="submit" value="비밀번호확인후전송" class="btn btn-success form-control"/>
	          <input type="hidden" name="idx" id="idx"/>
	          <input type="hidden" name="fSName" id="fSName"/>
	          <input type="hidden" name="part" id="part"/>
	          <input type="hidden" name="pag" id="pag"/>
          </form>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
	
	<p><br/></p>
	<jsp:include page="/include/footer.jsp"/>
</body>
</html>