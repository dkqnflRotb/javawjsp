<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Insert title here</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
	<link href="http://gogorentcar.com/tpl/des/css/reset.css?ver=1573981339" rel="stylesheet" type="text/css">

  
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
  <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Pathway+Gothic+One" />

	<link type="text/css" rel="stylesheet" href="http://gogorentcar.com/hcd/css/style.css?ver=1573981336">
	<link href="http://gogorentcar.com/tpl/des/css/reset.css?ver=1573981339" rel="stylesheet" type="text/css">
	<script type='text/javascript' src='http://gogorentcar.com/hcd/js/hcd.js?ver=1573981337'></script>
	<link rel="stylesheet" href="http://gogorentcar.com/tpl/des/css/swiper.min.css">

	<style>
		html, body {
				font-family: "Raleway", Arial, Helvetica, sans-serif;
		}
		
		header {
			z-index: 0;
			margin-top: 50px;
		}
		
		h2{
			font-family: Verdana,sans-serif;
		}
		
		footer {
				position: relative;
				transform: translatY(-100%);
		}
		.swiper-container {
				background: #0000;
				font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
				font-size: 14px;
				color: #000;
				height: 42vh;
				display: flex;
				justify-content: center;
				align-items: center;
				overflow: hidden;
				margin-top : 13rem;
		}
		
		#wrap {
				min-height: 100%;
				position: relative;
				padding-bottom: 60px;
				
		}
		
		
		@-webkit-keyframes flash {
		  to {
		    opacity: 1;
		  }
		}
		
		@keyframes flash {
		  to {
		    opacity: 1;
		  }
		}
		
		@keyframes flashText {
			to{ 
		 		opacity:0.15;
			}
		}
		
		.myLink {
				display: none;
		}
		
		
		.swiper-slide {
				background-position: center;
				background-size: cover;
				width: 300px;
				height: 300px;
				-webkit-box-reflect: below 1px
						linear-gradient(transparent, transparent, #0006);
		}
		
		.msg1{
			display:none;
		}
		/* .w3-display-middle{
			top: 107%;
		} */
		
		
		
		 /* 이미지 슬라이더  */
		/*
    *{margin: 0; padding: 0; list-style: none;}
    #slideWrap { width: 100%; height: 400px; border: 5px solid black; overflow: hidden; position: relative; }
    #slider { width: 100%; height: 100%; background-color: yellow; position: absolute;}
    #slider ul { display: inline; }
    #slider li { float: left; width: 300px; height: 100%;} */
		
		/* 이미지 페인트아웃  */
		#index_01{
	    width: 100%;
	    height: 400px;
	    border: 1px solid dimgrey;
	    margin: 0 auto;
		}
		
		#header1{
	    height: 100px;
	    border-bottom: 1px solid dimgrey;
	    box-sizing: border-box;
	    text-align: center;
	    line-height: 100px;
	    font-size: 1.5rem;
		}
		
		#slide1{
      height: 500px;
	    border-bottom: 1px solid dimgrey;
	    width: 100%;
	    background-color: yellow;
	    position: absolute;
	    right: 0px;
		}

		#slide1>ul>li{
	    position: absolute;
	    font-size: 0;
    }
    /*----------------- 고고렌트카 입력폼-------------------  */
		
	
		.sc_popup_calendar_click {
		    width: 100%;
		    height: auto;
		    padding: 10px 30px;
		    box-sizing: border-box;
		    background: #f8f9fb;
		}
		.sc_popup_btn {
		    width: 100%;
		    height: auto;
		    box-sizing: border-box;
		    padding: 10px 15px;
		    background: #f2f3f8;
		    border-bottom-left-radius: 5px;
		    border-bottom-right-radius: 5px;
		}
		/* calendar */
		button.prevew {
		    width: 33px;
		    height: 38px;
		    margin-top: 14px;
		    background: url(images/wRRR.png) no-repeat;
		    transform:scalex(-1);
		    vertical-align: top;
		    border: none;
		    float: left;
		}
		.hand {
		    cursor: pointer;
		}
		button {
		    appearance: auto;
		    writing-mode: horizontal-tb !important;
		    font-style: ;
		    font-variant-ligatures: ;
		    font-variant-caps: ;
		    font-variant-numeric: ;
		    font-variant-east-asian: ;
		    font-weight: ;
		    font-stretch: ;
		    font-size: ;
		    font-family: ;
		    text-rendering: auto;
		    color: buttontext;
		    letter-spacing: normal;
		    word-spacing: normal;
		    line-height: normal;
		    text-transform: none;
		    text-indent: 0px;
		    text-shadow: none;
		    display: inline-block;
		    text-align: center;
		    align-items: flex-start;
		    cursor: default;
		    box-sizing: border-box;
		    background-color: buttonface;
		    margin: 0em;
		    padding: 1px 6px;
		    border-width: 2px;
		    border-style: outset;
		    border-color: buttonborder;
		    border-image: initial;
		}
		ul, li, p, span {
		    line-height: 24px;
		}
		
		.sc_cal_title select {
		    font-size: 20px;
		    border: 0px;
		    background: transparent;
		    color: #fff;
		    font-weight: bold;
		    letter-spacing: 1px;
		}
		select:not(:-internal-list-box) {
		    overflow: visible !important;
		}
		select {
		    writing-mode: horizontal-tb !important;
		    font-style: ;
		    font-variant-ligatures: ;
		    font-variant-caps: ;
		    font-variant-numeric: ;
		    font-variant-east-asian: ;
		    font-weight: ;
		    font-stretch: ;
		    font-size: ;
		    font-family: ;
		    text-rendering: auto;
		    color: fieldtext;
		    letter-spacing: normal;
		    word-spacing: normal;
		    line-height: normal;
		    text-transform: none;
		    text-indent: 0px;
		    text-shadow: none;
		    display: inline-block;
		    text-align: start;
		    appearance: auto;
		    box-sizing: border-box;
		    align-items: center;
		    white-space: pre;
		    -webkit-rtl-ordering: logical;
		    background-color: field;
		    cursor: default;
		    margin: 0em;
		    border-width: 1px;
		    border-style: solid;
		    border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
		    border-image: initial;
		    border-radius: 0px;
		}
		/* 달력   */
		.search_car {
		    background: #fff;
		    border: none;
		    border-radius: 7px;
		    max-width: 400px;
		    height: auto;
		    position: absolute;
		    z-index: 0;
		    top: 259px;
		    right: 14px;
		}
		.sc_popup {
		    display: none;
		    height: auto;
		    width: 400px;
		    background: #fff;
		    box-shadow: 10px 0 25px #adadad;
		    border-radius: 5px;
		    position: absolute;
		    right: 400px;
		    z-index: 10;
		    top: -1em;
		}
		.sc_popup_date {
		    padding: 30px;
		    box-sizing: border-box;
		    text-align: center;
		    background: linear-gradient(to left, #007efe , #008ffe);
		    border-top-left-radius: 5px;
		    border-top-right-radius: 5px;
		    width: 100%;
		}
		.hand {
		    cursor: pointer;
		}
		
		.sc_popup_date p {
		    font-size: 20px;
		    color: #fff;
		    font-weight: bold;
		    display: inline-block;
		    line-height: 24px;
		}
		button.next {
		    width: 32px;
    		margin-top: 14px;
		    height: 30px;
    		background: url("images/wRRR.png") no-repeat;
		    vertical-align: top;
		    border: none;
		    float: right;
		}
		.sc_popup_calendar {
		    width: 100%;
		    height: auto;
		    box-sizing: border-box;
		    background: #fff;
		    padding: 20px 30px;
		}
		.sc_popup_calendar table.calendar {
		    width: 100%;
		    text-align: center;
		    font-size: 14px;
		}
		table {
		    display: table;
		    border-collapse: collapse;
		    box-sizing: border-box;
		    text-indent: initial;
		    border-spacing: 2px;
		    border-color: grey;
		}
		.sc_popup_btn ul {
		    width: 100%;
		    list-style: none;
		    line-height: 24px;
		}
		.sc_popup_btn ul li:first-child {
		    border-top-left-radius: 7px;
		    border-bottom-left-radius: 7px;
		    color: #8c8c9b;
		}
		.sc_popup_btn ul li {
		    width: 33.3%;
		    float: left;
		    font-size: 14px;
		    background: #fff;
		    padding: 10px 15px;
		    box-sizing: border-box;
		    font-weight: bold;
		    height: 37px;
		    border-right: solid 1px #f2f3f8;
		}			
		a {
		   /*  text-decoration: none; */
		    color: #fff;
		}
		
		option {
		    font-weight: normal;
		    display: block;
		    white-space: nowrap;
		    min-height: 1.2em;
		    padding: 0px 2px 1px;
		}
		thead {
		    display: table-header-group;
		    vertical-align: middle;
		    border-color: inherit;
		}
		
  	.sc_popup_calendar th:first-child {
		    border-top-left-radius: 20px;
		    border-bottom-left-radius: 20px;
		}
		.sc_popup_calendar th {
		    background: #f2f3f8;
		    padding: 10px;
		    color: #8c8c9b;
		}
		
		th {
		    display: table-cell;
		    vertical-align: inherit;
		    font-weight: bold;
		    text-align: -internal-center;
		}
		.sc_popup_calendar th:last-child {
		    border-top-right-radius: 20px;
		    border-bottom-right-radius: 20px;
		}
		tr {
		    display: table-row;
		    vertical-align: inherit;
		    border-color: inherit;
		}
		tbody {
		    display: table-row-group;
		    vertical-align: middle;
		    border-color: inherit;
		}
		td {
		    display: table-cell;
		    vertical-align: inherit;
		}
		
		.sc_popup_calendar td {
		    padding: 10px 0;
		    color: #8c8c9b;
		}
		
		.sc_popup_calendar td.open {
		    color: #3e3e47;
		}		
		.sc_popup_calendar_click p.today {
		    float: right;
		    margin-left: 10px;
		}
		.sc_popup_calendar_click p {
		    font-weight: bold;
		    color: #3e3e47;
		    font-size: 12px;
		    text-align: right;
		    box-sizing: border-box;
		}
		.sc_popup_calendar_click p.today:before {
		    background: #ccc;
		}
		.sc_popup_calendar_click p:before {
		    content: '';
		    display: inline-block;
		    width: 15px;
		    height: 15px;
		    background: #00d7fe;
		    border-radius: 15px;
		    vertical-align: middle;
		    margin-right: 5px;
		}
		
		.sc_popup_btn ul li select {
		    border: none;
		    width: 60%;
		    color: #3e3e47;
		    background: url(images/20221212_223726down.png) no-repeat 100% 50%;
		    -webkit-appearance: none;
		    -moz-appearance: none;
		    appearance: none;
		    margin-right: 10px;
		    box-sizing: border-box;
		}
		.sc_popup_btn ul li:last-child {
		    border-top-right-radius: 7px;
		    border-bottom-right-radius: 7px;
		}
		li {
		    display: list-item;
		    text-align: -webkit-match-parent;
		}
		.sc_popup_btn ul:after {
		    content: '';
		    display: block;
		    clear: both;
		}
		.calendar_02 .sc_popup_date {
		    background: linear-gradient(to left, #00d7fe , #00bffe);
		}
		.sbutton {
		    border-radius: 3px;
		    background: #fff;
		    border: 1px solid gray;
		    padding: 2px 12px;
		    color: #3e3e47;
		    font-size: 15px;
		}
		input[type="button" i] {
		    appearance: auto;
		    user-select: none;
		    white-space: pre;
		    align-items: flex-start;
		    text-align: center;
		    cursor: default;
		    box-sizing: border-box;
		    background-color: buttonface;
		    color: buttontext;
		    padding: 1px 6px;
		    border-width: 2px;
		    border-style: outset;
		    border-color: buttonborder;
		    border-image: initial;
		}
		input {
		    writing-mode: horizontal-tb !important;
		    font-style: ;
		    font-variant-ligatures: ;
		    font-variant-caps: ;
		    font-variant-numeric: ;
		    font-variant-east-asian: ;
		    font-weight: ;
		    font-stretch: ;
		    font-size: ;
		    font-family: ;
		    text-rendering: auto;
		    color: fieldtext;
		    letter-spacing: normal;
		    word-spacing: normal;
		    line-height: normal;
		    text-transform: none;
		    text-indent: 0px;
		    text-shadow: none;
		    display: inline-block;
		    text-align: start;
		    appearance: auto;
		    -webkit-rtl-ordering: logical;
		    cursor: text;
		    background-color: field;
		    margin: 0em;
		    padding: 1px 2px;
		    border-width: 2px;
		    border-style: inset;
		    border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
		    border-image: initial;
		}
		form {
		    display: block;
		    margin-top: 0em;
		    
		}
		.search_car .select_date {
		    border: none;
		    background: #fff;
		    padding: 13px 7px 5px;
		    position: relative;
		}
		.search_car .select_date button {
		    display: inline-block;
		    zoom: 1;
		    border: none;
		    background: #fff;
		    box-sizing: border-box;
		    text-align: center;
		    word-break: break-all;
		    cursor: pointer;
		    vertical-align: middle;
		    overflow: hidden;
		    position: relative;
		    width: 100%;
		    outline-style: none;
		    padding: 0;
		}
		.search_car .select_date button >dl:first-child {
		    float: left;
		    margin-left: 10px;
		}
		.search_car .select_date button >dl {
		    float: right;
		    margin-right: 10px;
		}
		.search_car .select_date button >dl:first-child dt {
		    font-size: 12px;
		    color: #007efe;
		    font-weight: bold;
		    border: solid 2px #007efe;
		    display: inline-block;
		    padding: 1px 5px 3px;
		    border-radius: 5px;
		    margin-bottom: 10px;
		}
		.search_car .select_date button >dl dt {
		    font-size: 12px;
		    color: #00d7fe;
		    font-weight: bold;
		    border: solid 2px #00d7fe;
		    display: inline-block;
		    padding: 1px 5px 3px;
		    border-radius: 5px;
		    margin-bottom: 10px;
		}
		.search_car .select_date button dl dd {
		    margin: 0 auto;
		}
		dd {
		    display: block;
		    margin-inline-start: 40px;
		}
		dl {
		    display: block;
		    margin-block-start: 1em;
    		margin-block-end: -2em;
		    margin-inline-start: 0px;
		    margin-inline-end: 0px;
		}
		.clicktimedate h6 {
		    color: #8c8c9b;
		    font-weight: normal;
		    margin-top: 6px;
		}
		h6 {
		    font-size: 13px;
		    line-height: 15px;
		    display: block;
		    font-size: 0.9em;
		    margin-block-start: 2.33em;
		    margin-block-end: 2.33em;
		    margin-inline-start: 0px;
		    margin-inline-end: 0px;
		    font-weight: bold;
		}
		.select_date button:after {
		    position: absolute;
		    top: 31%;
		    left: 39%;
		    content: '';
		    display: block;
		    width: 61px;
		    height: 60px;
		    background: url(images/20221212_right2.png) no-repeat;
    }
		.select_serch {
		    background: #f2f3f8;
		    padding: 3px 14px;
		    min-width: 320px;
		}
		.select_serch_inner {
		    background: #fff;
		    padding: 0 10px;
		    border-radius: 5px;
		    margin: 6px 0;
		}
		.select_serch_title {
		    width: 25%;
		    display: inline-block;
		    box-sizing: border-box;
		    letter-spacing: -1px;
		}
		.select_serch_title p {
		    color: #8c8c9b;
		    font-size: 13px;
		    font-weight: bold;
		}
		.sc_popup_calendar td.click, .sc_popup_calendar td.open:hover {
		    background: #00d7fe;
		    color: #fff !important;
		    border-radius: 20px;
		    cursor: pointer;
		}
		.sc_popup_calendar td.today {
		    background: #eee;
		    border-radius: 20px;
		}
		p {
		    display: block;
		    margin-block-start: 0.9em;
		    margin-block-end: 1em;
		    margin-inline-start: 0px;
		    margin-inline-end: 0px;
		}
		.select_serch_content {
		    width: 73%;
		    display: inline-block;
		    height: auto;
		    vertical-align: middle;
		    border-left: solid 1px #f2f3f8;
		    box-sizing: border-box;
		    padding: 5px 10px;
		    position: relative;
		}
		select.select_area_half {
		    font-size: 12px;
		    width: 48%;
		    border: none;
		    color: #3e3e47;
		    height: 22px;
		    background: url("images/20221212_223726down.png") no-repeat 100% 50%;
		    -webkit-appearance: none;
		    -moz-appearance: none;
		    appearance: none;
		}
		select.select_area {
		    font-size: 12px;
		    width: 100%;
		    border: none;
		    color: #3e3e47;
		    height: 22px;
		    background: url("images/20221212_223726down.png") no-repeat 100% 50%;
		    -webkit-appearance: none;
		    -moz-appearance: none;
		    appearance: none;
		}
		.select_serch_content input {
		    font-size: 12px;
		    border: none;
		    height: 22px;
		    line-height: 25px;
		    color: #3e3e47;
		    width: 48%;
		    position: relative;
		    background: none;
		 }
		.select_serch_content .input1 {
		    font-size: 12px;
		    border: none;
		    height: 22px;
		    line-height: 25px;
		    color: #3e3e47;
		    width: 70%;
		    position: relative;
		    background: none;
		 }
		 button.calendar {
		    font-size: 12px;
		    display: inline-block;
		    zoom: 1;
		    border: none;
		    box-sizing: border-box;
		    text-align: center;
		    word-break: break-all;
		    cursor: pointer;
		    vertical-align: middle;
		    overflow: hidden;
		    position: relative;
		    width: 100%;
		    outline-style: none;
		    padding: 0;
		    height: 22px;
		    text-align: left;
		    background: url(images/20221212_234032calendar.png) no-repeat 100% 50%;
		}
		.selct_btn {
			    width: 100%;
			    background: #00d7fe;
			    text-align: center;
			    box-sizing: border-box;
			    float: right;
			    height: 48px;
			}
		.selct_btn button, .selct_btn a {
		    background: none;
		    border: none;
		    color: #fff;
		    font-weight: bold;
		    font-size: 16px;
		    width: 100%;
		    cursor: pointer;
		    padding: 13px 0px 0px;
		    display: block;
		}
		
		
		@media (max-width: 1000px){
			.search_car{
				top: 9em;
		    position: relative;
		    right: -25%;
			}
			.sc_popup {
		    top: -18em;
		    right:auto;
		   }
		}
		@media (max-width: 600px){
			.search_car {
			    top: 19em;
			    position: relative;
			    right: -6%;
			}
			.msg1{
				display:block;
				color: white;
		    position: relative;
		    top: 3em;
		    text-align: center;
		    font-weight: 900;
		    margin : 0;
			}
			.swiper-container{
				margin-top: 24.5rem;
			}
		}
  </style>
</head> 
<body>
	<div class="wrap">
		<div class="container-fluid">
			<jsp:include page="include_p/p_nav2.jsp"/>
			<!-- <div class="w3-bar w3-white w3-border-bottom w3-xlarge">
			  <a href="#" class="w3-bar-item w3-button w3-text-red w3-hover-red"><b><i class="fa fa-map-marker w3-margin-right"></i>Logo</b></a>
			  <a href="#" class="w3-bar-item w3-button w3-right w3-hover-red w3-text-grey"><i class="fa fa-search"></i></a>
			</div> -->
			<div id="msg1">
		  	<h2 class="msg1">어서오세요 <br/> 렌트카입니다</h2>
		  </div>
			<header class="w3-display-container w3-content w3-hide-small" style="max-width: 1500px;">
			  <!-- <div id="slideWrap">
			    <ul id="slider">
			        <li><a href="#"><img src="#" alt="슬라이드1"></a></li>
			        <li><a href="#"><img src="#" alt="슬라이드2"></a></li>
			        <li><a href="#"><img src="#" alt="슬라이드3"></a></li>
			    </ul>
			  </div> -->
		   	<div id="index_01">
	       	 <!-- <div id="header1">페이드인 페이드아웃</div> -->
	       	 <div id="slide1">
	            <ul>
	                <li><a href="#"><img src="data:image/jpeg;base64,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" alt="슬라이드7"></a></li>
	                <li><a href="#"><img src="data:image/jpeg;base64,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" alt="슬라이드8"></a></li>
	                <li><a href="#"><img src="data:image/jpeg;base64,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" alt="슬라이드9"></a></li>
	            </ul>
	        </div>
		    </div>
			 <!--  <div class="w3-display-middle" style="width:65%">
			    <div class="w3-bar w3-black">
			      <button class="w3-bar-item w3-button tablink" onclick="openLink(event, 'Flight');"><i class="fa fa-plane w3-margin-right"></i>Flight</button>
			      <button class="w3-bar-item w3-button tablink" onclick="openLink(event, 'Hotel');"><i class="fa fa-bed w3-margin-right"></i>Hotel</button>
			      <button class="w3-bar-item w3-button tablink" onclick="openLink(event, 'Car');"><i class="fa fa-car w3-margin-right"></i>Rental</button>
			    </div>
		
			    Tabs 
			    <div id="Flight" class="w3-container w3-white w3-padding-16 myLink">
			      <h3>Travel the world with us</h3>
			      <div class="w3-row-padding" style="margin:0 -16px;">
			        <div class="w3-half">
			          <label>From</label>
			          <input class="w3-input w3-border" type="text" placeholder="Departing from">
			        </div>
			        <div class="w3-half">
			          <label>To</label>
			          <input class="w3-input w3-border" type="text" placeholder="Arriving at">
			        </div>
			      </div>
			      <p><button class="w3-button w3-dark-grey mt-2">Search and find dates</button></p>
			    </div>
		
			    <div id="Hotel" class="w3-container w3-white w3-padding-16 myLink">
			      <h3>Find the best hotels</h3>
			      <p>Book a hotel with us and get the best fares and promotions.</p>
			      <p>We know hotels - we know comfort.</p>
			      <p><button class="w3-button w3-dark-grey mt-2">Search Hotels</button></p>
			    </div>
		
			    <div id="Car" class="w3-container w3-white w3-padding-16 myLink">
			      <h3>Best car rental in the world!</h3>
			      <p><span class="w3-tag w3-deep-orange">DISCOUNT!</span> Special offer if you book today: 25% off anywhere in the world with CarServiceRentalRUs</p>
			      <input class="w3-input w3-border" type="text" placeholder="Pick-up point">
			      <p><button class="w3-button w3-dark-grey mt-2">Search Availability</button></p>
			    </div>
				</div> -->
			</header>
			
			<div class="search_car_mb">
            <script type="text/javascript">
				   			function calprint(prefix, sdt){
					        this.receive_func = null;
					        this.prDate = new Date();
					        this.selDate = new Date(sdt);
					        this.pf = prefix;
					        
					        this.next = function () {
					            this.prDate.setMonth(this.prDate.getMonth()+1);
					            this.show(this.prDate);
					        },
					        this.prev = function () {
					            this.prDate.setMonth(this.prDate.getMonth()-1);
					            this.show(this.prDate);
					        },
					        this.show = function (dt) {
					            var pf = this.pf;
					            var selDate = this.selDate;
					            
					            var Calendar = new Date();
					            var today = Calendar.getFullYear() + '' + lpad(Calendar.getMonth(), 2) + lpad(Calendar.getDate(), 2);
					            var click = selDate.getFullYear() + '' + lpad(selDate.getMonth(), 2) + lpad(selDate.getDate(), 2);
					
					            if (dt) Calendar = new Date(dt);
					            
					            this.prDate = new Date(Calendar);
					            Calendar.setDate(1);            // 달력은 1일부터 표시해야하니 setDate() 메서드를 이용해서 1일로 마추자!
					
					            var year = Calendar.getFullYear();   // yyyy   년도
					            var month = Calendar.getMonth();     // 0 ~ 11 (1 ~ 12월 인덱스)
					            var weekday = Calendar.getDay();     // 0 ~ 6  (일요일 ~ 토요일 인덱스)
					            
					            var DAYS_OF_WEEK = 7;          // 일주일은 7일!
					            var DAYS_OF_MONTH = 31;        // 한달은 최대 31일!
					            var str;                       // html 코드를 넣을 str 변수
					
					            // tr
					            var TR_start = "<tr>";
					            var TR_end = "</tr>";
					
					            //td css 클래스를 이용하여 요일마다 색을 다르게줍니다.(커스텀마이징 가능)
					
					            var TD_today_start = "<td class='open today'>";// 오늘 날짜
					            var TD_day_start = "<td class='open'>";        // 평일
					            var TD_click_start = "<td class='open click'>";        // 선택
					            var TD_close_start = "<td class='close1'>";     // 오늘 이전
					            var TD_end = "</td>";    // 테이블 만들기
					
					            cal_title = '<select onchange="'+pf+'.show(new Date(this.value, ' + (month) + '))">';
					            for (var sel, i = (new Date()).getFullYear() + 5; i > 1900; i--) {
					                if (i == year)
					                    sel = 'selected';
					                else
					                    sel = '';
					                cal_title += '<option value="' + i + '" style=color:gray ' + sel + '>' + i + '</option>';
					            }
					            cal_title += '</select>';
					            cal_title += '<select onchange="'+pf+'.show(new Date(' + year + ', this.value-1))">';
					            for (var sel, i = 1; i < 13; i++) {
					                if (i == month + 1)
					                    sel = 'selected';
					                else
					                    sel = '';
					                cal_title += '<option value="' + i + '" style=color:gray ' + sel + '>' + lpad(i, 2) + '</option>';
					            }
					            cal_title += '</select>';
					
					            str = '<table class="calendar">';
					
					            // 일단 맨 첫 줄은 요일을 나타내자!
					            str += '<thead><tr>';
					            str += '<th style="color: #ed6e6e;">일</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th style="color:#00d7fe;">토</th>';
					            str += '</tr></thead><tr>';
					
					            // 1일이 시작하기 전까지의 이전 요일들을 blank 하자!
					            for (var i = 0; i < Calendar.getDay(); ++i) {
					                str += TD_close_start + TD_end;
					            }
					
					            // 자 이제 1일부터 시작!
					            for (var i = 0; i < DAYS_OF_MONTH; ++i) {
					                // 날짜가 i보다 클 때만 표현!! 왜냐하면 -> 날짜가 i보다 작다는 건 다음 달로 넘어가서 1일이 되었다는 거다!
					                if (Calendar.getDate() > i) {
					                    var day = Calendar.getDate();   // 날짜
					                    var curr = Calendar.getFullYear() + '' + lpad(Calendar.getMonth(), 2) + lpad(day, 2);
					                    var week_day = Calendar.getDay(); // 요일
					
					                    // 만약 일요일이면 tr로 한 칸 내려간다!
					                    if (week_day == 0) {
					                        str += TR_start;
					                    }
					
					                    // 오늘 날짜라면
					                    if (curr == today) {
					                        str += TD_today_start + day + TD_end;
					                    } else if (curr == click) {
					                        str += TD_click_start + day + TD_end;
					                    } else if (curr < today && !this.receive_func)
					                        str += TD_close_start + day + TD_end;
					                    else {
					                        str += TD_day_start + day + TD_end;
					                    }
					                }// if end
					
					                // 다음 날짜로 넘어간다.
					                Calendar.setDate(Calendar.getDate() + 1);
					            }// for end
					
					            str += "</table>";
					
					            document.getElementById(pf+'_title').innerHTML = cal_title;
					            document.getElementById(pf).innerHTML = str;
					            
					            var cthis = this;
					            $('#'+pf+' td.open').click(function () {
					                var _this = $(this);
					                $('#'+pf+' td.open').each(function () {
					                    if ($(this).text() == _this.text()){
					                        $(this).addClass('click');
					                        cthis.selDate = new Date(year, month, $(this).text());
					                        if( typeof cthis.receive_func === "function" ){
					                            cthis.receive_func(cthis.selDate);
					                        }
					                    }
					                    else
					                        $(this).removeClass('click');
					                });
					            });
					        }
					    }
					    
					    function hide_cal(){
					        $('#cal_1').hide();
					        $('#cal_2').hide();
					        $('#cals_c').hide();
					    }
					    
					    function show_cal(idx) {
					        var obj1 = $('#cal_1');
					        var obj2 = $('#cal_2');
					
					        hide_cal();
					        
					        if(idx==1){
					            obj1.show();
					            cals.show(cals.selDate);
					        }
					        else{
					            obj2.show();
					            cals2.show(cals2.selDate);
					        }
					    }
					    function cal_ok(idx, dt){
					        if(!dt){
					            alert('날짜를 선택해 주세요.');
					            return;
					        }
					        
					        var frm = document.frmcall;
					
					        var day_of_week = ['일', '월', '화', '수', '목', '금', '토'];
					        var year = dt.getFullYear();
					        var month = dt.getMonth()+1;
					        var day = dt.getDate();
					        var yo = day_of_week[dt.getDay()];
					        
					        var hour = $('#cals'+idx+'_hour').val();
					        var min = $('#cals'+idx+'_min').val();
					        
					        $('#cal'+idx+'_sdate').html(lpad(month,2)+'.'+lpad(day,2));
					        $('#cal'+idx+'_syear').html(year + ' / '+yo+'요일 <span style="color: #007efe;">'+hour+':'+min+'</span>');
					        $('#cal_'+idx).hide();
					        
					        if(idx==1){
					            if(cals.selDate > cals2.selDate){
					                cals2.selDate = new Date(cals.selDate);
					                cal_ok(2, cals2.selDate);
					            }
					        }
					        else {
					            if(cals.selDate > cals2.selDate){
					                cals.selDate = new Date(cals2.selDate);
					                cal_ok(1, cals.selDate);
					            }
					        }
					        
					        frm.sdate.value = cals.selDate.format('yyyy-MM-dd') + ' ' + $('#cals1_hour').val() + ':' + $('#cals1_min').val();
					        frm.edate.value = cals2.selDate.format('yyyy-MM-dd') + ' ' + $('#cals2_hour').val() + ':' + $('#cals2_min').val();
					    }
					    
					    function cal_common(obj){
					        var frm = document.frmcall;
					        
					        hide_cal();
					        calsc.receive_func = function(date){
					            frm.bdate.value = date.format('yyyy-MM-dd');
					            obj.innerHTML = frm.bdate.value;
					            $('#cals_c').hide();
					        }
					
					        $('#cals_c').show();
					        calsc.show(calsc.selDate);
					    }
					    
					    function applyComplete(){
					        $('.applyComplete').show();
					    }
					</script>
					
					<div class="search_car">
				    <div id="cal_1" class="sc_popup">
				    <div class="sc_popup_content">
				        <div class="sc_popup_date">
				            <button type="button" class="prevew hand" onclick="cals.prev()"></button>
				            <p id='cals_title' class="sc_cal_title"></p>
				            <button type="button" class="next hand" onclick="cals.next()"></button>
				        </div>
				        <div id="cals" class="sc_popup_calendar">
				        </div>
				        <div class="sc_popup_calendar_click">
				            <p class="today">오늘</p>
				            <p>선택한 일정</p>
				        </div>
				        <div class="sc_popup_btn">
				            <ul>
				                <li>대여시간</li>
				                <li>
				                    <select id='cals1_hour'>
				                        <option value='08'>08</option>
				                        <option value='09' selected>09</option>
				                        <option value='10'>10</option>
				                        <option value='11'>11</option>
				                        <option value='12'>12</option>
				                        <option value='13'>13</option>
				                        <option value='14'>14</option>
				                        <option value='15'>15</option>
				                        <option value='16'>16</option>
				                        <option value='17'>17</option>
				                        <option value='18'>18</option>
				                        <option value='19'>19</option>
				                        <option value='20'>20</option>
				                    </select>
				                    시
				                </li>
				                <li>
				                    <select id='cals1_min'>
				                        <option value='00' selected>00</option>
				                        <option value='30'>30</option>
				                    </select>
				                    분
				                </li>
				            </ul>
				        </div>
				        <div style="text-align: right; padding: 10px;">
				            <input type="button" value="확인" class="sbutton" onclick='cal_ok(1, cals.selDate)'>
				            <input type="button" value="취소" class="sbutton" onclick="$('#cal_1').hide();">
				        </div>  
				    </div>
				</div>
				
				<div id="cal_2" class="sc_popup calendar_02">
				    <div class="sc_popup_content">
				        <div class="sc_popup_date">
				            <button type="button" class="prevew hand" onclick="cals2.prev()"></button>
				            <p id='cals2_title' class="sc_cal_title"></p>
				            <button type="button" class="next hand" onclick="cals2.next()"></button>
				        </div>
				        <div id="cals2" class="sc_popup_calendar">
				        </div>
				        <div class="sc_popup_calendar_click">
				            <p class="today">오늘</p>
				            <p>선택한 일정</p>
				        </div>
				        <div class="sc_popup_btn">
				            <ul>
				                <li>대여시간</li>
				                <li>
				                    <select id='cals2_hour'>
				                        <option value='08'>08</option>
				                        <option value='09' selected>09</option>
				                        <option value='10'>10</option>
				                        <option value='11'>11</option>
				                        <option value='12'>12</option>
				                        <option value='13'>13</option>
				                        <option value='14'>14</option>
				                        <option value='15'>15</option>
				                        <option value='16'>16</option>
				                        <option value='17'>17</option>
				                        <option value='18'>18</option>
				                        <option value='19'>19</option>
				                        <option value='20'>20</option>
				                    </select>
				                    시
				                </li>
				                <li>
				                    <select id='cals2_min'>
				                        <option value='00' selected>00</option>
				                        <option value='30'>30</option>
				                    </select>
				                    분
				                </li>
				            </ul>
				        </div>
				        <div style="text-align: right; padding: 10px;">
				            <input type="button" value="확인" class="sbutton" onclick='cal_ok(2, cals2.selDate)'>
				            <input type="button" value="취소" class="sbutton" onclick="$('#cal_2').hide();">
				        </div>  
				    </div>
				</div>    <div id="cals_c" class="sc_popup calendar_03">
				    <div class="sc_popup_content">
				        <div class="sc_popup_date">
				            <button type="button" class="prevew hand" onclick="calsc.prev()"></button>
				            <p id='calsc_title' class="sc_cal_title"></p>
				            <button type="button" class="next hand" onclick="calsc.next()"></button>
				        </div>
				        <div id="calsc" class="sc_popup_calendar">
				        </div>
				        <div class="sc_popup_calendar_click">
				            <p>선택한 날짜</p>
				        </div>
				        <div style="text-align: right; padding: 10px;">
				            <input type="button" value="취소" class="sbutton" onclick="$('#cals_c').hide();">
				        </div>  
				    </div>
				</div>
				<script>
					    var calsc = new calprint('calsc', new Date());
					</script>   
							<form name="frmcall" method="post" target="pro" action="http://gogorentcar.com/common/applyfor">
					        <input type="hidden" name="sdate" value="2022-12-13 09:00">
					        <input type="hidden" name="edate" value="2022-12-14 09:00">
					        <input type="hidden" name="bdate" value="2022-12-30">
					        <input type="hidden" name="viewpage" value="gogorentcar.com/">
					        <div class="select_date">
					            <button type="button">
					                <dl class="dtover" onclick="show_cal(1)">
					                    <dt>대여 일시</dt>
					                    <dd>
					                        <div class="clicktimedate">
					                            <h2 id="cal1_sdate">12.13</h2>
					                            <h6 id="cal1_syear">2022 / 화요일 <span style="color: #007efe;">09:00</span></h6>
					                        </div>
					                    </dd>
					                </dl>
					                <dl class="dtover2" onclick="show_cal(2)">
					                    <dt>반납 일시</dt>
					                    <dd>
					                        <div class="clicktimedate">
					                            <h2 id="cal2_sdate">12.14</h2>
					                            <h6 id="cal2_syear">2022 / 수요일 <span style="color: #007efe;">09:00</span></h6>
					                        </div>
					                    </dd>
					                </dl>
					            </button>
					        </div>
					        <div class="select_serch">
					            <div class="select_serch_inner">
					                <div class="select_serch_title">
					                    <p>차종</p>
					                </div>
					                <div class="select_serch_content cartype">
					                    <select name="car_type" class="select_area_half">
					                                                <option value="경차/소형">경차/소형</option>
					                                                <option value="준중형">준중형</option>
					                                                <option value="중형">중형</option>
					                                                <option value="대형">대형</option>
					                                                <option value="고급">고급</option>
					                                                <option value="수입차">수입차</option>
					                                                <option value="RV/승합차">RV/승합차</option>
					                                            </select>
					                    <input type="text" name="car_name" placeholder="차량명 입력" style="text-align: center">
					                </div>
					                <script>
					                    $('.cartype label').click(function(){
					                        $('.cartype label').each(function(){
					                            $(this).removeClass('selected');
					                            $(this).children('input').eq(0).attr('checked', false);
					                        })
					                        $(this).addClass('selected');
					                        $(this).children('input').eq(0).attr('checked', true);
					                    });
					                </script>
					            </div>
					            <div class="select_serch_inner">
					                <div class="select_serch_title">
					                    <p>지점</p>
					                </div>
					                <div class="select_serch_content">
					                    <select name="area" class="select_area">
					                        <option value="서울 강남지점">서울 강남지점</option>
					                        <option value="서울 용산지점">서울 용산지점</option>
					                        <option value="서울 강서지점">서울 강서지점</option>
					                        <option value="김포 공항안내데스크점">김포 공항안내데스크점</option>
					                        <option value="광주광역시점">광주광역시점</option>
					
					                        <!--<option value="부산광역시">부산광역시</option>
					                        <option value="인천광역시">인천광역시</option>
					                        <option value="대구광역시">대구광역시</option>
					                        <option value="대전광역시">대전광역시</option>
					                        <option value="울산광역시">울산광역시</option>
					                        <option value="세종특별자치시">세종특별자치시</option>
					                        <option value="강원도">강원도</option>
					                        <option value="충청남도">충청남도</option>
					                        <option value="충청북도">충청북도</option>
					                        <option value="경상북도">경상북도</option>
					                        <option value="경상남도">경상남도</option>
					                        <option value="전라북도">전라북도</option>
					                        <option value="전라남도">전라남도</option>
					                        <option value="제주도">제주도</option>-->
					                    </select>
					                </div>
					            </div>
					            <div class="select_serch_inner">
					                <div class="select_serch_title">
					                    <p>신청자명</p>
					                </div>
					                <div class="select_serch_content">
					                    <input type="text" class="input1" name="name" placeholder="이름을 입력하세요">
					                </div>
					            </div>
					            <div class="select_serch_inner">
					                <div class="select_serch_title">
					                    <p>개인 연락처</p>
					                </div>
					                <div class="select_serch_content">
					                    <input type="text" class="input1" name="tel" placeholder="연락처를 입력하세요">
					                </div>
					            </div>
					            <div class="select_serch_inner">
					                <div class="select_serch_title">
					                    <p>생년월일</p>
					                </div>
					                <div class="select_serch_content">
					                    <button type="button" class="calendar" onclick="cal_common(this)">2022-12-30</button>
					                </div>
					            </div>
					        </div>
					        <div class="selct_btn" style="background: #007efe;">
					            <button type="submit" onclick="gtag('event', 'Click', { 'event_category': 'Reservation','event_label': 'btn_main' });">
					                예약 신청하기
					            </button>
					        </div>
					        <div class="selct_btn">
					            <a href="tel:1577-4764" onclick="gtag('event', 'Click', { 'event_category': 'Call','event_label': 'btn_main' });">
					                1577 - 4764 전화걸기
					            </a>
					        </div>
					        <div style="clear:both"></div>
					    </form>
					</div>
					<script>
					    var date = new Date();
					    
					    date.setDate(date.getDate()+1);
					    var cals = new calprint('cals', date);
					    
					    date.setDate(date.getDate()+1);
					    var cals2 = new calprint('cals2', date);
					    
					    cal_ok(1, cals.selDate);
					    cal_ok(2, cals2.selDate);
					</script>
        </div>
			
			<div class="swiper-container">
		      <div class="swiper-wrapper">
		          <div class="swiper-slide w3-center" style="background-image:url(https://i.postimg.cc/Z0ktfskN/peter-broomfield-m3m-ln-R90u-M-unsplash.jpg)">
		          	<h3><a href="http://192.168.50.145:9090/javawjsp/"><font style="color:white;">K7예약하러가기</font></a></h3>
		          </div>
		          <div class="swiper-slide" style="background-image:url(https://i.postimg.cc/MTTSXjbn/brandon-atchison-e-BJWhlq-WR54-unsplash.jpg)"></div>
		          <div class="swiper-slide" style="background-image:url(https://i.postimg.cc/8cfgmQYD/campbell-3-ZUs-NJhi-Ik-unsplash.jpg)"></div>
		          <div class="swiper-slide" style="background-image:url(https://i.postimg.cc/8Ck5BcmS/evgeny-tchebotarev-aiwu-Lj-LPFn-U-unsplash.jpg)"></div>
		          <div class="swiper-slide" style="background-image:url(https://i.postimg.cc/66F8J9tr/hakon-sataoen-qyfco1nf-Mtg-unsplash.jpg)"></div>
		          <div class="swiper-slide" style="background-image:url(https://i.postimg.cc/ydbzRYvv/joey-banks-YApi-Wyp0lqo-unsplash.jpg)"></div>
		          <div class="swiper-slide" style="background-image:url(https://i.postimg.cc/NGKKzyqG/joshua-koblin-eq-W1-MPin-EV4-unsplash.jpg)"></div>
		          <div class="swiper-slide" style="background-image:url(https://i.postimg.cc/JhK81QJw/marcus-p-o-UBjd22g-F6w-unsplash.jpg)"></div>
		      </div>
		      <div class="swiper-pagination"></div>
		  </div>
		</div>
	</div>
	<jsp:include page="include_p/p_footer.jsp"/>
	<script>
		// Tabs
	/* 	 function openLink(evt, linkName) {
		  var i, x, tablinks;
		  x = document.getElementsByClassName("myLink");
		  for (i = 0; i < x.length; i++) {
		    x[i].style.display = "none";
		  }
		  tablinks = document.getElementsByClassName("tablink");
		  for (i = 0; i < x.length; i++) {
		    tablinks[i].className = tablinks[i].className.replace(" w3-red", "");
		  }
		  document.getElementById(linkName).style.display = "block";
		  evt.currentTarget.className += " w3-red";
		}
		// Click on the first tablink on load
		document.getElementsByClassName("tablink")[0].click(); */
		
					
		//첫화면 자동차 슬라이더
		var swiper = new Swiper('.swiper-container', {
	      pagination: '.swiper-pagination',
	      effect: 'coverflow',
	      grabCursor: true,
	      centeredSlides: true,
	      slidesPerView: 'auto',
	      coverflow: {
	          rotate: 20,
	          stretch: 0,
	          depth: 200,
	          modifier: 1,
	          slideShadows: true,
	      },
	      autoplay : true,
	      loop: true
	  });
		// 마우스 오버시 멈춤 아웃시 시작
		$('.swiper-slide').on('mouseover', function(){
			  swiper.autoplay.stop();
		});
		$('.swiper-slide').on('mouseout', function(){
			 swiper.autoplay.start();
		});
	</script>
	<script>
    /*  이미지 페인트 아웃 */
    $('#slide1>ul>li:gt(0)').hide();

    setInterval(function(){
        $('#slide1>ul>li:first-child').fadeOut(1000)
        .next().fadeIn(1000).end()
        .appendTo('#slide1>ul');
    },3000);
    
    /* //자동 스크롤 애니메이션
    var ul = document.querySelector('#slider')
    var slideNumber = document.querySelector('#slider').childElementCount
    var li = document.querySelector('#slider>li')

    var firstItemClone = ul.firstElementChild.cloneNode(true);
    ul.appendChild(firstItemClone);
    ul.style.width = (slideNumber + 1) * 300 + 'px'

    function move(){
      var i = 0;

      setInterval(function(){
        ul.style.transition = '0.2s';
        ul.style.transform = 'translate3d(-'+300*(i+1)+'px, 0px, 0px)';

        i++;

        if (i == slideNumber){
          setTimeout(function(){
            ul.style.transition = '0s';
            ul.style.transform = "translate3d(0px, 0px, 0px)";
          },201)
          i = 0;
        }
      },3000);
    }

    document.addEventListener("DOMContentLoaded",function(){
      move();
    }); */
    

  </script>
</body>
</html>