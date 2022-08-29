<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html lang="en">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minmum-scale=1.0, user-scalable=1.0">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <title>Document</title>
    <link rel="stylesheet" href="CSS/mychallenge.css">
    <link rel="stylesheet" href="CSS/header.css">
    
    <style type="text/css">
        /* Chart.js */
        @keyframes chartjs-render-animation {
            from {
                opacity: .99
            }

            to {
                opacity: 1
            }
        }

        .chartjs-render-monitor {
            animation: chartjs-render-animation 1ms
        }

        .chartjs-size-monitor,
        .chartjs-size-monitor-expand,
        .chartjs-size-monitor-shrink {
            position: absolute;
            direction: ltr;
            left: 0;
            top: 0;
            right: 0;
            bottom: 0;
            overflow: hidden;
            pointer-events: none;
            visibility: hidden;
            z-index: -1
        }




    </style>
</head>

<body>

 <nav>
        <ul>
			<c:if test="${empty mvo}">
			<li><a href="${cpath}/mainForm.do">Home</a></li>
			<li><a href="${cpath}/savePointList.do">Save Point</a></li>
			<li><a href="" onclick="checkLogin()">Level</a></li>
			<li><a href="${cpath}/boardList.do">Board</a></li>
			<li><a href="" onclick="checkLogin()">My Challenge</a></li>
			<li><a href="" onclick="checkLogin()">My Page</a></li>
		    	<li><a class="login_btn" id="login">Login</a></li>
		    </c:if>
		    <c:if test="${!empty mvo}">
		    <li><a href="${cpath}/mainForm.do">Home</a></li>
			<li><a href="${cpath}/savePointList.do">Save Point</a></li>
			<li><a href="">Level</a></li>
			<li><a href="${cpath}/boardList.do">Board</a></li>
			<li><a href="${cpath}/challengeForm.do?mb_id=${mvo.mb_id}">My Challenge</a></li>
		   		<li><a href="${cpath}/myPage.do?mb_id=${mvo.mb_id}">My Page</a></li>
			    <li><a href="${cpath}/logout.do" class="login_btn">Logout</a></li>
		    </c:if>
			
		</ul>
      </nav>
		    
    <div class="container1">
        <div class="container2">
            <div id="target_box"><br>
                <span class="" id="">${mvo.mb_id}</span><br><br>
                <span>d-day</span>
                <input type="text" size="10" value="달력 넣기" disabled=""><br><br>

                <div>
                    <hr>
                </div>
            </div>



            <div id="today_box">
                <!-- <div class="profile_box" style="background: #BDBDBD;">
                    <img class="profile" src="./images/profile.jpg">
                </div> -->
                
                <div class="target_money_text">
                    <span>${mvo.challenge_total}</span><br>
                </div>
                <input type="text" class="input_target_money" id="" value="${mvo.challenge_total}" disabled="">
                <div class="col-12">
                <form action="${cpath}/challenge.do">
                <input type="hidden" name="mb_id" value="${mvo.mb_id}"/>
                <input type="hidden" name="aaa" value="aaa"/>
                    <select name="priority" id="category">
                        <option value="0">- 선택 -</option>
                        <option value="1">1.쇼핑</option>
                        <option value="2">2.식비</option>
                        <option value="3">3.여가</option>
                        <option value="4">4.교통</option> 
                        <option value="5">5.기타</option>
                    </select>
                </div>
                
                <div>
                    <input type="text" name="pay_money" placeholder="소비금액 입력"/> 
                </div>
                <ul class="actions fit">
                    
                    <li><button type="submit" class="button fit" value="저장" required>저장</button><li>
                    
                </ul>
			</form>
               



            </div>

        </div>
        <div id="main_box" style="color: rgb(0, 0, 0)">
            <div class="main_top_div">
                <div class="card mb-4">
                    <div class="card-header">
                        <!-- <svg class="svg-inline--fa fa-chart-area me-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chart-area" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M64 400C64 408.8 71.16 416 80 416H480C497.7 416 512 430.3 512 448C512 465.7 497.7 480 480 480H80C35.82 480 0 444.2 0 400V64C0 46.33 14.33 32 32 32C49.67 32 64 46.33 64 64V400zM128 320V236C128 228.3 130.8 220.8 135.9 214.1L215.3 124.2C228.3 109.4 251.4 109.7 263.1 124.8L303.2 171.8C312.2 182.7 328.6 183.4 338.6 173.4L359.6 152.4C372.7 139.3 394.4 140.1 406.5 154.2L472.3 231C477.3 236.8 480 244.2 480 251.8V320C480 337.7 465.7 352 448 352H159.1C142.3 352 127.1 337.7 127.1 320L128 320z"></path></svg> -->
                        <i class="fas fa-chart-area me-1"></i>
                        2주 소비 차트
                    </div>
                    
                    <div class="area_chart_div card-body">
                        <div class="chartjs-size-monitor">
                            <div class="chartjs-size-monitor-expand">
                                <div class=""></div>
                            </div> 
                        </div>
                       <canvas class="item chartjs-render-monitor" id="myAreaChart" width="1210" height="362"
                            style="display: block; height: 100px; width: 968px;"></canvas>
                    </div>

                </div>
            </div>
            
            <div class="main_mid_div" style="height: 1px;">
                <hr style="color: black; border-color: black;">
            </div>
            
            <div class="main_bottom_div">
                


                <div class="div_ex card mb-4">
                    <div class="card-header">
                        <i class="fas fa-chart-pie me-1"></i>
                        파이 차트
                    </div>
                    <div class="ex1 card-body">
                        <canvas id="myPieChart" width="455" height="227"
                            style="display: block; height: 182px; width: 364px;"
                            class="ex1 chartjs-render-monitor"></canvas> 
                        <div class="chartjs-size-monitor">
                            <div class=" chartjs-size-monitor-expand">
                                <div class=""></div>
                            </div>
                            <div class="chartjs-size-monitor-shrink">
                                <div class=""></div>
                            </div>
                        </div>
                    </div>
                    
                    
                </div>
            </div>
            </div>





        </div>
        
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/chart-area-demo.js"></script>
    <script src="assets/demo/chart-bar-demo.js"></script>
    <script src="assets/demo/chart-pie-demo.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.0/dist/chart.min.js"></script>

    <style>
        .radar_chart{
            height: 300px;
            width: 300px;
        }
        .target_money_text {
            position: relative;
           
        }

        .member_ui {
            position: relative;
            top: -100px;
        }

        .input_target_money {
            position: relative;
            
           
        }

        .item {
            flex-basis: 50%;
        }

        .area_chart_div {
            width: 1000px;
            height: 210px;
        }

        .main_bottom_div {
            margin-top: 50px;
            height: 250px;
            width: 650px;
            border: 1px solid #000;
           
        }
        .div_ex{
            width: 260px;
            height: 250px;
        }
        .ex1{
        width: 300px !important;
        height: 150px !important;
    }
    hr {
		border: 0;
		border-bottom: solid 2px #e5e5e5;
		margin: 1em 0;
	}
    </style>
        
</body>

</html>