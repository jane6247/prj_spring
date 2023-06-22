<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>UI2</title>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" 
  integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="../../resources/css/ui_02.css">
  <!-- í°í¸ì´ì¸ -->
  <script src="https://kit.fontawesome.com/f0e73cfa04.js" crossorigin="anonymous"></script>
</head>

<body>
<form  class="needs-validation" novalidate>
  <div id="wrap">

    <header class="header">
      <h1>logo</h1>
      <h2>ABC Management System</h2>
      <div id="profile">
        <i class="fa-solid fa-user"></i>
        <p>darae kim<br>
          Adiministrator</p>
      </div>
      <select class="form-select" aria-label="Default select example">
        <option selected>ì¸ì´</option>
        <option value="1">One</option>
        <option value="2">Two</option>
        <option value="3">Three</option>
      </select>
    </header>

    <nav class="nav">
      <ul>
        <li>Navbar</li>
        <li>íìê´ë¦¬</li>
        <li>ìë¹ì¤ê´ë¦¬</li>
        <li>ì¬ì´í¸ê´ë¦¬</li>
        <li>ë¡ê·¸ê´ë¦¬</li>
        <li>ìì¤íê´ë¦¬</li>
        <li>ìì¤íê´ë¦¬</li>
      </ul>
    </nav>

    <section id="section">
      <div class="side_menu">
        <ul>
          <li>&gt; Home</li>
          <li>&gt; Dashboard</li>
          <li>&gt; Orders</li>
          <hr>
          <li>&gt; Account</li>
        </ul>
      </div>

      <div class="content_wrapper">

        <div class="content_left">
          <h2>êµ­ê°ì½ëê´ë¦¬</h2>
          <div class="input_box">
            <label for="validationCustom01" class="form-label"><span class="text">Seq</span></label>
            <input class="text_left" type="text" disabled placeholder="ìëìì±" class="form-control" value="Mark" disabled>
           </div>
		     
          <div class="input_box">
            <span class="text">êµ­ê°ì´ë¦</span>
            <input class="text_left" type="text" class="check" name="test1" value="" >
          </div>
          <div class="input_box">
            <span class="text">êµ­ê° ì´ë¦(íê¸)</span>
            <input class="text_left" type="text">
          </div>
          <div class="input_box">
            <span class="text">êµ­ê° ì½ë(2ìë¦¬)</span>
            <input class="text_left" type="text" placeholder="ìë¬¸ëìë¬¸ì" >
          </div>
          <div class="input_box">
            <span>ì¬ì©ì¬ë¶</span>
            <select class="text_left" class="form-select" aria-label="Default select example">
              <option selected>Y</option>
              <option value="1">One</option>
              <option value="2">Two</option>
              <option value="3">Three</option>
            </select>
          </div>
          <div class="input_box">
            <span class="text">ì¤ëª</span>
            <input class="text_left" class="text_left_large" type="text">

          </div>
          <button type="button"><i id="icon_bars" class="fa-solid fa-bars"></i></button>
          <button class="btn btn-primary" type="submit" id="submit">Submit</button>
        </div>

        <div class="content_right">
          <div class="content_right_box">
            <div class="right_box_01">
              <span class="text">êµ­ê° ì´ë¦(ìë¬¸)</span>
              <input class="text_right" type="text" placeholder="ìë¬¸ëìë¬¸ì">
            </div>
            <div class="right_box">
              <span class="text">êµ­ê° ì½ë(3ìë¦¬)</span>
              <input class="text_right" type="text" placeholder="ìëìë¬¸ì" required>
            </div>
            <div class="right_box">
              <span>ìì</span>
              <input class="text_right" type="text" placeholder="ì«ì(0~255)" required>
            </div>
          </div>
          <button type="button"><a href="ui_01.html"><i id="icon" class="fa-solid fa-bookmark"></i></a></button>
        </div>
      </div>

  </div>
  </section>
  <footer id="footer">
    <div id="footer_wrap">
      <p>(ì£¼)ë§ì´ì»´í¼ë| ëí ì¥ìì |ì¬ììë±ë¡ë²í¸ 111-11-111111 | ìì¸í¹ë³ì ì±ëêµ¬ ê´ëë£¨ë¡ 123ê¸¸ 3ì¸µ</p><br>
      <p>Copyright 2014. Mycompany lnc. all right reserved</p>
    </div>
  </footer>

  </div>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<script>

//ì í¨ì±ê²ì¬
/* $(function(){
	   
    $('#submit').on('change', function(){
       
        var scriptTag2 = /[~^&()|<>?]/; 
        var regExp_tel1 = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$/;
        var checkText = "";
        var thisVal = $(this).val();
               
        switch($(this).attr("name")){
            case "test1":
                if(thisVal.length == 0){
                    checkText = "ì·¨ë¯¸ë¥¼ ìë ¥í´ì£¼ì¸ì.";
                }else if(scriptTag2.test(thisVal) == true){
                    checkText = "ì¤í¬ë¦½í¸ íê·¸ë ë¤ì´ê° ì ììµëë¤.";
                }else if(Space_Check.test(thisVal) == true){
                    checkText = "ê³µë°±ì´ ë¤ì´ê° ì ììµëë¤.";
                }else if (thisVal.length > 10){
                    checkText = "10ê¸ì ì´ë´ë¡ ìë ¥í´ì£¼ì¸ì.";
                }
            break;
            case "test2":
                if(thisVal.length == 0){
                    checkText = "ì°ë½ì²ë¥¼ ìë ¥í´ì£¼ì¸ì.";
                }else if(thisVal.length != 0 && regExp_tel1.test(thisVal) == false ){
                    checkText = "010-1234-5678 íìì¼ë¡ ìë ¥í´ì£¼ì¸ì.";
                }
            break;
            case "test3":
                if(thisVal == 'ì í'){
                    checkText = "ì ê³µì ì íí´ì£¼ì¸ì.";
                }
            break;
        
        
        if(checkText != ""){
            $(this).siblings("p").html(checkText);
            $(this).siblings("p").addClass("vali");
            $(this).siblings("p").slideDown();
        } else {
            $(this).siblings("p").slideUp(function(){
                $(this).removeClass("vali");
            });
        }
    };
     */


</script>
</body>

</html>