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
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
  <style>
	  html,body {
		  background: #000;
	    height: 100%;
 		  font-family: "Raleway", Arial, Helvetica, sans-serif;
		}
  	.swiper-container {
		  	background: #111;
		    font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
		    font-size: 14px;
		    color: #000;
		    height: 100vh;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		}
		#wrap {
	   	min-height: 100%;
	    position: relative;
	    padding-bottom: 60px;
		}
	
		h2 {
		  font-family: 'Arial';
		  color: #fff;
		  text-transform: uppercase;
		  font-weight: bold;
		  font-size: 3rem;
		  line-height: 0.75;
		}
	
		span {
		  display: block;
		}
	
		span:not(.light,.w3-tag) {
		  opacity: 0;
		  animation: flashText .5s ease-out alternate infinite;
		}
	
		span.light {
		  position: relative;
		  display: inline-block;
		  
		  &:before {
		    position: absolute;
		    left: 0;
		    top: -10%;
		    width: 100%;
		    height: 120%;
		    background: #fff;
		    filter: blur(10px);
		    content: "";
		    opacity: 0;
		    animation: flash .5s ease-out alternate infinite;
		  }
		}
	
		@keyframes flash{
		  to {
		    opacity: 1;
		  }
		}
	
		@keyframes flashText {
		  to {
		    opacity: 0.15;
		  }
		}
		footer {
			position: relative; 
	    transform: translatY(-100%);
		}
		.myLink {display: none}
		
		}

		.swiper-container {
				background: #000;
		    width: 100%;
		    padding-top: 50px;
		    padding-bottom: 80px;
		}
		
		.swiper-slide {
		    background-position: center;
		    background-size: cover;
		    width: 300px;
		    height: 300px;
		    -webkit-box-reflect: below 1px linear-gradient(transparent, transparent, #0006);
		}
		
  </style>
</head> 
<body>
	<div class="wrap">
		<div class="w3-bar w3-white w3-border-bottom w3-xlarge">
		  <a href="#" class="w3-bar-item w3-button w3-text-red w3-hover-red"><b><i class="fa fa-map-marker w3-margin-right"></i>Logo</b></a>
		  <a href="#" class="w3-bar-item w3-button w3-right w3-hover-red w3-text-grey"><i class="fa fa-search"></i></a>
		</div>
		<p><br/></p>
		<h2 class="ml-5">
		  <span>There's</span>  
		  <span class="light">light</span> 
		  <span> even in</span> 
		  <span>the darkest</span>  
		  <span>places</span>
		</h2>
		<header class="w3-display-container w3-content w3-hide-small" style="max-width:1500px">
		  <img class="w3-image" src="https://www.w3schools.com/w3images/london2.jpg" alt="London" width="1500" height="700">
		  <div class="w3-display-middle" style="width:65%">
		    <div class="w3-bar w3-black">
		      <button class="w3-bar-item w3-button tablink" onclick="openLink(event, 'Flight');"><i class="fa fa-plane w3-margin-right"></i>Flight</button>
		      <button class="w3-bar-item w3-button tablink" onclick="openLink(event, 'Hotel');"><i class="fa fa-bed w3-margin-right"></i>Hotel</button>
		      <button class="w3-bar-item w3-button tablink" onclick="openLink(event, 'Car');"><i class="fa fa-car w3-margin-right"></i>Rental</button>
		    </div>
	
		    <!-- Tabs -->
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
			</div>
		</header>
		<div class="swiper-container mt-5" style="background: #000; height: 400px;">
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
		<!-- Footer. This section contains an ad for W3Schools Spaces. You can leave it to support us. -->
	<footer class="w3-center w3-margin-top" >
	  <div class="jumbotron text-center w3-opacity" style="margin:80px 0; padding:10px 0 0; background-color:#000;color:white;">
		  <h5>Find Us On</h5>
		  <div class="w3-xlarge w3-padding-16 ">
		    <i class="fa fa-facebook-official w3-hover-opacity"></i>
		    <i class="fa fa-instagram w3-hover-opacity"></i>
		    <i class="fa fa-snapchat w3-hover-opacity"></i>
		    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
		    <i class="fa fa-twitter w3-hover-opacity"></i>
		    <i class="fa fa-linkedin w3-hover-opacity"></i>
		  </div>
	  <p>This website was made with W3schools Spaces. Make your own free website today!</p>
	  </div>
	 <!-- Footer end. -->
	</footer>
	<script>
		// Tabs
		function openLink(evt, linkName) {
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
		document.getElementsByClassName("tablink")[0].click();
		
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
</body>
</html>