'<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
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
    <title>travel mate_03</title>
    <link rel="stylesheet" href="/resources/assets_wanderMate/css/style_03.css" />
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
    <!-- bx slider -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
  </head>

  <body>
    <div class="wrap">
      <header class="header">
        <div class="logo">
          <a href="index01"><img src="/resources/assets_wanderMate/img/main-logo.jpeg" /></a>
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
          <li><a class="underline" href="index04">Host</a></li>
          <li><a class="underline" href="index02">Find Host</a></li>
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

                  <a class="hoverable" href="index06">
                    <span
                      class="material-symbols-outlined"
                      style="font-size: x-large">
                      edit_note
                      <p>Edit page</p></span></a>
                    
                 

                  <a class="hoverable" href=""><p>Hello World!</p></a>
                  <a class="hoverable" href=""
                    ><span class="material-symbols-outlined"> logout<p>Log out</p> </span>
                    </a
                  >
                </div>
              </div></a
            >
          </li>
        </ul>
      </header>
      <div class="breadcrumb_wrap">
      <ul class="breadcrumb">
        <li><a href="index01">Home</a></li>
        <li><a href="index02">Find Host</a></li>
        <li><a href="index03">Card of host</a></li>
        <li>Jessica</li>
      </ul>
</div>
      <section class="main_content">
        <div class="main_wrap">
          <div class="info_text">
            <div class="info_box infopic">
              <div class="card__image">
                <img src="/resources/assets_wanderMate/img/profile_pic02.webp" />
              </div>
              <div class="name_text">
                <h3>Jessica<c:out value="${item.seq }"/></h3>
                <br />
                <p>
                  Age: 28<br />
                  England,London
                </p>
              </div>
              <div class="star_box" style="font-weight: 400; font-size: 15px">
                <div>
                  <i
                    class="fa-solid fa-star"
                    style="font-size: x-large; color: yellow"
                  ></i
                  >4.9
                </div>
                <div>
                  <i
                    class="fa-regular fa-comment"
                    style="font-size: x-large"
                  ></i
                  >26
                </div>
                <div>
                  <i
                    class="fa-solid fa-user-group"
                    style="font-size: x-large"
                  ></i>
                  &gt;2
                </div>
              </div>
            </div>
            <div class="info_box">
              <h4>About me:</h4>
              <p>
                <c:out value="${item.aboutMe }"/>
              </p>
            </div>
            <div class="info_box info_about">
              <h4>About plane:</h4>
              <p>
               <c:out value="${item.aboutPlan }"/>
              </p>
            </div>
            <div class="info_box info_note">
              <h4>Note:</h4>
              <p>
                <c:out value="${item.note }"/>
              </p>
            </div>
            <div class="info_box info_lang">
              <h4>Language that I know:</h4>
              <p><c:out value="${item.language}"/></p>
            </div>
          </div>

          <div class="main_picture_wrap">
            <div class="slider">
              <img src="/resources/assets_wanderMate/img/effeltowr.jpeg" alt="" />
              <img src="/resources/assets_wanderMate/img/china.jpeg" alt="" />
            </div>
            <div class="send_message_wrap">
              <button class="send_txt">
                <span
                  class="material-symbols-outlined"
                  style="color: #fff; font-size: 30px"
                >
                  person_add
                </span>
                <p>Request stay</p>
              </button>
              <button class="send_txt send_btn">
                <i
                  class="fa-regular fa-paper-plane"
                  style="color: #fff; font-size: 30px"
                ></i>
                <p>Send Message</p>
              </button>
              <button type="button" class="send_txt"></button>
            </div>
          </div>
        </div>
      </section>

      <section class="comment_wrap">
        <h1>Leave a comment</h1>
        <div class="comment_box">
          <p>Name *</p>
          <input type="text" />
          <p>Email *</p>
          <input type="text" />
          <p>Message</p>
          <textarea name="" id="" cols="30" rows="10"></textarea>
          <button class="post_btn" type="button">Post Comment</button>
        </div>
      </section>

      <%@include file="../../include/includeWanderFooter.jsp"%>
    </div>

    <script>
      $(document).ready(function () {
        $('.slider').bxSlider();
      });

      const send = document.querySelector('.send_btn');
      const comment_wrap = document.querySelector('.comment_wrap');

      send.addEventListener('click', () => {
        comment_wrap.style.display = 'block';
      });
    </script>
  </body>
</html>
