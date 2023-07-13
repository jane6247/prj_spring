<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>



<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        *,
*:before,
*:after {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: 'Open Sans', Helvetica, Arial, sans-serif;
    background: #ffffff;
}

input,
button {
    border: none;
    outline: none;
    background: none;
    font-family: 'Open Sans', Helvetica, Arial, sans-serif;
}

.tip {
    font-size: 20px;
    margin: 40px auto 50px;
    text-align: center;
}

.cont {
    border-radius: 20px;
    overflow: hidden;
    position: relative;
    width: 900px;
    height: 700px;
    margin: 0 auto 100px;
    background: #fff;
    box-shadow: -10px -10px 15px rgba(255, 255, 255, 0.3), 10px 10px 15px rgba(70, 70, 70, 0.15), inset -10px -10px 15px rgba(255, 255, 255, 0.3), inset 10px 10px 15px rgba(70, 70, 70, 0.15);
}

.form {
    position: relative;
    width: 640px;
    height: 100%;
    -webkit-transition: -webkit-transform 1.2s ease-in-out;
    transition: -webkit-transform 1.2s ease-in-out;
    transition: transform 1.2s ease-in-out;
    transition: transform 1.2s ease-in-out, -webkit-transform 1.2s ease-in-out;
    padding: 150px 30px 0;
}

.sign-up{

padding:50px 30px 0;
}
.sub-cont {
    overflow: hidden;
    position: absolute;
    left: 640px;
    top: 0;
    width: 900px;
    height: 100%;
    padding-left: 260px;
    background: #fff;
    -webkit-transition: -webkit-transform 1.2s ease-in-out;
    transition: -webkit-transform 1.2s ease-in-out;
    transition: transform 1.2s ease-in-out;
    transition: transform 1.2s ease-in-out, -webkit-transform 1.2s ease-in-out;
}

.cont.s--signup .sub-cont {
    -webkit-transform: translate3d(-640px, 0, 0);
    transform: translate3d(-640px, 0, 0);
}

button {
    display: block;
    margin: 0 auto;
    width: 260px;
    height: 36px;
    border-radius: 30px;
    color: #fff;
    font-size: 15px;
    cursor: pointer;
}

.img {
    overflow: hidden;
    z-index: 2;
    position: absolute;
    left: 0;
    top: 0;
    width: 260px;
    height: 100%;
    padding-top: 360px;
}

.img:before {
    content: '';
    position: absolute;
    right: 0;
    top: 0;
    width: 900px;
    height: 100%;
    background-image: url("ext.jpg");
    opacity: .8;
    background-size: cover;
    -webkit-transition: -webkit-transform 1.2s ease-in-out;
    transition: transform 1.2s ease-in-out;
    transition: transform 1.2s ease-in-out, -webkit-transform 1.2s ease-in-out;
}

.img:after {
    content: '';
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background: #72a689;
}

.cont.s--signup .img:before {
    -webkit-transform: translate3d(640px, 0, 0);
    transform: translate3d(640px, 0, 0);
}

.img__text {
    z-index: 2;
    position: absolute;
    left: 0;
    top: 50px;
    width: 100%;
    padding: 0 20px;
    text-align: center;
    color: #fff;
    -webkit-transition: -webkit-transform 1.2s ease-in-out;
    transition: -webkit-transform 1.2s ease-in-out;
    transition: transform 1.2s ease-in-out;
    transition: transform 1.2s ease-in-out, -webkit-transform 1.2s ease-in-out;
}

.img__text h2 {
    margin-bottom: 10px;
    font-weight: normal;
}

.img__text p {
    font-size: 14px;
    line-height: 1.5;
}

.cont.s--signup .img__text.m--up {
    -webkit-transform: translateX(520px);
    transform: translateX(520px);
}

.img__text.m--in {
    -webkit-transform: translateX(-520px);
    transform: translateX(-520px);
}

.cont.s--signup .img__text.m--in {
    -webkit-transform: translateX(0);
    transform: translateX(0);
}

.img__btn {
    overflow: hidden;
    z-index: 2;
    position: relative;
    width: 100px;
    height: 36px;
    margin: 0 auto;
    background: transparent;
    color: #fff;
    text-transform: uppercase;
    font-size: 15px;
    cursor: pointer;
}

.img__btn:after {
    content: '';
    z-index: 2;
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    border: 2px solid #fff;
    border-radius: 30px;
}

.img__btn span {
    position: absolute;
    left: 0;
    top: 0;
    display: -webkit-box;
    display: flex;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    align-items: center;
    width: 100%;
    height: 100%;
    -webkit-transition: -webkit-transform 1.2s;
    transition: -webkit-transform 1.2s;
    transition: transform 1.2s;
    transition: transform 1.2s, -webkit-transform 1.2s;
}

.img__btn span.m--in {
    -webkit-transform: translateY(-72px);
    transform: translateY(-72px);
}

.cont.s--signup .img__btn span.m--in {
    -webkit-transform: translateY(0);
    transform: translateY(0);
}

.cont.s--signup .img__btn span.m--up {
    -webkit-transform: translateY(72px);
    transform: translateY(72px);
}

h2 {
    width: 100%;
    font-size: 26px;
    text-align: center;
}

label {
    display: block;
    width: 260px;
    margin: 25px auto 0;
    text-align: center;
}

label span {
    font-size: 12px;
    color: #cfcfcf;
    text-transform: uppercase;
}

input {
    display: block;
    width: 100%;
    margin-top: 5px;
    padding-bottom: 5px;
    font-size: 16px;
    border-bottom: 1px solid rgba(0, 0, 0, 0.4);
    text-align: center;
}

.forgot-pass {
    margin-top: 15px;
    text-align: center;
    font-size: 12px;
    color: #cfcfcf;
}

.submit {
    margin-top: 40px;
    margin-bottom: 20px;
    background: #346751;
    text-transform: uppercase;
  
}
.submit a {
	
	color: #fff;
}

.fb-btn {
    border: 2px solid #d3dae9;
    color: #8fa1c7;
}

.fb-btn span {
    font-weight: bold;
    color: #455a81;
}

.sign-in {
    -webkit-transition-timing-function: ease-out;
    transition-timing-function: ease-out;
}

.cont.s--signup .sign-in {
    -webkit-transition-timing-function: ease-in-out;
    transition-timing-function: ease-in-out;
    -webkit-transition-duration: 1.2s;
    transition-duration: 1.2s;
    -webkit-transform: translate3d(640px, 0, 0);
    transform: translate3d(640px, 0, 0);
}

.sign-up {
    -webkit-transform: translate3d(-900px, 0, 0);
    transform: translate3d(-900px, 0, 0);
}

.cont.s--signup .sign-up {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
}

.invalid-feedback{
color: red; important;
}

    </style>
</head>
<body>
    <br>
<br>
    <div class="cont">
        <div class="form sign-in">
            <h2>Welcome</h2>
            <label>
                <span>Id</span>
                <input type="id" id="id" />
            </label>
            <label>
                <span>Password</span>
                <input type="password" id="password"/>
            </label>
            <p class="forgot-pass">Forgot password?</p>
            <button type="button" class="submit" id="btnLogin">Sign In</button>
         
        </div>
        <div class="sub-cont">
            <div class="img">
                <div class="img__text m--up">
                 
                    <h3>Don't have an account? Please Sign up!<h3>
                </div>
                <div class="img__text m--in">
                
                    <h3>If you already has an account, just sign in.<h3>
                </div>
                <div class="img__btn">
                    <span class="m--up">Sign Up</span>
                    <span class="m--in">Sign In</span>
                </div>
            </div>
            
       <form name="formSignup" method="post">            
    <div class="form sign-up">
        <h2>Create your Account</h2>
        <label>
            <span>Id</span>
            <input type="text" name="id" id="id" required />
            <div class="invalid-feedback" id="idFeedback"></div>
        </label>
        <label>
            <span>Password</span>
            <input type="password" name="password" id="password" required />
            <div class="invalid-feedback" id="passwordFeedback"></div>
        </label>
        <label>
            <span>Email</span>
            <input type="email" name="emailFull" id="emailFull" required />
            <div class="invalid-feedback"  id="emailFeedback"></div>
        </label>
        <label>
            <span>FirstName</span>
            <input type="text" name="firstName" id="firstName" required />
            <div class="invalid-feedback" id="nameFeedback"></div>
        </label>
        <label>
            <span>LastName</span>
            <input type="text" name="lastName" />
        </label>
        <label>
            <span>Gender</span>
            <input type="text" name="gender" />
        </label>
        <label>
            <span>Age</span>
            <input type="text" name="age" />
        </label>
              
        <button id="btnSave" type="button" class="submit">Sign Up</button>
    </div>
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="resources/js/validation.js"></script>
<script type="text/javascript">
    document.querySelector('.img__btn').addEventListener('click', function() {
        document.querySelector('.cont').classList.toggle('s--signup');
    });

    
    
    function checkId(obj, message) {
        var regExp = /^[A-Za-z0-9,_-]{4,20}$/;

        if (regExp.test($.trim(obj.val())) === false) {
            obj.addClass("is-invalid");
            obj.focus();
            $("#idFeedback").text(message);
            return false;
        } else {
            obj.removeClass("is-invalid");
            $("#idFeedback").text("");
            return true;
        }
    }

    function checkPw(obj, message) {
        var regExp = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$%^&*]).{8,20}$/;

        if (regExp.test($.trim(obj.val())) === false) {
            obj.addClass("is-invalid");
            obj.focus();
            $("#passwordFeedback").text(message);
            return false;
        } else {
            obj.removeClass("is-invalid");
            $("#passwordFeedback").text("");
        }
    }

    function checkName(obj, message) {
        var regExp = /^[ㄱ-ㅎ가-힣]{2,20}$/;

        if (regExp.test($.trim(obj.val())) === false) {
            obj.addClass("is-invalid");
            obj.focus();
            $("#nameFeedback").text(message);
            return false;
        } else {
            obj.removeClass("is-invalid");
            $("#nameFeedback").text("");
        }
    }

    function checkEmail(obj, message) {
        var regExp = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

        if (regExp.test($.trim(obj.val())) === false) {
            obj.addClass("is-invalid");
            obj.focus();
            $("#emailFeedback").text(message);
            return false;
        } else {
            obj.removeClass("is-invalid");
            $("#emailFeedback").text("");
        }
    }

    var objId = $("#id");
    var objPw = $("#password");
    var objName = $("#firstName");
    var objEmail = $("#emailFull");

    function validationInst() {
        if (checkId(objId, "아이디를 입력하세요") === false) return false;
        if (checkPw(objPw, "비밀번호를 입력하세요") === false) return false;
        if (checkName(objName, "이름을 입력하세요") === false) return false;
        if (checkEmail(objEmail, "유효한 이메일 주소를 입력해주세요.") === false) return false;
    }
	


		// 인서트버튼 클릭이벤트
		$("#btnSave").on("click", function(){
			if (validationInst() == false) return false;
			$("form[name=formSignup]").attr("action","/memberInst").submit();
		});
		
		
		//ajax
		$("#btnLogin").on("click", function(){
			
			if(validation() == false) return false;
			
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/indexUsrLoginViewAjax"
				/* ,data : $("#formLogin").serialize() */
				,data : { "id" : $("#id").val(),
					"password" : $("#password").val()}
				,success: function(response) {
					if(response.rt == "success") {
						alert(response.rtMember.name);
						location.href = "/";
					} else {
						alert("그런 회원 없습니다.");
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});


		validation = function() {
			// if(!checkNull($("#ifmmId"), $.trim($("#ifmmId").val()), "아이디를 입력해 주세요!")) return false;
			// if(!checkNull($("#ifmmPassword"), $.trim($("#ifmmPassword").val()), "비밀번호를 입력해 주세요!")) return false;
		}

    </script>
</body>
</html>