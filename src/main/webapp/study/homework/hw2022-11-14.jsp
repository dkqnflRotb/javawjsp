<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>test3.jsp</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
		'use strict';
		let fruitvalue="";
		function fCheck(){
			let addText1 = document.getElementById("addText1").value;
			
			if(addText1==""){
				alert("첫번째 상폼은 꼭 등록하셔야 주문이 완료됩니다.");
				document.getElementById("addText1").focus();
			}
			else{
				myform.submit();
			}
		}
	  let addTbl;
	  function insRow() {
	    addTbl = document.getElementById("addTable");
	    let addRow = addTbl.insertRow();   // addTbl테이블의 행의 개념으로 한개를 추가....의 의미
	    addRow.onmouseover = function() {   // clickedRowIndex : 클릭한 Row의 위치를 반환(확인)
	    	addTbl.clickedRowIndex = this.rowIndex;
	    }
	    let addCell = addRow.insertCell();    // 앞에서 클릭된 행의 위치를 얻어와서, 현재 테이블 해당행의 열(셀)로 삽입한다.
	
	    // 앞에서 삽입시켜놓은 셀에 추가될 테이블의 내용을 기록해 준다.
	    let formTag = "";
	    formTag += '상품 : <input type="text" value="'+fruitvalue+'" name="addText1" style="width:60px;height:20px" />';
	    // formTag += '수량:<input type="text" name="addText2" style="width:60px; height:20px; " onblur="formCalc()"/>';
	    formTag += ' 수량 : <input type="text" name="addText2" style="width:60px;height:20px"; "/>';
	    formTag += ' 금액 : <input type="text" name="result" readonly style="width:60px;height:20px" />';
	    formTag += '  <input type="button" value="삭제" onclick="removeRow()"/>';
	    
	    addCell.innerHTML = formTag;
	  }
		
	  function fruit(e){
			fruitvalue = e.value;
	  }
	  function removeRow() {
		  addTable.deleteRow(addTbl.clickedRowIndex);
	  }
	</script>
	<style>
		#addTable{
			display=none;
		}
		
	</style>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>상 품 등 록</h2>
  <form name="myform" method="post" action="<%=request.getContextPath()%>/j1114_Test3Ok">
		<table>
      <tr>
        <td>
			  	<p>구매자 : <input type="text" name="buyer" id="buyer" autofous /></p>
			  	<p>상품 : 
			  		<select name="product" onchange="fruit(this)">
			  			<option value="" readonly>상품을 선택하세요</option>
			  			<option value="오렌지">오렌지</option>
			  			<option value="멜론">멜론</option>
			  			<option value="사과">사과</option>
			  			<option value="바나나">바나나</option>
			  			<option value="수박">수박</option>
		  	 		</select>
					<p>
						<input type="button" value="상품 추가하기" onclick="insRow()" />
					</p>
        </td>
      </tr>
      <tr>
        <td>
          <table id="addTable" width="400px">
            <tr>
              <td style="display: none">
                상품 : <input type="text" name="addText1" id="addText1" style=width:60px;height:20px;/>
                수량 : <input type="text" name="addText2" id="addText2" style=width:60px;height:20px;/>
                금액 : <input type="text" name="result" id="addText3" readonly style="width:60px; height:20px;"/>
              </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
    <br/>
    <p>
  		<input class="btn btn-outline-primary" type="button" value="전송" onclick="fCheck()" />
			<input class="btn btn-outline-danger" type="reset" value="초기화" />
		</p> 
  </form>
</div>
<p><br/></p>
</body>
</html>