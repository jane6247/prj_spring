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
    <link rel="stylesheet" href="css/style_05.css" />
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
            <a href="#"
              ><div class="dropdown">
                <span>About us <i class="fa-solid fa-chevron-down"></i></span>
                <div class="dropdown-content">
                  <a class="underline" href=""><p>Hello World!</p></a>
                </div>
              </div></a
            >
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
            <a href="#"
              ><div class="dropdown">
                <div class="nav_img">
                  <img src="img/profile_pic03.webp" alt="" />
                </div>
                <div class="dropdown-content">
                  <a class="hoverable" href="index_06.html"
                    ><p>Hello World!</p></a
                  >
                  <a class="hoverable" href=""><p>Hello World!</p></a>
                  <a class="hoverable" href=""><p>Hello World!</p></a>
                </div>
              </div></a
            >
          </li>
        </ul>
      </header>

      <ul class="breadcrumb">
        <li><a href="index.html">Home</a></li>
        <li><a href="index_02.html">Find Host</a></li>
        <li><a href="index_03.html">Card of host</a></li>
        <li>Jessica</li>
      </ul>

      <section class="main_content">
        <div class="main_wrap">
          <div class="info_text">
            <div class="info_box infopic">
              <div class="card__image">
                <img src="img/profile_pic02.webp" />
              </div>
              <div class="name_text">
                <h3>Jessica</h3>
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
                The standard Lorem Ipsum passage, used since the 1500s "Lorem
                ipsum dolor sit amet, consectetur adipiscing elit, sed do
                eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                enim ad minim veniam, quis nostrud exercitation ullamco laboris
                nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                in reprehenderit in voluptate velit esse "
              </p>
              <textarea id="new_show" class="hidden"></textarea>
            </div>
            <div class="info_box info_about">
              <h4>About plane:</h4>
              <p class="gone">
                The standard Lorem Ipsum passage, used since the 1500s "Lorem
                ipsum dolor sit amet, consectetur adipiscing elit, sed do
                eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                enim ad minim veniam, quis nostrud exercitation ullamco laboris
                nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                in reprehenderit in voluptate velit esse cillum dolore eu fugiat
                nulla pariatur. Excepteur sint occaecat cupidatat non proident,
                sunt in culpa qui officia deserunt mollit anim id est laborum."
              </p>
            </div>
            <div class="info_box info_note">
              <h4>Note:</h4>
              <p class="gone">
                The standard Lorem Ipsum passage, used since the 1500s "Lorem
                ipsum dolor sit amet, consectetur adipiscing elit, sed do
                eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                enim ad minim veniam,
              </p>
            </div>
            <div class="info_box info_lang x">
              <h4>Language that I know:</h4>
              <p class="gone">flag flag</p>
            </div>
          </div>

          <div class="main_picture_wrap">
            <div class="slider">
              <img src="img/effeltowr.jpeg" alt="" />
              <img src="img/china.jpeg" alt="" />
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
