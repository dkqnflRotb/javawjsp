<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- input.jsp -->
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>input.jsp</title>
  <%-- <%@ include file="../../include/bs4.jsp" %> --%>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<style>
	body{
			width: 1000px;
			margin: 0 auto;
			padding: 0px;
		}
	#header{
		background-color : aqua;
		text-align: center;
		padding-top : 20px;
		height: 80px;
		font-size: 32px;
	}
	#footer{
		padding-top : 10px;
		background-color : #ccc;
		text-align: center;
		height: 40px;
		width:1000px;
		position : fixed;
		bottom:0;
	}
	.container{
		text-align: center;
	}
	#addTable{
		margin: 0 auto;
	}
	
</style>
<script>
	'use strict';
	let productvalue="";
	var idx=0;
	function fCheck(){
	  if(idx==1){
			let good1 = document.getElementById("good").value;
			let buyer1 = document.getElementById("buyer").value;
			
			if(buyer1==""){
				alert("구매자 이름을 작성해주세요");
				document.getElementById("buyer").focus();
			}
			else if(good1==""){
				alert("첫번째 상폼은 꼭 등록하셔야 주문이 완료됩니다.");
				document.getElementById("good").focus();
			}
			else{
				myform.submit();
			}
		}
	  else {
		  alert("상품을 추가해주세요");
	  }
	}
  let addTbl;
  function insRow() {
    if(productvalue==""){
    	alert("상품 분류를 선택해주세요");
    }
    else{
		idx=1;
    
    addTbl = document.getElementById("addTable");
    let addRow = addTbl.insertRow();   // addTbl테이블의 행의 개념으로 한개를 추가....의 의미
    addRow.onmouseover = function() {   // clickedRowIndex : 클릭한 Row의 위치를 반환(확인)
    // 앞에서 삽입시켜놓은 셀에 추가될 테이블의 내용을 기록해 준다.
    	addTbl.clickedRowIndex = this.rowIndex;
    }
    let addCell = addRow.insertCell();    // 앞에서 클릭된 행의 위치를 얻어와서, 현재 테이블 해당행의 열(셀)로 삽입한다.
    let formTag = "";
    formTag += '상품 분류 : <input type="text" value="'+productvalue+'" name="productClss" style="width:80px;height:22px; text-align:center;" /><br/>';
    formTag += '<div>상품 : <input type="text" value="" name="good" id="good" autofocus style="width:60px; height:20px; " />';  //onblur="formCalc()"
    formTag += ' 수량 : <input type="text" name="su"  style="width:55px;height:20px"; onblur="formCalc()"/>';
    formTag += ' 단일 금액 : <input type="text" name="result"  style="width:80px;height:20px" onblur="formCalc()"/><br/>'
    formTag += '총 금액 : <input type="text" name="totresult" id="addText5" readonly style="width:100px; height:20px;" /><br/>';
    formTag += '  <input class="btn-outline-danger form-control"type="button" value="삭제" onclick="removeRow()"/></div>';
    
    addCell.innerHTML = formTag;
    }
  }
  function formCalc(){
	  for(var i=5; i<myform.elements.length; i++){
	  	if(myform.elements[i].name == "su" && myform.elements[i].value != "" && myform.elements[i+1].value != "") {
	  		let tot = parseInt(myform.elements[i].value) * parseInt(myform.elements[i+1].value);
	  		myform.elements[i+2].value=tot.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",")+"원";
	  	}
	  }
  }
  function fruit(e){
	  productvalue = e.value;
  }
  function removeRow() {
	  addTable.deleteRow(addTbl.clickedRowIndex);
  }
</script>
<body>
	<div id="header">
		  <%-- <%@ include file="menu.jsp" %> --%>
			<jsp:include page="menu.jsp"></jsp:include>
	</div>
		<p><br/></p>
	<div class="container">
	  <h2>상 품 등 록</h2>
	  <form name="myform" method="post" action="<%=request.getContextPath()%>/j1116h/Input1">
			<table class="table">
		    <tr>
		      <td id="tdtd">
				  	<p>구매자 : <input type="text" value="" name="buyer" id="buyer" /></p>
				  	<p>상품 분류: 
				  		<select name="product" onchange="fruit(this)">
				  			<option value="">상품분류을 선택하세요</option>
				  			<option value="과일">과일</option>
				  			<option value="전자제품">전자제품</option>
				  			<option value="생활용품">생활용품</option>
				  			<option value="의류">의류</option>
				  			<option value="애완용품">애완용품</option>
				  			<option value="식품">식품</option>
			  	 		</select>
						<p>
							<input type="button" value="상품 추가하기" onclick="insRow()" />
						</p>
		      </td>
		    </tr>
		    <tr>
		      <td>
		        <table id="addTable" >
		          <tr>
		          </tr>
		        </table>
		      </td>
		    </tr>
		  </table>
		  <p>
				<input type="button" class="btn btn-primary mt-0"  value="전송" onclick="fCheck()" />
				<input type="button" class="btn btn-danger mt-0"  value="초기화" onclick="location.reload()"/>
			</p> 
			<p><hr/></p>
	  </form>
	</div>
	<div id="footer">
	  <%-- <%@ include file="footer.jsp" %> --%>
	  <jsp:include page="footer.jsp"></jsp:include>${vo.buyer}
	</div>
</body>
</html>
