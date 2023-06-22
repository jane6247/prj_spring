<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>UI</title>
  <link rel="stylesheet" href="../../resources/new_style.css">
  <!-- 폰트어썸 -->
  <script src="https://kit.fontawesome.com/f0e73cfa04.js" crossorigin="anonymous"></script>
</head>

<body>
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
        <option selected>Open this select menu</option>
        <option value="1">One</option>
        <option value="2">Two</option>
        <option value="3">Three</option>
      </select>
    </header>

    <nav class="nav">
      <ul>
        <li>Navbar</li>
        <li>회원관리</li>
        <li>서비스관리</li>
        <li>사이트관리</li>
        <li>로그관리</li>
        <li>시스템관리</li>
        <li>시스템관리</li>
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
        <h2>국가코드관리</h2>
        <div class="up_input">
          <div class="select-input-group">
            <select class="select-input" aria-label="Default select example">
              <option selected>Open this select menu</option>
              <option value="1">One</option>
              <option value="2">Two</option>
              <option value="3">Three</option>
            </select>
            <select class="select-input" aria-label="Default select example">
              <option selected>Open this select menu</option>
              <option value="1">One</option>
              <option value="2">Two</option>
              <option value="3">Three</option>
            </select>
            <input class="select-input" type="text">
            <input class="select-input" type="text">
          </div>
          <div class="select-input-group">
            <select class="select-input" aria-label="Default select example">
              <option selected>Open this select menu</option>
              <option value="1">One</option>
              <option value="2">Two</option>
              <option value="3">Three</option>
            </select>
            <input class="select-input" type="text">
            <i class="fa-solid fa-magnifying-glass"></i>
            <i class="fa-solid fa-arrow-rotate-right"></i>

          </div>
          <div class="down_table">
            <div>
              <p>total 3</p>
              <select class="select-table" aria-label="Default select example">
                <option selected>Open this select menu</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
              </select>
            </div>
            <table class="table table-sm">
              <thead>

                <tr class="table_name">
                  <td><input type="checkbox"></td>
                  <th scope="col">#</th>
                  <th scope="col">Seq</th>
                  <th scope="col">국가이름</th>
                  <th scope="col">국가이름(영문)</th>
                  <th scope="col">국가코드(2자리)</th>
                  <th scope="col">국가코드(3자리)</th>
                  <th scope="col">사용</th>
                  <th scope="col">순서</th>
                  <th scope="col">등록일</th>
                  <th scope="col">수정일</th>
                </tr>
              </thead>
              <tbody id="table_body">
                <tr>
                  <td><input type="checkbox"></td>
                  <th scope="row">1</th>
                  <td>3</td>
                  <td>중국</td>
                  <td></td>
                  <td>CN</td>
                  <td>CHN</td>
                  <td>Y</td>
                  <td>4</td>
                  <td>2023-05-15 09:20:06</td>
                  <td>2023-05-15 09:20:06</td>
                </tr>
                <tr>
                  <td><input type="checkbox"></td>
                  <th scope="row">2</th>
                  <td>2</td>
                  <td>미국</td>
                  <td></td>
                  <td>US</td>
                  <td>USA</td>
                  <td>Y</td>
                  <td>2</td>
                  <td>2023-05-15 09:20:06</td>
                  <td>2023-05-15 09:20:06</td>
                </tr>
                <tr>
                  <td><input type="checkbox"></td>
                  <th scope="row">3</th>
                  <td>1</td>
                  <td>대한민국</td>
                  <td></td>
                  <td>KO</td>
                  <td>KOR</td>
                  <td>Y</td>
                  <td>1</td>
                  <td>2023-05-15 09:20:06</td>
                  <td>2023-05-15 09:20:06</td>
                </tr>
              </tbody>
            </table>
            <button id="number1" type="button" class="btn btn-primary">1</button>
            <div id="icon">
              <div id="icon_wrap">
                <i class="fa-solid fa-xmark"></i>
                <i class="fa-solid fa-trash-can"></i>
              </div>
              <div id="icon_wrap2">
                <i class="fa-regular fa-file-excel"></i>
                <i class="fa-solid fa-plus" onclick="location.href='ui_03'"></i>
              </div>
            </div>
          </div>
        </div>
    </section>





    <footer id="footer">
      <div id="footer_wrap">
        <p>(주)마이컴퍼니| 대표 장원영 |사업자등록번호 111-11-111111 | 서울특별시 성동구 광나루로 123길 3층</p><br>
        <p>Copyright 2014. Mycompany lnc. all right reserved</p>
      </div>
    </footer>












  </div>

</body>

</html>