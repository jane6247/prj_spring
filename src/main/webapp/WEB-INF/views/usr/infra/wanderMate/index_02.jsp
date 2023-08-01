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
    <title>travel mate_02</title>
    <link rel="stylesheet" href="/resources/assets_wanderMate/css/style_02.css" />

    
     <!-- google icon -->
     <link
     rel="stylesheet"
     href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
   />

    <!-- fontawesome -->
    <script
      src="https://kit.fontawesome.com/f0e73cfa04.js"
      crossorigin="anonymous"
    ></script>
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
                <span class="aboutUs">About us <i class="fa-solid fa-chevron-down"></i></span>
                <div class="dropdown-content">
                  <a class="hoverable" href=""><p>Hello World!</p></a>
                </div>
              </div>
            
          </li>
          <li><a class="underline" href="Publication">Host</a></li>
          <li><a class="underline" href="findhostview">Find Host</a></li>
        </ul>
        <ul class="Profile">
          <li>
            <i class="fa-regular fa-bell" style="font-size: xx-large"></i>
          </li>
          <li>Jessica</li>
          <li>
            
             <div class="dropdown">
                <div class="nav_img">
                  <img src="/resources/assets_wanderMate/img/profile_pic03.webp" alt="" />
                </div>
                <div class="dropdown-content">

                  <a class="hoverable" href="index01">
                    <span
                      class="material-symbols-outlined"
                      style="font-size: x-large">
                      edit_note
                      <p>Edit page</p></span></a>
                    
                 

                  <a class="hoverable" href=""><p>Hello World!</p></a>
                  <a class="hoverable" href=""
                    ><span class="material-symbols-outlined"> logout<p>Log out</p> </span>
                    </a>
                </div>
              </div></a>
          </li>
        </ul>
      </header>

      <div class="where_text">
        <span>Where do you want to go?</span>
      </div>

      <ul class="breadcrumb">
        <li><a href="mainview">Home</a></li>
        <li><a href="findhostview">Find Host</a></li>
        <li>search</li>
      </ul>
      <section>
        <div class="search-container">
          <select class="search-input" id="destination-input">
            <option value="" disabled selected>Direction</option>
            <option value="서울">Seoul</option>
            <option value="도쿄">Vancuver</option>
            <option value="파리">Paris</option>
          </select>
          <select class="search-input" id="genre-input">
            <option value="" disabled selected>Type</option>
            <option value="숙소">Accommodation</option>
            <option value="식당">Restaurant</option>
            <option value="일정">Travel</option>
          </select>
          <input type="date" class="search-input" id="calendar-input" />

          <button class="search-button" onclick="search()">
            <i class="fa-solid fa-magnifying-glass" style="font-size: 25px"></i>
          </button>
        </div>
        <form action=""></form>
      </section>
      <div class="hostThat"><h3>Host that are popular now:</h3></div>

      <div class="swiper-wrapper">
        <div class="slide_box">
          <div class="card card-blue">
            <div class="img_info">
              <div class="card__image">
                <img src="/resources/assets_wanderMate/img/profile_pic01.webp" alt="card image" />
              </div>
              <p class="card__title">
                <strong>Jessica</strong><br />
                (Seoul,Korea)<br />age:28 <br />
                Language:
              </p>
              <div class="star_box">
                <i
                  class="fa-solid fa-star"
                  style="font-size: x-large; color: yellow"
                ></i>
                4.9 <br />

                <i
                  class="fa-solid fa-user-group"
                  style="font-size: x-large"
                ></i>
                &gt; 2
              </div>
            </div>

            <div class="card__content">
              <h4>About plan:</h4>
              <p class="card__text">
                Hi! I am looking for someone who want to go to art gallery with
                me!
              </p>
              <div class="date">
                <i
                  class="fa-solid fa-calendar-days"
                  style="font-size: x-large; color: #346751"
                ></i>
                <p>30 June 2023</p>
                <i
                  class="fa-regular fa-clock"
                  style="font-size: x-large; color: #346751"
                ></i>
                <p>2days</p>
                <i
                  class="fa-solid fa-sack-dollar"
                  style="font-size: x-large; color: #346751"
                ></i>
                <p>$150</p>
              </div>
            </div>
            <div class="card_bottom">
              <a href="index03"
                ><i class="fa-solid fa-arrow-right"></i
              ></a>
            </div>
          </div>

          <div class="card swiper-slide">
            <div class="img_info">
              <div class="card__image">
                <img src="/resources/assets_wanderMate/img/profile_pic02.webp" alt="card image" />
              </div>
              <p class="card__title">
                <strong>Tony</strong><br />
                (Seoul,Korea)<br />age:31 <br />
                Language:
              </p>
              <div class="star_box">
                <i
                  class="fa-solid fa-star"
                  style="font-size: x-large; color: yellow"
                ></i>
                4.9 <br />

                <i
                  class="fa-solid fa-user-group"
                  style="font-size: x-large"
                ></i>
                &gt; 2
              </div>
            </div>

            <div class="card__content">
              <h4>About plan:</h4>
              <p class="card__text">
                Hi! I am looking for someone who want to go to art gallery with
                me!
              </p>
              <div class="date">
                <i
                  class="fa-solid fa-calendar-days"
                  style="font-size: x-large; color: #346751"
                ></i>
                <p>30 June 2023</p>
                <i
                  class="fa-regular fa-clock"
                  style="font-size: x-large; color: #346751"
                ></i>
                <p>2days</p>
                <i
                  class="fa-solid fa-sack-dollar"
                  style="font-size: x-large; color: #346751"
                ></i>
                <p>$150</p>
              </div>
            </div>
            <div class="card_bottom">
              <a href="index03"
                ><i class="fa-solid fa-arrow-right"></i
              ></a>
            </div>
          </div>
        
          <div class="card swiper-slide">
            <div class="img_info">
              <div class="card__image">
                <img src="/resources/assets_wanderMate/img/profile_pic03.webp" alt="card image" />
              </div>
              <p class="card__title">
                <strong>Kate</strong><br />
                (Seoul,Korea)<br />age:31 <br />
                Language: English
              </p>
              <div class="star_box">
                <i
                  class="fa-solid fa-star"
                  style="font-size: x-large; color: yellow"
                ></i>
                4.9 <br />

                <i
                  class="fa-solid fa-user-group"
                  style="font-size: x-large"
                ></i>
                &gt; 4
              </div>
            </div>

            <div class="card__content">
              <h4>About plan:</h4>
              <p class="card__text">
                I am planning to go to the han-river for picnic!! It would be better have some friends
              </p>
              <div class="date">
                <i
                  class="fa-solid fa-calendar-days"
                  style="font-size: x-large; color: #346751"
                ></i>
                <p>15 July 2023</p>
                <i
                  class="fa-regular fa-clock"
                  style="font-size: x-large; color: #346751"
                ></i>
                <p>2days</p>
                <i
                  class="fa-solid fa-sack-dollar"
                  style="font-size: x-large; color: #346751"
                ></i>
                <p>$150</p>
              </div>
            </div>
            <div class="card_bottom">
              <a href="findepostview"
                ><i class="fa-solid fa-arrow-right"></i
              ></a>
            </div>
          </div>

          <div class="card">
            <div class="img_info">
              <div class="card__image">
                <img src="/resources/assets_wanderMate/img/profile_pic04.webp" alt="card image" />
              </div>
              <p class="card__title">
                <strong>Anna</strong><br />
                (Seoul,Korea)<br />age:31 <br />
                Language:
              </p>
              <div class="star_box">
                <i
                  class="fa-solid fa-star"
                  style="font-size: x-large; color: yellow"
                ></i>
                4.9 <br />

                <i
                  class="fa-solid fa-user-group"
                  style="font-size: x-large"
                ></i>
                &gt; 2
              </div>
            </div>

            <div class="card__content">
              <h4>About plan:</h4>
              <p class="card__text">
                Hi! I am looking for someone who want to go to art gallery with
                me!
              </p>
              <div class="date">
                <i
                  class="fa-solid fa-calendar-days"
                  style="font-size: x-large; color: #346751"
                ></i>
                <p>30 June 2023</p>
                <i
                  class="fa-regular fa-clock"
                  style="font-size: x-large; color: #346751"
                ></i>
                <p>2days</p>
                <i
                  class="fa-solid fa-sack-dollar"
                  style="font-size: x-large; color: #346751"
                ></i>
                <p>$150</p>
              </div>
            </div>
            <div class="card_bottom">
              <a href="findepostview"
                ><i class="fa-solid fa-arrow-right"></i
              ></a>
            </div>
          </div>

          <div class="card">
            <div class="img_info">
              <div class="card__image">
                <img src="/resources/assets_wanderMate/img/profile_pic05.webp" alt="card image" />
              </div>
              <p class="card__title">
                <strong>Jane</strong><br />
                (Seoul,Korea)<br />age:21 <br />
                Language:Engish
              </p>
              <div class="star_box">
                <i
                  class="fa-solid fa-star"
                  style="font-size: x-large; color: yellow"
                ></i>
                4.9 <br />

                <i
                  class="fa-solid fa-user-group"
                  style="font-size: x-large"
                ></i>
                &gt; 3
              </div>
            </div>

            <div class="card__content">
              <h4>About plan:</h4>
              <p class="card__text">
                Hi! I am looking for someone who want to go to art gallery with
                me!
              </p>
              <div class="date">
                <i
                  class="fa-solid fa-calendar-days"
                  style="font-size: x-large; color: #346751"
                ></i>
                <p>7 June 2023</p>
                <i
                  class="fa-regular fa-clock"
                  style="font-size: x-large; color: #346751"
                ></i>
                <p>1day</p>
                <i
                  class="fa-solid fa-sack-dollar"
                  style="font-size: x-large; color: #346751"
                ></i>
                <p>$80</p>
              </div>
            </div>
            <div class="card_bottom">
              <a href="index03"
                ><i class="fa-solid fa-arrow-right"></i
              ></a>
            </div>
          </div>

          <div class="card">
            <div class="img_info">
              <div class="card__image">
                <img src="/resources/assets_wanderMate/img/profile_pic06.webp" alt="card image" />
              </div>
              <p class="card__title">
                <strong>Kelly</strong><br />
                (Seoul,Korea)<br />age:26 <br />
                Language:English
              </p>
              <div class="star_box">
                <i
                  class="fa-solid fa-star"
                  style="font-size: x-large; color: yellow"
                ></i>
                4.9 <br />

                <i
                  class="fa-solid fa-user-group"
                  style="font-size: x-large"
                ></i>
                &gt; 2
              </div>
            </div>

            <div class="card__content">
              <h4>About plan:</h4>
              <p class="card__text">
                Hi! I am looking for someone who want to go to art gallery with
                me!
              </p>
              <div class="date">
                <i
                  class="fa-solid fa-calendar-days"
                  style="font-size: x-large; color: #346751"
                ></i>
                <p>12 June 2023</p>
                <i
                  class="fa-regular fa-clock"
                  style="font-size: x-large; color: #346751"
                ></i>
                <p>1day</p>
                <i
                  class="fa-solid fa-sack-dollar"
                  style="font-size: x-large; color: #346751"
                ></i>
                <p>$50</p>
              </div>
            </div>
            <div class="card_bottom">
              <a href="findepostview"
                ><i class="fa-solid fa-arrow-right"></i
              ></a>
            </div>
          </div>
        </div>
        
      </div>

          <div class="pagination">
            <a href="#">&laquo;</a>
            <a href="#">1</a>
            <a class="active" href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">6</a>
            <a href="#">&raquo;</a>
          </div>

     <%@include file="../../include/includeWanderFooter.jsp"%>
    </div>
    <script>
      function search() {
        var destination = document.getElementById('destination-input').value;
        var genre = document.getElementById('genre-input').value;
        var calendar = document.getElementById('calendar-input').value;
        // 검색 로직을 이곳에 작성하세요.
        // destination, genre, calendar 변수에는 사용자가 선택한 값이 들어 있습니다.
      }
    </script>
  </body>
</html>
