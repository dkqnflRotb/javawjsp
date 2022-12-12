<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<style>
	@import url(https://fonts.googleapis.com/css?family=PT+Sans:400,700);
	h1{
	  font:400 40px 'pt sans',sans-serif;
	  text-align:center;
	}
	.nav a{
	  text-decoration:none;
	}
	.nav{
	  height:70px;
	  background:#222;
	  position:relative;
	}
	.nav>ul{
	  position:relative;
	  list-style:none;
	  padding:0;
	  margin:0;
	}
	.nav>ul>li>ul{
	  position:absolute;
	  left:0;
	  padding:0;
	  margin:0;
	  list-style:none;
	}
	.nav>ul>li:hover>ul li a{
	  opacity:1;
	  height:50px;
	   transition:all .3s linear;
	  -o-transition:all .3s linear;
	  -moz-transition:all .3s linear;
	  -webkit-transition:all .3s linear;
	}
	.nav>ul>li>ul a{
	  display:block;
	  color:#222;
	  width:150px;
	  line-height:50px !important;
	  font:700 14px 'pt sans',sans-serif;
	  background:#eee;
	  border-bottom:1px solid #ddd;
	  text-align:center;
	  padding:0 5px;
	   height:0;
	  overflow:hidden;
	  opacity:0;
	    transition:all .3s linear .2s;
	  -o-transition:all .3s linear .2s;
	  -moz-transition:all .3s linear .2s;
	  -webkit-transition:all .3s linear .2s;
	}
	.nav>ul>li{
	  float:left;
	  position:relative;
	}
	.nav>ul>li>a{
	  padding:0 20px;
	  color:#fff;
	  display:block;
	  line-height:70px !important;
	  font:400 15px 'PT Sans', sans-serif;
	  text-transform:uppercase;
	  text-decoration:none;
	}
	.lamp span{
	  display:block;
	  height:4px;
	  background:#ee6666;
	  position: relative;
	}
	.lamp span:after {
		bottom: 100%;
		left: 50%;
		border: solid transparent;
		content: " ";
		height: 0;
		width: 0;
		position: absolute;
		pointer-events: none;
		border-color: rgba(238, 102, 102, 0);
		border-bottom-color: #ee6666;
		border-width: 4px;
		margin-left: -4px;
	}
	.lamp{
	  position:absolute !important;
	  height:4px;
	  top:66px;
	  background:#333;
	  transition:all .3s linear;
	  -o-transition:all .3s linear;
	  -moz-transition:all .3s linear;
	  -webkit-transition:all .3s linear;
	}
	.selected.active>a,.active>a{
	  transition:all .3s linear;
	  -o-transition:all .3s linear;
	  -moz-transition:all .3s linear;
	  -webkit-transition:all .3s linear;
	  color:#fff;
	}
	.credit{
	  text-align:center;
	  margin:20px 0;
	}
	.blog-link{
		color:#fff;
		text-decoration:none;
		background:#eee;
		background-size:40px;
		line-height:50px;
		display:inline-block;
		padding:0 10px;
		border-radius:4px;
		border-bottom:3px solid #ddd;
		color:#333;
		font-family:'open sans',sans-serif;
		margin:10px;
	}
	.dgithub{
		color:#fff;
		text-decoration:none;
		background:#eee url('https://lh6.googleusercontent.com/-MOW-T0KLZJI/UyR6EIggYkI/AAAAAAAAEbM/el92Uoxz-aI/s50-no/GitHub-Mark.png') no-repeat;
		background-size:40px;
		line-height:50px;
		display:inline-block;
		padding:0 10px 0 50px;
		background-position:5px;
		border-radius:4px;
		border-bottom:3px solid #ddd;
		color:#333;
		font-family:'open sans',sans-serif;
		margin:10px;
	}
</style>
<script>
	$(function () {
	  if ($(".nav>ul>li").hasClass("selected")) {
	    $(".selected").addClass("active");
	    var currentleft = $(".selected").position().left + "px";
	    var currentwidth = $(".selected").css("width");
	    $(".lamp").css({ left: currentleft, width: currentwidth });
	  } else {
	    $(".nav>ul>li").first().addClass("active");
	    var currentleft = $(".active").position().left + "px";
	    var currentwidth = $(".active").css("width");
	    $(".lamp").css({ left: currentleft, width: currentwidth });
	  }
	  $(".nav>ul>li").hover(
	    function () {
	      $(".nav ul li").removeClass("active");
	      $(this).addClass("active");
	      var currentleft = $(".active").position().left + "px";
	      var currentwidth = $(".active").css("width");
	      $(".lamp").css({ left: currentleft, width: currentwidth });
	    },
	    function () {
	      if ($(".nav>ul>li").hasClass("selected")) {
	        $(".selected").addClass("active");
	        var currentleft = $(".selected").position().left + "px";
	        var currentwidth = $(".selected").css("width");
	        $(".lamp").css({ left: currentleft, width: currentwidth });
	      } else {
	        $(".nav>ul>li").first().addClass("active");
	        var currentleft = $(".active").position().left + "px";
	        var currentwidth = $(".active").css("width");
	        $(".lamp").css({ left: currentleft, width: currentwidth });
	      }
	    }
	  );
	});
</script>
<div class='nav'>
  <ul>
    <li><a href='#'>Home</a></li>
    <li><a href='#'>Articles</a>
      <ul>
        <li><a href='#'>Tutorial</a></li>
        <li><a href='#'>Snippets</a></li>
        <li><a href='#'>Freebies</a></li>
        <li><a href='#'>Design</a></li>
      </ul>
    </li>
    <li><a href='#'>Subscription</a>
      <ul>
        <li><a href='#'>Free</a></li>
        <li><a href='#'>Bronze</a></li>
        <li><a href='#'>Sliver</a></li>
        <li><a href='#'>Gold</a></li>
      </ul>
    </li>
    <li><a href='#'>About Us</a></li>
    <li><a href='#'>Contact Us</a></li>
    <li class='lamp'><span></span></li>
  </ul>
</div>
