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
    <title>travel mate_04</title>
   <!-- google icon -->
   <link
   rel="stylesheet"
   href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
 />
    <!-- css -->
    <link rel="stylesheet" href="css/style_04.css" />

    <!-- fontawesome -->
    <script
      src="https://kit.fontawesome.com/f0e73cfa04.js"
      crossorigin="anonymous"
    ></script>
    <!-- <script src="js/travel.js"></script> -->


  </head>
  <body>
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
                      </a
                    >
                  </div>
                </div></a
              >
            </li>
          </ul>
        </header>
        <div class="where_text">
          <span>Publication of an ad</span>
        </div>
  
        <ul class="breadcrumb">
          <li><a href="index.html">Home</a></li>
          <li><a href="index_02.html">Host</a></li>
          <li>Publication of an ad</li>
          
        </ul>
  
       <main class="main_input"> 
        <div class="input_wrap">
         <section class="input_left">
            <div>
              <span>Adress:</span>
            </div>
            <div>
              <textarea class="textarea_address" ></textarea>
            </div>
            <div>
              <span>Maximun number of people:</span>
            </div>
            <div>
              <textarea class="textarea_address" ></textarea>
            </div>

            <div>
              <span>About plan:</span>
            </div>
            <div>
             <textarea class="textarea_plan"></textarea>
            </div>
            <div>
              <span>About you:</span>
            </div>
            <div>         
              <textarea class="textarea_you"></textarea>
            </div>
            <div>
              <span>Travel conditions:</span>
            </div>
            <div>          
              <textarea class="textarea_you"></textarea>
            </div>
        </section>
        <section class="input_right">
         <div><span>Adding photo:</span></div>
          <div class="container image-slider">
            
          
            <input
              type="file"
              id="image-input"
              accept="image/*"
              style="display: none"
            />
            <button class="slider-button prev-button">&#8249;</button>
            <button class="slider-button next-button">&#8250;</button>
            <button class="insert-button">Img</button>
          </div>
      
        

          <div>
            <span>Additional information:(optional)</span>
          </div>
          <div>        
            <textarea class="textarea_additional"></textarea>
          </div>
          <button id="open" type="button"><p>Post an ad</p></button>    
          
         
        </section>
      

       </main>
       <div class="modal-container" id="modal_container">
        <div class="modal">
          <button id="close"><i class="fa-solid fa-xmark"></i></button>
          <h2>Congratulations!</h2>
          <p>Your ad has been successfully published. 😊</p>
          <button id="close_ad"><a href="index_03.html">View the ad</a></button>
          <div class="modal-img"><img src="img/friendship.jpg" alt=""></div>
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
            <li><a href="#">Contacts</a></li>
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
        const open = document.getElementById('open');
        const modalContainer = document.getElementById('modal_container');
        const close = document.getElementById('close');
    
        open.addEventListener('click', () => {
          modalContainer.style.display = 'block';
        });
    
        close.addEventListener('click', () => {
          modalContainer.style.display = 'none';
        });


        const prevButton = document.querySelector(".prev-button");
      const nextButton = document.querySelector(".next-button");
      const imageSlider = document.querySelector(".image-slider");
      const insertButton = document.querySelector(".insert-button");
      const imageInput = document.getElementById("image-input");

      let currentSlide = 0;

      prevButton.addEventListener("click", () => {
        currentSlide--;
        showSlide();
      });

      nextButton.addEventListener("click", () => {
        currentSlide++;
        showSlide();
      });

      insertButton.addEventListener("click", () => {
        imageInput.click();
      });

      imageInput.addEventListener("change", (event) => {
        const selectedImages = event.target.files;
        if (selectedImages && selectedImages.length > 0) {
          for (let i = 0; i < selectedImages.length; i++) {
            const selectedImage = selectedImages[i];
            const reader = new FileReader();
            reader.onload = (e) => {
              const img = document.createElement("img");
              img.src = e.target.result;
              img.classList.add("slider-item");
              imageSlider.appendChild(img);
            };
            reader.readAsDataURL(selectedImage);
          }
          showSlide();
        }
      });

      function showSlide() {
        const slides = document.querySelectorAll(".slider-item");
        if (slides.length > 0) {
          if (currentSlide >= slides.length) {
            currentSlide = 0;
          } else if (currentSlide < 0) {
            currentSlide = slides.length - 1;
          }

          slides.forEach((slide) => {
            slide.style.display = "none";
          });

          slides[currentSlide].style.display = "block";
        }
      }
      </script>
  </body>
</html>
