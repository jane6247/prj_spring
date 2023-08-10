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
    <title>travel mate_05</title>
    <link rel="stylesheet" href="/resources/assets_wanderMate/css/style_05.css" />
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
          <a href="mainview"><img src="/resources/assets_wanderMate/img/main-logo.jpeg" /></a>
        </div>

        <ul class="menu">
          <li>
            <a href="#"
              ><div class="dropdown">
                <span>About us <i class="fa-solid fa-chevron-down"></i></span>
                <div class="dropdown-content">
                  <a class="underline" href=""><p>Hello World!</p></a>
                </div>
              </div></a
            >
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
            <a href="#"
              ><div class="dropdown">
                <div class="nav_img">
                  <img src="/resources/assets_wanderMate/img/profile_pic03.webp" alt="" />
                </div>
                <div class="dropdown-content">
                  <a class="hoverable" href="account" >
                   <p>Hello World!</p></a>
                  
                  <a class="hoverable" href=""><p>Hello World!</p></a>
                  <a class="hoverable" href=""><p>Hello World!</p></a>
                </div>
              </div></a
            >
          </li>
        </ul>
      </header>

      <ul class="breadcrumb">
        <li><a href="mainview">Home</a></li>
        <li><a href="findhostview">Find Host</a></li>
        <li><a href="findepostview">Card of host</a></li>
        <li>Jessica</li>
      </ul>


 	
      <section class="main_content">
        <div class="main_wrap">
          <div class="info_text">
            <div class="info_box infopic">
              <div class="card__image">
                <img src="/resources/assets_wanderMate/img/profile_pic02.webp" />
              </div>
              <div class="name_text">
                <h3>Jessica <c:out value="${item.seq }"/></h3>
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
              <p class="gone">
             <c:out value="${item.aboutMe }"/>
              </p>
              <textarea id="new_show" class="hidden"></textarea>
            </div>
            <div class="info_box info_about">
              <h4>About plane:</h4>
              <p class="gone">
               <c:out value="${item.aboutPlan }"/>
              </p>
            </div>
            <div class="info_box info_note">
              <h4>Note:</h4>
              <p class="gone">
               <c:out value="${item.note }"/>
              </p>
            </div>
            <div class="info_box info_lang x">
              <h4>Language that I know:</h4>
              <p class="gone"><c:out value="${item.language}"/></p>
            </div>
          </div>

          <div class="main_picture_wrap">
            <div class="slider">
              <img src="/resources/assets_wanderMate/img/effeltowr.jpeg" alt="" />
              <img src="/resources/assets_wanderMate/img/china.jpeg" alt="" />
            </div>
            <div class="send_message_wrap">
              <button class="edit_txt">
                <p>Edit</p>
              </button>
              <button class="edit_txt edit_btn">
                <p>Deactivate</p>
              </button>
              <button type="button" class="edit_txt">
                <p>Remove ad</p>
              </button>
            </div>
          </div>
        </div>
      </section>


     <%@include file="../../include/includeWanderFooter.jsp"%>
    </div>

 
	 <script>
      $(document).ready(function () {
        $('.slider').bxSlider();
      });

      const edit_txt = document.querySelector('edit_txt');
      const gone = document.querySelector('gone');
      const new_show = document.getElementById('new_show');

      edit_txt.addEventListener('click', () => {
        gone.classList.toggle('hidden');
        new_show.classList.toggle('hidden');
      });
    </script>
  </body>
</html>
