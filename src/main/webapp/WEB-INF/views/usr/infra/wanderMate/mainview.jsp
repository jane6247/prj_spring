<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>travel mate</title>

    <!-- css  -->
    <link rel="stylesheet" href="/resources/assets_wanderMate/css/style.css" />
    <!-- bootstrap -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"
    />
    <!-- fontawesome -->
    <script
      src="https://kit.fontawesome.com/f0e73cfa04.js"
      crossorigin="anonymous"
    ></script>

    <!-- js -->
  </head>

  <body>
    <div class="wrap">
      <header class="header">
        <div class="logo">
          <a href="mainview"><img src="/resources/assets_wanderMate/img/main-logo.jpeg" /></a>
        </div>

        <ul class="menu">
          <li>
            <div class="dropdown">
              <span class="aboutUs"
                >About us <i class="fa-solid fa-chevron-down"></i
              ></span>
              <div class="dropdown-content">
                <a class="hoverable" href=""><p>Hello World!</p></a>
              </div>
            </div>
          </li>
          <li><a class="underline" href="Publication">Host</a></li>
          <li><a class="underline" href="findhostview">Find Host</a></li>
        </ul>

        <div class="button">
          <a href="indexUsrLoginView"
            ><button type="button" class="btn btn1">Sign in</button></a
          >
          <a href="indexUsrLoginView"
            ><button type="button" class="btn btn2">Sign up</button></a
          >
        </div>
      </header>

      <section class="mainvisual">
        <div class="main_text">
          <p class="slide_in">Where next?</p>
          <button type="button" class="btn btn_join"><a href="findhostview">Find wander mate</a></button>
        </div>
        <div class="pic pic_01"><img src="/resources/assets_wanderMate/img/seoul-tower new.avif" /></div>
        <div class="pic pic_02"><img src="/resources/assets_wanderMate/img/newwork.jpeg" /></div>
        <div class="pic pic_03"><img src="/resources/assets_wanderMate/img/turkey.jpeg" /></div>
        <div class="pic pic_04"><img src="/resources/assets_wanderMate/img/effeltowr.jpeg" /></div>
        <div class="pic pic_05">
          <img src="/resources/assets_wanderMate/img/gyeongbokgung-place.avif" />
        </div>
        <div class="pic pic_06"><img src="/resources/assets_wanderMate/img/china.jpeg" /></div>
        <div class="pic pic_07">
          <img src="/resources/assets_wanderMate/img/raimond-klavins-bwjWW8C9rJ4-unsplash.jpg" alt="" />
        </div>
      </section>

      <section class="find">
        <div class="find_box Find_host">
          <img src="/resources/assets_wanderMate/img/map.jpeg" />
          <span>
            <a class="find_btn" href="findhostview"
              >Find host<i class="fa-solid fa-location-arrow"></i
            ></a>
          </span>
        </div>
        <div class="find_box host">
          <img src="/resources/assets_wanderMate/img/passport.webp" />
          <span>
            <a class="find_btn" href="#"
              >Host<i class="fa-solid fa-location-arrow"></i></a
          ></span>
        </div>
      </section>
      <section class="what">
        <span class="what_title">What is wander&Mate? </span>

        <div class="what_box travel">
          <div class="travel_wrap">
            <div class="icon" style="border-color: #7c6302">
              <i
                class="fa-solid fa-share-nodes"
                style="font-size: 35px; color: #7c6302"
              ></i>
            </div>
            <div class="text_box">
              <h3>Share Experience</h3>
              <br />
              <p>
                Post your most memorable moments and contribute to the travel
                community.
              </p>
            </div>
          </div>
        </div>

        <div class="what_box host">
          <div class="travel_wrap">
            <div class="icon" style="border-color: #c84b31">
              <i
                class="fa-solid fa-globe"
                style="font-size: 35px; color: #c84b31"
              ></i>
            </div>
            <div class="text_box">
              <h3>Discover Places</h3>
              <br />

              <p>
                Find new locations, learn about new cultures and get valuable
                tips for your journey.
              </p>
            </div>
          </div>
        </div>
        <div class="what_box work">
          <div class="travel_wrap">
            <div class="icon" style="border-color: #346751">
              <i
                class="fa-solid fa-map"
                style="font-size: 35px; color: #346751"
              ></i>
            </div>
            <div class="text_box">
              <h3>Plan</h3>
              <br />
              <p>Arrange trips and meet those who share your passion.</p>
            </div>
          </div>
        </div>
        <div class="what_box findfriends">
          <div class="travel_wrap">
            <div class="icon" style="border-color: #950101">
              <i
                class="fa-solid fa-people-group"
                style="font-size: 35px; color: #950101"
              ></i>
            </div>
            <div class="text_box">
              <h3>companions</h3>
              <br />
              <p>
                Find your travel buddy and meet locals from all over the world.
              </p>
            </div>
          </div>
        </div>
      </section>
      <section class="cliff container">
        <img src="/resources/assets_wanderMate/img/kevin-chen-MBo8nPR5laA-unsplash (1).jpg" alt="" />

        <h2>The one who lives sees a lot. <br />Those who travel see more</h2>
      </section>

      <section class="statistics">
        <p class="some">Some statistics</p>
        <div class="num_wrap">
          <div class="num_stat">
            <span span class="counter" data-start="150249" data-end="150435" style="color: #346751">150435</span><br />
            <p>Users of our service</p>
          </div>
          <div class="num_stat">
            <span span class="counter" data-start="0" data-end="186" style="color: #bf9e80">186 </span><br />
            <p>Countries for travel</p>
          </div>
          <div class="num_stat">
            <span span class="counter" data-start="45198" data-end="45384" style="color: #5196a6">45384 </span><br />
            <p>Hoeme visited</p>
          </div>
          <div class="num_stat">
            <span span class="counter" data-start="43400" data-end="43586" style="color: #f2a341">43586 </span><br />
            <p>Positive reviews</p>
          </div>
        </div>
      </section>
      <section class="question"></section>

 <%@include file="../../include/includeWanderFooter.jsp"%>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
   <script>

   function counterUp(target, start, end, duration) {
	   var range = end - start;
	   var current = start;
	   var increment = end > start ? 1 : -1;
	   var stepTime = Math.abs(Math.floor(duration / range));
	   var timer = setInterval(function() {
	     current += increment;
	     target.innerHTML = current;
	     if ((increment > 0 && current >= end) || (increment < 0 && current <= end)) {
	       clearInterval(timer);
	     }
	   }, stepTime);
	 }

	 var counterElements = document.getElementsByClassName("counter");
	 var countersActivated = [];

	 function checkScroll() {
	   for (var i = 0; i < counterElements.length; i++) {
	     var elementTop = counterElements[i].getBoundingClientRect().top;
	     var windowHeight = window.innerHeight;

	     if (elementTop < windowHeight && !countersActivated[i]) {
	       var start = parseInt(counterElements[i].getAttribute("data-start"), 10);
	       var end = parseInt(counterElements[i].getAttribute("data-end"), 10);
	       counterUp(counterElements[i], start, end, 2000);
	       countersActivated[i] = true;
	     }
	   }
	 }

	 window.addEventListener("scroll", checkScroll);



    </script>
  </body>
</html>
