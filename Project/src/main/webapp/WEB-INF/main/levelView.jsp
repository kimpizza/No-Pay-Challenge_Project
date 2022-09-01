<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>

<html>
	<head>
		<title>levelView</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${cpath}/CSS/level.css" />
		<link rel="stylesheet" href="${cpath}/CSS/header.css" />
	</head>
	<body class="is-preload">
		<div id="page-wrapper">

			<!-- Header -->
			<nav>
				<ul>
				  <li>
					<a href="main copy 2.html">Home</a>
				  </li>
				  <li>
					<a href="savePoint.html">Save Point</a>
				  </li>
				  <li>
					<a href="boardList.html">Board</a>
				  </li>
				  <li>
					<a href="main copy 2.html">My Challenge</a>
				  </li>
				  <li>
					<a href="myPage.html">my page</a>
				  </li>
				  <li>
					<a class="login_btn" id="login">Login</a>
				  </li>
				</ul>
			  </nav>
			</br>
		</br>
		
			<!-- Main -->
				<section id="main" class="container">
					<header>
						<h2 id="title">글제목</h2>
						<p id="write">작성자</p>
						<p id="date">2022-08-22</p>
					</header>
					<div class="box">
							<div class="row-6 row-12-mobilep">
								<p>무지출챌린지 화이팅</br>무지출챌린지 화이팅</p>
							</div>
			<!--코멘트창-->
			<form class="comm_comment">
					<h3 style="margin-top: 8%;margin-bottom: -2%;">comment</h3>
					<div class="table-wrapper">
						
						<table>
					
							<tbody>
								<tr>
									<td>1</td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>2</td>
									<td></td>
									<td></td>
								</tr>
							</br>
							</tbody>
							
						</table>
					
						<div class="col-9 col-12-mobilep">
							<input type="text" name="query" id="query" value placeholder="댓글을 입력하세요" style="width: 88%;">
							<input type="submit" value="작성" style="background-color:#141A35">
						</div>
					
					</form>

						</div>
						
					</div>
				</section>


				<div class="col-12">
					<ul class="actions special">
						<li><input type="submit" value="목록으로" id= "goList"/></li>
						<li><input type="submit" value="수정하기" id= "update" /></li>
						<li><input type="submit" value="삭제하기" id= "delete"/></li>
					</ul>
				</div>
			</br></br>
		
				
		
		</div>

		<footer id="footer">
			<ul class="copyright">
				<li>&copy; non-Spending Challenge.</li><li>Design: <a>무지출챌린지</a></li>
			</ul>
		</footer>
		<script>
			document.getElementById("goList").onclick=function(){
				location.href=("boardList.html")
			}
		</script>
		<script>
			document.getElementById("update").onclick=function(){
				location.href=("boardUpdate.html")
			}
		</script>
	</body>
</html>>