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
    <link rel="stylesheet" href="/resources/assets_wanderMate/css/style_04.css" />

    <!-- fontawesome -->
    <script
      src="https://kit.fontawesome.com/f0e73cfa04.js"
      crossorigin="anonymous"
    ></script>
    <!-- <script src="js/travel.js"></script> -->
    
    <!-- datepicker -->
    <link href="https://fonts.googleapis.com/css?family=Coda|Open+Sans" rel="stylesheet">


  </head>
  <body>
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
        <div class="where_text">
          <span>Publication of an ad</span>
        </div>
  
        <ul class="breadcrumb">
          <li><a href="mainview">Home</a></li>
          <li><a href="findhostview">Host</a></li>
          <li>Publication of an ad</li>
          
        </ul>
  
  
   <form name="ad" method="post">   
       <main class="main_input"> 
        <div class="input_wrap">
         <section class="input_left">
            <div>
              <span>Adress:</span>
            </div>
            <div>
              <input type="text" name="shKeyword" class="textarea_address" >
            </div>
            <div>
              <span>Maximun number of people:</span>
            </div>
            <div>
              <input type="text" name="shKeyword" class="textarea_address" >
            </div>
            <div>
              <span>About me:</span>
            </div>
            <div>
             <input type="text" name="aboutPlan" class="textarea_plan">
            </div>
            <div>
              <span>About plan:</span>
            </div>
            <div>         
              <input type="text" name="aboutMe" class="textarea_you">
            </div>
            <div>
              <span>Note:</span>
            </div>
            <div>          
              <input type="text" name="note" class="textarea_you">
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
	            <span>Language that I know:</span>
	          </div>
	          <div>        
	            <input type="text" name="language" class="textarea_additional">
	          </div>
	          <div>
	            <span>Budget:</span>
	          </div>
	          <div>        
	            <input type="text" name="budget" class="textarea_additional">
	          </div>
	          <div>
	            <span>Date:</span>
	          </div>
	          <div>        
	            <input type="text" name="date" class="textarea_additional">
	          </div>
	          <div>
	            <span>Days:</span>
	          </div>
	          <div>        
	            <input type="text" name="days" class="textarea_additional">
	          </div>
	          <button id="open" class="" type="button"><p>Post an ad</p></button>    
          
       	 </section>
       </main>
      </form> 
       
       <!--modal show up -->
       <div class="modal-container" id="modal_container">
        <div class="modal">
          <button id="close"><i class="fa-solid fa-xmark"></i></button>
          <h2>Congratulations!</h2>
          <p>Your ad has been successfully published. 😊</p>
          <button type="button" id="close_ad">View the ad</button>
          <div class="modal-img"><img src="/resources/assets_wanderMate/img/friendship.jpg" alt=""></div>
        </div>
      </div>

    
       <%@include file="../../include/includeWanderFooter.jsp"%>
      </div>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
      
      
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
        
     // 인서트버튼 클릭이벤트
		$("#close_ad").on("click", function(){
// 			if (validationInst() == false) return false;
			$("form[name=ad]").attr("action","/beingHostedListInst").submit();
		});

dhoehtlfkrdmf wlrmaghwksdmfgkrh
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
