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
  <jsp:useBean id="CodeServiceImpl" class="com.mycompany.app.infra.code.CodeServiceImpl"/>
  
  
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
              
             
                <h3>Jessica </h3>
                <br />
                <p>Age:25</p>
                  
                  <c:forEach items="${card}" var="list" varStatus="status">
                  <c:set var="listFindRegion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
                  <c:set var="listFindType" value="${CodeServiceImpl.selectListCachedCode('3')}"/> 
                  
                  <p>
                  
                  
                  <c:forEach items="${listFindRegion}" var="listRegion" varStatus="statusRegion">
						<c:if test="${list.region_seq eq listRegion.seq}">
							<c:out value="${listRegion.name}"/>
						</c:if> 					
				  </c:forEach>
				/
					<c:forEach items="${listFindType}" var="listType" varStatus="statusType">
						<c:if test="${list.type_seq eq listType.seq}">
							<c:out value="${listType.name }"/>
						</c:if> 					
					</c:forEach>
						
                </p>
                </c:forEach>
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
              <h4>About me:<c:out value="${item.seq }"/></h4>
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
              <button class="send_txt">
               <span
                  class="material-symbols-outlined"
                  style="color: #fff; font-size: 30px"
                >
                  person_add
                </span>
                <p>Request stay</p>
              </button>
              <button class="send_txt send_btn"">
               <i
                  class="fa-regular fa-paper-plane"
                  style="color: #fff; font-size: 30px"
                ></i>
                <p>Send Message</p>
              </button>
              <button type="button" class="send_txt">
                <p>Remove ad</p>
              </button>
          </div>
        </div>
      </section>
      
      <!--START comment list  -->
<!--    <div class="col-md-12 tour-wrap"> -->
<!--     		<div class="pt-5"> -->
<!--               <h3 class="mb-5" style="border-bottom: 1px solid #f2f2f2;">3 Comments</h3> -->
<!--               <ul class="comment-list"> -->
<!--                 <li class="comment"> -->
<!--                   <div class="vcard bio"> -->
<!--                     <img src="images/person_1.jpg" alt="Image placeholder"> -->
<!--                   </div> -->
<!--                   <div class="comment-body"> -->
<!--                     <h3>John Doe</h3> -->
<!--                     <div class="meta">October 03, 2018 at 2:21pm</div> -->
<!--                     <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus,</p> -->
<!--                     <p><a href="#" class="reply">Reply</a></p> -->
<!--                   </div> -->
<!--                 </li> -->

<!--                 <li class="comment"> -->
<!--                   <div class="vcard bio"> -->
<!--                     <img src="images/person_1.jpg" alt="Image placeholder"> -->
<!--                   </div> -->
<!--                   <div class="comment-body"> -->
<!--                     <h3>John Doe</h3> -->
<!--                     <div class="meta">October 03, 2018 at 2:21pm</div> -->
<!--                     <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus,</p> -->
<!--                     <p><a href="#" class="reply">Reply</a></p> -->
<!--                   </div> -->

<!--                   <ul class="children"> -->
<!--                     <li class="comment"> -->
<!--                       <div class="vcard bio"> -->
<!--                         <img src="images/person_1.jpg" alt="Image placeholder"> -->
<!--                       </div> -->
<!--                       <div class="comment-body"> -->
<!--                         <h3>John Doe</h3> -->
<!--                         <div class="meta">October 03, 2018 at 2:21pm</div> -->
<!--                         <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus,</p> -->
<!--                         <p><a href="#" class="reply">Reply</a></p> -->
<!--                       </div> -->


<!--                       <ul class="children"> -->
<!--                         <li class="comment"> -->
<!--                           <div class="vcard bio"> -->
<!--                             <img src="images/person_1.jpg" alt="Image placeholder"> -->
<!--                           </div> -->
<!--                           <div class="comment-body"> -->
<!--                             <h3>John Doe</h3> -->
<!--                             <div class="meta">October 03, 2018 at 2:21pm</div> -->
<!--                             <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus,</p> -->
<!--                             <p><a href="#" class="reply">Reply</a></p> -->
<!--                           </div> -->

<!--                             <ul class="children"> -->
<!--                               <li class="comment"> -->
<!--                                 <div class="vcard bio"> -->
<!--                                   <img src="images/person_1.jpg" alt="Image placeholder"> -->
<!--                                 </div> -->
<!--                                 <div class="comment-body"> -->
<!--                                   <h3>John Doe</h3> -->
<!--                                   <div class="meta">October 03, 2018 at 2:21pm</div> -->
<!--                                   <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus,</p> -->
<!--                                   <p><a href="#" class="reply">Reply</a></p> -->
<!--                                 </div> -->
<!--                               </li> -->
<!--                             </ul> -->
<!--                         </li> -->
<!--                       </ul> -->
<!--                     </li> -->
<!--                   </ul> -->
<!--                 </li> -->

<!--                 <li class="comment"> -->
<!--                   <div class="vcard bio"> -->
<!--                     <img src="images/person_1.jpg" alt="Image placeholder"> -->
<!--                   </div> -->
<!--                   <div class="comment-body"> -->
<!--                     <h3>John Doe</h3> -->
<!--                     <div class="meta">October 03, 2018 at 2:21pm</div> -->
<!--                     <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus,</p> -->
<!--                     <p><a href="#" class="reply">Reply</a></p> -->
<!--                   </div> -->
<!--                 </li> -->
<!--               </ul>END comment-list -->
              
      <form name="comment" method="post">
      <section class="comment_wrap">
        <h1>Leave a comment</h1>
        <div class="comment_box">
          <p>Name *</p>
          <input type="text" />
          <p>Email *</p>
          <input type="text" />
          <p>Message *</p>
          <textarea name="" id="" cols="30" rows="10"></textarea>
          <button class="post_btn" type="button">Post Comment</button>
        </div>
      </section>
	</form>

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
      
      // 인서트버튼 클릭이벤트
		$(".post_btn").on("click", function(){
			
			$("form[name=comment]").attr("action","/commentList").submit();
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
