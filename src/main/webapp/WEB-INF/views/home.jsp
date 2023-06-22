<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>portfolio</title>
</head>
<style>
.wrap{
    width: 100%;
    height: 900px;
}
.card__image {
  width: 200px;
  height: 200px;
  border-radius: 50%;
  border: 2px solid #ff9800;
  display: grid;
  place-items: center;
  margin: auto;
  margin-top: 120px;
}

.card__image img {
  width: 180px;
  height: 180px;
  border-radius: 50%;
  object-fit: cover;
}
.btn{
    display: flex;
    justify-content: center;
    align-items: center;
    width: 800px;
    height: 800px;
    background-color: antiquewhite;
    margin: auto;
    position: relative;
}
.user_btn,
.admin_btn{
    width: 200px;
    height: 50px;
    background-color: #ff9800;
    color: #fff;
    border-radius: 20px;
    margin: auto;
    margin-top: 330px;
    font-size: xx-large;
    text-align: center;
    cursor: pointer;
}
.infotxt{
    text-align: center;
}
.project_img{
    width: 25px;
    height: 25px;
    position: absolute;
    top: 0;
    left: 20%;

}
.project_img img {
    width: 500px;
    height: 300px;
    object-fit: cover;
    
}

</style>
<body>
    <div class="wrap">
        
        
        <div class="card__image">
            <img src="../../resources/images/profile_pic01.webp" />
        </div>
        <div class="infotxt"><p>안녕하세요 김다래입니다</p></div>
        
        
        <div class="btn">
            <div class="project_img">
                <img src="../../resources/images/friendship.jpg" alt="">
            </div>
            <div class="user_btn">User</div>
            <div class="admin_btn" onclick="location.href='login'">Admin</div>
        </div>
    </div>
</body>
</html>