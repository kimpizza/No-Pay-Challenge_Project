<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html>
<head>
  <title>무지출챌린지</title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
  <link rel="stylesheet" href="${cpath}/CSS/level.css" />
  <link rel="stylesheet" href="${cpath}/CSS/header.css" />
  <script src="jquery-3.6.0.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-circle-progress/1.2.2/circle-progress.min.js"></script>
</head>
<body class="is-preload">
  <form>
    <!-- Header -->
    <nav>
      <ul>
        <li>
          <a href="mainForm.do">Home</a>
        </li>
        <li>
          <a href="savePoint.do">Save Point</a>
        </li>
        <li>
          <a href="levelList.do">Level</a>
        </li>
        <li>
          <a href="boardList.do">Board</a>
        </li>
        <li>
          <a href="main copy 2.html">My Challenge</a>
        </li>
        <li>
          <a href="myPage.do">my page</a>
        </li>
        <li>
          <a class="login_btn" id="login">Login</a>
        </li>
        <ul>
          <li><a href="#" onclick="checkLv1()">Lv.1</a></li>
          <li><a href="#" onclick="checkLv2()">Lv.2</a></li>
          <li><a href="#" onclick="checkLv3()">Lv.3</a></li>
          <li><a href="#" onclick="checkLv4()">Lv.4</a></li>
          <li><a href="#" onclick="checkLv5()">Lv.5</a></li>
        </ul>
      </ul>
      <script>
        function checkLv1() {
        	alert("Lv.1 회원만 접근 가능합니다😊")
        }
        function checkLv2() {
        	alert("Lv.2 회원만 접근 가능합니다😊")
        }
        function checkLv3() {
        	alert("Lv.3 회원만 접근 가능합니다😊")
        }
        function checkLv4() {
        	alert("Lv.4 회원만 접근 가능합니다😊")
        }
        function checkLv5() {
        	alert("Lv.5 회원만 접근 가능합니다😊")
        }
      </script>
    </nav>
    <div class="box">
      <h3>챌린지 현황표</h3>
      <!--나의챌린지-->
      <div class="wrapper">
        <div class="card">
          <div class="circle">
            <div class="bar"></div>
            <div class="box"><span></span></div>
          </div>
          <div class="text">나의 달성도</div>
        </div>
        <!--전체달성도-->
        <div class="wrapper_all" style="position: absolute;">
          <div class="card_all">
            <div class="circle_all">
              <div class="bar_all"></div>
              <div class="box"><span></span></div>
            </div>
            <div class="text">전체 달성도</div>
          </div>
        </div>
        <!--순위-->
        <div class="wrapper_rank" style="position: absolute;margin-left: 17.5%;">
          <div class="card_rank">
            <div class="text">이달의 순위</div>
            </br>
            <table>
              <thead>
                <tr>
                  <th>순위</th>
                  <th>이름</th>
                </tr>
              </thead>
              
            <c:forEach var="vo" items="${list1}" varStatus="status">
				<tr>
					<td>${status.index+1}등 </td>
					<td> ${vo.mb_name}</td>
				</tr>
			</c:forEach>	
            </table>
          </div>
        </div>
      </div>
    </div>
  </form>
  <!--글목록-->
  <div class="row">
    <div class="col-12">
      <!-- Table -->
      <section class="box">
        <h3>자유게시판</h3>
        <div class="table-wrapper">
          <table>
            <thead>
              <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach var = "vo" items="${list}" varStatus="status">
              <tr>
                <td>${status.index + 1}</td>
                <td>${vo.lv_title}</td>
				<td>${vo.lv_content}</td>
              </tr>
            </c:forEach>
            </tbody>
          </table>
          </br>
        </div>
      </section>
    </div>
  </div>
  <a id="page" href="">1</a>
  <a id="page" href="">2</a>
  <a id="page" href="">3</a>
  <a id="page" href="">4</a>
  <a id="page" href="">5</a>
  <a id="page" href="">6</a>
  <a id="page" href="">7</a>
  <a id="page" href="">8</a>
  <a id="page" href="">9</a>
  <a id="page" href="">10</a>
  <div class="col-12">
    <ul class="actions special_board">
      <li><input type="submit" value="글작성" id="goList" onclick = "goWrite()"/></li>
    </ul>
  </div>
  <footer id="footer">
    <ul class="copyright">
      <li>&copy; non-Spending Challenge.</li>
      <li>Design: <a>무지출챌린지</a></li>
    </ul>
  </footer>
</body>
<script>
  let options = {
    startAngle: -1.55,
    /*나의 달성도 값 부분*/
    value: ${avg}/100,
    size: 150,
    fill: {
      gradient: ['#FF774D', '#FFCB46']
    }
  }
  $('.circle .bar').circleProgress(options).on('circle-animation-progress', function (event, progress, stepValue) {
    $(this).parent().find("span").text(String(stepValue.toFixed(2).substr(2)) + "%");
  });
  function goWrite(){
	  location.href = "${cpath}/levelWriteForm.do
  }
</script>
<script>
  let options2 = {
    startAngle: -1.55,
    /*전체 달성도 값 부분*/
    value: ${avg1}/100,
    size: 150,
    fill: {
      gradient: ['#122F5D', '#1A62B8']
    }
  }
  $('.circle_all .bar_all').circleProgress(options2).on('circle-animation-progress', function (event, progress, stepValue) {
    $(this).parent().find("span").text(String(stepValue.toFixed(2).substr(2)) + "%");
  });
</script>
</html>