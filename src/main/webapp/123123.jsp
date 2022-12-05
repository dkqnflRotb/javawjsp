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
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/velocity/1.2.3/velocity.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/velocity/1.2.3/velocity.ui.min.js"></script>
  <style>
  	@import url(https://fonts.googleapis.com/css?family=Work+Sans:400,300,700|Open+Sans:400italic,300italic);
		body {
		  background-color: #fff
		}
		
		.home {
		  width: 100%;
		  height: 100vh;
		  position: relative;
		  background-image: url(https://images.unsplash.com/photo-1444927714506-8492d94b4e3d?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&s=067f0b097deff88a789e125210406ffe);
		  background-size: cover;
		  background-position: center center;
		}
		
		
		/* ====================================
		Navigation 
		==================================== */
		
		.overlay-navigation {
		  position: fixed;
		  z-index: 99;
		  top: 0;
		  left: 0;
		  width: 100%;
		  height: 100%;
		  background-color: hsla(0, 0%, 100%, 0.2);
		  display: none;
		  opacity: 0;
		}
		
		nav,
		nav ul {
		  width: 100%;
		  height: 100%;
		  margin: 0;
		  padding: 0;
		}
		
		nav ul {
		  display: -webkit-box;
		  display: -webkit-flex;
		  display: -ms-flexbox;
		  display: flex;
		  list-style: none;
		}
		
		nav ul li {
		  -webkit-flex-basis: 20%;
		  -ms-flex-preferred-size: 20%;
		  flex-basis: 20%;
		  -webkit-box-pack: center;
		  -webkit-justify-content: center;
		  -ms-flex-pack: center;
		  justify-content: center;
		  -webkit-box-align: center;
		  -webkit-align-items: center;
		  -ms-flex-align: center;
		  align-items: center;
		  height: 100%;
		  overflow: hidden;
		  opacity: 0;
		  display: none;
		}
		
		nav li a {
		  position: relative;
		  top: 46%;
		  color: #fff;
		  text-transform: uppercase;
		  font-family: 'Work sans', sans-serif;
		  font-weight: 300;
		  letter-spacing: 4px;
		  text-decoration: none;
		  display: block;
		  text-align: center;
		  font-size: 0.9rem;
		  opacity: 0;
		}
		
		nav li a:before {
		  content: '';
		  width: 70px;
		  height: 2px;
		  background-color: #fff;
		  position: absolute;
		  top: 50%;
		  left: 0;
		  z-index: 100;
		  -webkit-transform: translateX(-100%);
		  -ms-transform: translateX(-100%);
		  transform: translateX(-100%);
		  opacity: 0;
		  -webkit-transition: all .2s linear;
		  transition: all .2s linear;
		}
		
		nav li a:after {
		  content: attr(data-content);
		  font-size: 0.7rem;
		  -webkit-transition: all .2s linear;
		  transition: all .2s linear;
		  opacity: 0;
		  position: absolute;
		  z-index: 100;
		  color: #fff;
		  display: block;
		  margin-right: auto;
		  margin-left: auto;
		  left: 0;
		  right: 0;
		  bottom: -50px;
		  text-transform: none;
		  font-family: 'Open sans', sans-serif;
		  font-weight: 300;
		  font-style: italic;
		  letter-spacing: 0;
		}
		
		nav li a:hover:before {
		  -webkit-transform: translateX(0);
		  -ms-transform: translateX(0);
		  transform: translateX(0);
		  opacity: 1;
		}
		
		nav li a:hover:after {
		  -webkit-transform: translateY(15px);
		  -ms-transform: translateY(15px);
		  transform: translateY(15px);
		  opacity: 1;
		}
		
		nav li:nth-of-type(1) {
		  background-color: #29363B
		}
		
		nav li:nth-of-type(2) {
		  background-color: #EA495F
		}
		
		nav li:nth-of-type(3) {
		  background-color: #F4837D
		}
		
		nav li:nth-of-type(4) {
		  background-color: #FDCEA9
		}
		
		nav li:nth-of-type(5) {
		  background-color: #99B998
		}
		
		
		/* ====================================
		Burger king
		==================================== */
		
		.open-overlay {
		  position: absolute;
		  right: 5rem;
		  top: 3.2rem;
		  z-index: 100;
		  width: 34px;
		  display: block;
		  cursor: pointer;
		}
		
		.open-overlay span {
		  display: block;
		  height: 1px;
		  background-color: #fff;
		  cursor: pointer;
		  margin-top: 8px;
		}
		
		.animate-top-bar {
		  -webkit-animation: animate-top-bar .6s linear 1 both;
		  animation: animate-top-bar .6s linear 1 both
		}
		
		.animate-bottom-bar {
		  -webkit-animation: animate-bottom-bar .6s linear 1 both;
		  animation: animate-bottom-bar .6s linear 1 both
		}
		
		.animate-middle-bar {
		  -webkit-animation: animate-middle-bar .6s linear 1 both;
		  animation: animate-middle-bar .6s linear 1 both
		}
		
		.animate-out-top-bar {
		  -webkit-animation: animate-out-top-bar .6s linear 1 both;
		  animation: animate-out-top-bar .6s linear 1 both
		}
		
		.animate-out-bottom-bar {
		  -webkit-animation: animate-out-bottom-bar .6s linear 1 both;
		  animation: animate-out-bottom-bar .6s linear 1 both
		}
		
		.animate-out-middle-bar {
		  -webkit-animation: animate-out-middle-bar .6s linear 1 both;
		  animation: animate-out-middle-bar .6s linear 1 both
		}
		
		
		/* ====================================
		Animation keyframes
		==================================== */
		
		@keyframes animate-top-bar {
		  0% {
		    background-color: #fff;
		  }
		  50% {
		    -webkit-transform: translateY(9px);
		    transform: translateY(9px)
		  }
		  80% {
		    -webkit-transform: translateY(5px);
		    transform: translateY(5px);
		    background-color: #fff
		  }
		  100% {
		    -webkit-transform: translateY(0);
		    transform: translateY(0);
		    background-color: #29363B;
		  }
		}
		
		@keyframes animate-bottom-bar {
		  0% {
		    background-color: #fff;
		  }
		  50% {
		    -webkit-transform: translateY(-9px);
		    transform: translateY(-9px)
		  }
		  80% {
		    -webkit-transform: translateY(-5px);
		    transform: translateY(-5px);
		    background-color: #fff;
		  }
		  100% {
		    -webkit-transform: translateY(0);
		    transform: translateY(0);
		    background-color: #29363B;
		  }
		}
		
		@keyframes animate-middle-bar {
		  0% {
		    background-color: #fff;
		  }
		  80% {
		    background-color: #fff;
		  }
		  100% {
		    background-color: #29363B;
		  }
		}
		
		@keyframes animate-out-top-bar {
		  0% {
		    background-color: #29363B
		  }
		  50% {
		    -webkit-transform: translateY(9px);
		    transform: translateY(9px)
		  }
		  80% {
		    -webkit-transform: translateY(5px);
		    transform: translateY(5px);
		    background-color: #29363B
		  }
		  100% {
		    -webkit-transform: translateY(0);
		    transform: translateY(0);
		    background-color: #FFF;
		  }
		}
		
		@keyframes animate-out-bottom-bar {
		  0% {
		    background-color: #29363B
		  }
		  50% {
		    -webkit-transform: translateY(-9px);
		    transform: translateY(-9px)
		  }
		  80% {
		    -webkit-transform: translateY(-5px);
		    transform: translateY(-5px);
		    background-color: #29363B;
		  }
		  100% {
		    -webkit-transform: translateY(0);
		    transform: translateY(0);
		    background-color: #FFF;
		  }
		}
		
		@keyframes animate-out-middle-bar {
		  0% {
		    background-color: #29363B
		  }
		  80% {
		    background-color: #29363B;
		  }
		  100% {
		    background-color: #fff;
		  }
		}
		
		.home a {
		  font-family: "Work Sans", sans-serif;
		  color: #222;
		  font-weight: 300;
		  font-size: 12px;
		  text-transform: uppercase;
		  text-decoration: none;
		  position: absolute;
		  z-index: 10;
		  top: 50px;
		  left: 50px;
		  padding-bottom: 3px;
		  border-bottom: 1px solid #222;
		}
		
		@media (max-width: 640px) {
		  nav ul {
		    -webkit-box-orient: vertical;
		    -webkit-box-direction: normal;
		    -webkit-flex-direction: column;
		    -ms-flex-direction: column;
		    flex-direction: column;
		  }
		  nav ul li {
		    height: 20%;
		  }
		  nav ul li a {
		    font-size: 11px;
		  }
		  nav li a:after {
		    font-size: 0.6rem;
		    bottom: -25px;
		  }
		  nav li a:hover:after {
		    transform: translateY(0);
		  }
		  .open-overlay {
		    right: 1rem;
		  }
		  nav li a:before {
		    width: 25px;
		  }
		}
  </style>
</head>
<body>
	<div class="overlay-navigation">
	  <nav role="navigation">
	    <ul>
	      <li><a href="#" data-content="The beginning">Home</a></li>
	      <li><a href="#" data-content="Curious?">About</a></li>
	      <li><a href="#" data-content="I got game">Skills</a></li>
	      <li><a href="#" data-content="Only the finest">Works</a></li>
	      <li><a href="#" data-content="Don't hesitate">Contact</a></li>
	    </ul>
	  </nav>
	</div>
	
	<section class="home">
	    <a href="http://192.168.50.145:9090/javawjsp/">홈으로가기</a>
	  <div class="open-overlay">
	    <span class="bar-top"></span>
	    <span class="bar-middle"></span>
	    <span class="bar-bottom"></span>
	  </div>
	</section>
	<script>
	 $('.open-overlay').click(function() {
     $('.open-overlay').css('pointer-events', 'none');
     var overlay_navigation = $('.overlay-navigation'),
       top_bar = $('.bar-top'),
       middle_bar = $('.bar-middle'),
       bottom_bar = $('.bar-bottom');

     overlay_navigation.toggleClass('overlay-active');
     if (overlay_navigation.hasClass('overlay-active')) {

       top_bar.removeClass('animate-out-top-bar').addClass('animate-top-bar');
       middle_bar.removeClass('animate-out-middle-bar').addClass('animate-middle-bar');
       bottom_bar.removeClass('animate-out-bottom-bar').addClass('animate-bottom-bar');
       overlay_navigation.removeClass('overlay-slide-up').addClass('overlay-slide-down')
       overlay_navigation.velocity('transition.slideLeftIn', {
         duration: 300,
         delay: 0,
         begin: function() {
           $('nav ul li').velocity('transition.perspectiveLeftIn', {
             stagger: 150,
             delay: 0,
             complete: function() {
               $('nav ul li a').velocity({
                 opacity: [1, 0],
               }, {
                 delay: 10,
                 duration: 140
               });
               $('.open-overlay').css('pointer-events', 'auto');
             }
           })
         }
       })

     } else {
       $('.open-overlay').css('pointer-events', 'none');
       top_bar.removeClass('animate-top-bar').addClass('animate-out-top-bar');
       middle_bar.removeClass('animate-middle-bar').addClass('animate-out-middle-bar');
       bottom_bar.removeClass('animate-bottom-bar').addClass('animate-out-bottom-bar');
       overlay_navigation.removeClass('overlay-slide-down').addClass('overlay-slide-up')
       $('nav ul li').velocity('transition.perspectiveRightOut', {
         stagger: 150,
         delay: 0,
         complete: function() {
           overlay_navigation.velocity('transition.fadeOut', {
             delay: 0,
             duration: 300,
             complete: function() {
               $('nav ul li a').velocity({
                 opacity: [0, 1],
               }, {
                 delay: 0,
                 duration: 50
               });
               $('.open-overlay').css('pointer-events', 'auto');
             }
           });
         }
       })
     }
   })
	</script>
</body>
</html>