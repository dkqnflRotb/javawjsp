<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>길둥이네 홍페이지</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <jsp:include page="include/bs4.jsp"/>
  <style>
	  .fakeimg {
	    height: 200px;
	    background: #aaa;
	  }
  </style>
</head>
<body>
<%
	/*
		현 접속자의 IP를 구합니다.
	*/
	String clp = request.getRemoteAddr();
	/*
		허가된 IP목록 입니다.
		아래배열에 추가하면 해당IP에 대해 access가 허용 됩니다.
	*/
	
	if (clp.equals("0:0:0:0:0:0:0:1")) {
		clp = "192.168.50.145";
	}
	String alpTable[]= {"192.168.50.145","192.168.50.218","*"};
	int i;
	int iOK = 0;
	for(i=0; i<alpTable.length; i++){
		if(alpTable[i].equals(clp)){
			iOK=1;
			break;
		}
	}
	if( iOK==0){
		System.out.println("[IP차단] Access Denied : " + clp);
		response.sendRedirect("../../../");
		
		return;
	}
%>
<jsp:include page="include/header.jsp"/>

<div class="container" style="margin-top:30px">
  <div class="row">
    <div class="col-sm-4">
      <h2>About Me</h2>
      <h5>Photo of me:</h5>
      <div class="fakeimg">Fake Image</div>
      <p>Some text about me in culpa qui officia deserunt mollit anim..</p>
      <h3>Some Links</h3>
      <p>Lorem ipsum dolor sit ame.</p>
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link active" href="#">Active</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#">Disabled</a>
        </li>
      </ul>
      <hr class="d-sm-none">
    </div>
    <div class="col-sm-8">
      <h2>TITLE HEADING</h2>
      <h5>Title description, Dec 7, 2017</h5>
      <div class="fakeimg">Fake Image</div>
      <p>Some text..</p>
      <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
      <br>
      <h2>TITLE HEADING</h2>
      <h5>Title description, Sep 2, 2017</h5>
      <div class="fakeimg">Fake Image</div>
      <p>Some text..</p>
      <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
    </div>
  </div>
</div>
<jsp:include page="include/footer.jsp"/>
</body>
</html>
