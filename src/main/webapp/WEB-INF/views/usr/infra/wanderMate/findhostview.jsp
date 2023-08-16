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
  
  <jsp:useBean id="CodeServiceImpl" class="com.mycompany.app.infra.code.CodeServiceImpl"/>
   
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
              </div>
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
      
       <form name="formList" method="post">
      <section>
        <div class="search-container">
            <select class="search-input" id="destination-input"  >
	            <option value="" disabled selected>Direction</option>
	            <option value="서울">Seoul</option>
	            <option value="도쿄">Vancouver</option>
	            <option value="파리">Paris</option>
          </select>
          <select class="search-input" id="genre-input" >
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
     
      </section>
      </form>
      <div class="hostThat"><h3>Host that are popular now:</h3></div>

      <div class="swiper-wrapper">
       
       
       <form name="formList" method="post">
              	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
				<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
        <div class="slide_box">
 
 
    <c:set var="listFindRegion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
    <c:set var="listFindType" value="${CodeServiceImpl.selectListCachedCode('3')}"/> 
  
<c:forEach items="${card}" var="list" varStatus="status">
          <div class="card swiper-slide">
            <div class="img_info">
              <div class="card__image">
                <img src="/resources/assets_wanderMate/img/profile_pic02.webp" alt="card image" />
              </div>
              <p class="card__title">
                <strong>Darae</strong><br />
                (
                
                 <c:forEach items="${listFindRegion}" var="listRegion" varStatus="statusRegion">
						<c:if test="${list.region_seq eq listRegion.seq}">
							<c:out value="${listRegion.name }"/>
						</c:if> 					
				</c:forEach>
                
                /
                <c:forEach items="${listFindType}" var="listType" varStatus="statusType">
					<c:if test="${list.type_seq eq listType.seq}">
						<c:out value="${listType.name }"/>
					</c:if> 					
				</c:forEach>							
								 )<br />age:31 <br />
                Language: <c:out value="${list.language }"/>
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
                &gt; <c:out value="${list.maxPeople }"/>
              </div>
            </div>

            <div class="card__content">
              <h4>About plan:</h4> 
              <p class="card__text">
            <c:choose>
              <c:when test="${fn:length(list.aboutPlan) gt 70}">
                 <c:out value="${fn:substring(list.aboutPlan, 0, 69)}"/> ........
        	  </c:when>
             <c:otherwise>
               <c:out value="${list.aboutPlan}"/>
             </c:otherwise>
            </c:choose>

                
              </p>
              <div class="date">
                <i
                  class="fa-solid fa-calendar-days"
                  style="font-size: x-large; color: #346751"
                ></i>
                <p><c:out value="${list.date }"/></p>
                <i
                  class="fa-regular fa-clock"
                  style="font-size: x-large; color: #346751"
                ></i>
                <p><c:out value="${list.days }"/>days</p>
                <i
                  class="fa-solid fa-sack-dollar"
                  style="font-size: x-large; color: #346751"
                ></i>
                <p>$<c:out value="${list.budget }"/></p>
              </div>
            </div>
            <div class="card_bottom">
              <a href="/myposting?seq=<c:out value="${list.seq }"/>">
                <i class="fa-solid fa-arrow-right"></i
              ></a>
            </div>
          </div>
</c:forEach>
</form>

    </div>
   </div>
</div>      



<div class="container-fluid px-0 mt-2">
    <div class="row">
        <div class="col">
            <!-- <ul class="pagination pagination-sm justify-content-center mb-0"> -->
            <ul class="pagination justify-content-center mb-0">
                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-left"></i></a></li> -->
<c:if test="${vo.startPage gt vo.pageNumToShow}">
                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.startPage - 1})"><i class="fa-solid fa-angle-left"></i></a></li>
</c:if>
<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
	<c:choose>
		<c:when test="${i.index eq vo.thisPage}">
                <li class="page-item active"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
		</c:when>
		<c:otherwise>             
                <li class="page-item"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
		</c:otherwise>
	</c:choose>
</c:forEach>                
<c:if test="${vo.endPage ne vo.totalPages}">                
                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.endPage + 1})"><i class="fa-solid fa-angle-right"></i></a></li>
</c:if>
                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li> -->
            </ul>
        </div>
    </div>
</div>

     <%@include file="../../include/includeWanderFooter.jsp"%>
    </div>
    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	 <script type="text/javascript">
    
    
    </script>
  </body>
</html>
