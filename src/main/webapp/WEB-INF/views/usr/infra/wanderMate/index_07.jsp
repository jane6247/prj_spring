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
    <title>travel mate_07_contact</title>
    <link rel="stylesheet" href="css/style_07.css" />
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
                  <img src="img/profile_pic03.webp" alt="" />
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
                    </a>
                </div>
              </div></a>
          </li>
        </ul>
      </header>

      <div class="where_text">
        <span>Contact Us</span>
      </div>

      <ul class="breadcrumb">
        <li><a href="index.html">Home</a></li>
        <li><a href="index_02.html">Find Host</a></li>
        <li><a href="index_03.html">Card of host</a></li>
        <li>Jessica</li>
      </ul>

      
    <div class="contact_wrap">
      
      <div class="contact_info">
       
        <div class="map"> 
            <div class="com_info">
            <h1>For any inquiries or <br>feedback, Our team is <br>here to assist you.</h1>
                <span>Info@example.com<br>
                
                +0 12 457 4578<br>
            
                Visit store: Chicago HQ Estica Cop. Macomb, MI 48042</span>
            </div>
            <div class="map_pic">

            </div>
         </div>
        <div class="info_input">
          
          <input class="input input1" type="text" placeholder="Your name">
          <input class="input" type="text" placeholder="Your email">
          <input class="input" type="text" placeholder="Your subject">
          <textarea class="input_message" placeholder="Message"></textarea>
          
          <button class="submit_btn" type="button">Submit</button>
        </div>
      </div>
    </div>

      <footer class="footer">
        <div class="footer_text logo_02">
          <img src="img/footer.jpeg" />
        </div>

        <ul class="footer_text about">
          <li>About us</li>
          <li>Find host</li>
          <li>host</li>
          <li>Profile</li>
        </ul>
        <ul class="footer_text faq">
          <li><a href="#">FAQ</a></li>
          <li><a href="#">Verification</a></li>
          <li><a href="#">Safety</a></li>
          <li><a href="#">Settings</a></li>
        </ul>
        <ul class="footer_text tel">
          <li><a href="index_07.html">Contacts</a></li>
          <li><a href="#">Support</a></li>
          <li><a href="#">+ 010 7771111</a></li>
          <li><a href="#">Help@gmail.com</a></li>
        </ul>
        <ul class="footer_text sns">
          <li>
            <a href="#"><i class="fa-brands fa-facebook"></i></a>
          </li>
          <li>
            <a href="#"><i class="fa-brands fa-instagram"></i></a>
          </li>
          <li>
            <a href="#"><i class="fa-solid fa-phone"></i></a>
          </li>
        </ul>
      </footer>
    </div>

  
  </body>
</html>
