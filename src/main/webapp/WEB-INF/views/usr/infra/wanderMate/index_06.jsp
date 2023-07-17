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
    <title>travel mate_06_profile</title>
    <link rel="stylesheet" href="css/style_06.css" />
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
          <a href="index.html"><img src="img/main-logo.jpeg" /></a>
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
          <li><a class="underline" href="index_04.html">Host</a></li>
          <li><a class="underline" href="index_02.html">Find Host</a></li>
        </ul>
        <ul class="Profile">
          <li>
            <i class="fa-regular fa-bell" style="font-size: xx-large"></i>
          </li>
          <li>Jessica</li>
          <li>
            
             <div class="dropdown">
                <div class="nav_img">
                  <img src="img/profile_pic06.webp" />
                </div>
                <div class="dropdown-content">

                  <a class="hoverable" href="index_06.html">
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

      <section class="account_wrap">
        <div class="account_contain">
        <div class="account_top">
            <h1 style="font-size: xx-large;">Account</h1>
            <p>Enrico Cole, ciseco@gmail.com · Los Angeles, CA</p>
        </div>
        <div class="input_contain">
        <div class="acco_img">
                <img class="image" src="img/profile_pic06.webp" alt="">
                <div class="middle">
                <span class="material-symbols-outlined">
                    add_photo_alternate
                    </span> <p class="text" style="font-size: 15px;">Change Image</p></div>
        </div>
        <div class="account_input">
            <p>Full name</p>
            <input class="personal_info" type="text">
            <p>Email</p>
            <input class="personal_info" type="text">
            <p>Date of brith</p>
            <input class="personal_info" type="date">
            <p>Adress</p>
            <input class="personal_info" type="text">
            <p>Gender</p>
            <input class="personal_info" type="text">
            <p>Phone Number</p>
            <input class="personal_info" type="text">
            <p>About you</p>
            <textarea class="about_you"></textarea>
            <button class="update_btn" type="button">Update account</button>
            

        </div>
    </div>
    </div>
      </section>
     
     <%@include file="../../include/includeWanderFooter.jsp"%>
    </div>
 
    
  
  </body>
</html>
