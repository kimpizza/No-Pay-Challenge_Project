<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
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
  <!-- Header -->
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
      <div id="today_box" class="box_shadow"><br>
        <span class="" id="">${mvo.mb_name} </span><br>
        <span>D-${dday}</span>
        <div id="chartDiv" style="max-width: 250px;height: 250px;margin: 0px auto;">
          <div id="JSCharting_23053"
            style="width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); position: relative; font-family: tahoma, geneva, sans-serif; font-size: 12px;">
            <svg width="100%" height="100%" text-rendering="geometricPrecision" xmlns="http://www.w3.org/2000/svg"
              xmlns:xlink="http://www.w3.org/1999/xlink" font-family="tahoma, geneva, sans-serif" font-size="12px"
              font-weight="normal" font-style="normal" style="user-select: none;">
              <desc>Created with JSCharting</desc>
              <defs>
                <pattern width="5" height="5" patternUnits="userSpaceOnUse" patternTransform="rotate(45)" id="_jsc34"
                  childNodes="[object Object],[object Object]">
                  <rect width="5" height="5" fill="none"></rect>
                  <line x1="0" y1="0" x2="0" y2="5" stroke="#a2a2a2"></line>
                </pattern>
                <pattern width="5" height="5" patternUnits="userSpaceOnUse" patternTransform="rotate(45)" id="_jsc41"
                  childNodes="[object Object],[object Object]">
                  <rect width="5" height="5" fill="rgba(255,255,255,0.6)"></rect>
                  <line x1="0" y1="0" x2="0" y2="5" stroke="#a2a2a2"></line>
                </pattern>
                <clipPath id="_jsc348" clip-rule="evenodd">
                  <path fill="none"
                    d="M0 0 h244 v149.85333100000003 h-244 ZM210.14285714285717 60.94133240000001 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                    clip-rule="evenodd"></path>
                </clipPath>
                <clipPath id="_jsc351" clip-rule="evenodd">
                  <path fill="none"
                    d="M0 0 h244 v149.85333100000003 h-244 ZM210.14285714285717 60.94133240000001 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                    clip-rule="evenodd"></path>
                </clipPath>
                <linearGradient x1="0.0000" x2="0.0000" y1="0.0000" y2="1.0000" id="_jsc366">
                  <stop offset="0%" stop-color="#CBF2B7"></stop>
                  <stop offset="0%" stop-color="#CBF2B7"></stop>
                  <stop offset="6%" stop-color="#F0F2FD"></stop>
                  <stop offset="6%" stop-color="#FFFFFF"></stop>
                  <stop offset="94%" stop-color="#FFFFFF"></stop>
                  <stop offset="94%" stop-color="#E6E9FD"></stop>
                  <stop offset="100%" stop-color="#CBF2B7"></stop>
                  <stop offset="100%" stop-color="#CBF2B7"></stop>
                </linearGradient>
              </defs>
              <g>
                <g transform="translate(3,3)">
                  <path stroke-width="0" fill="#FFFFFF"
                    d="M 0 5 L 0 0 L 5 0 L 239 0 L 244 0 L 244 5 L 244 239 L 244 244 L 239 244 L 5 244 L 0 244 L 0 239 Z">
                  </path>
                  <g>
                    <g>
                      <g>
                        <g>
                          <g></g>
                          <g>
                            <g>
                              <g>
                                <path stroke-width="0" fill="none"
                                  d="M 0 5 L 5 0 L 92 0 L 97 0 L 97 5 L 97 23 L 97 28 L 92 28 L 5 28 L 0 28 L 0 23 Z">
                                </path>
                                <g fill="#323232" font-size="14" transform="translate(5.5,5.5)"><text>
                                    <tspan x="0px" y="13.402044150119321" style="text-align: center">무지출 달성표</tspan>
                                  </text></g>
                              </g>
                            </g>
                          </g>
                        </g>
                        <g transform="translate(0,28.393334)">
                          <g>
                            <g></g>
                          </g>
                          <g>
                            <g>
                              <g></g>
                            </g>
                            <g transform="translate(244,0)">
                              <g></g>
                            </g>
                            <g transform="translate(0,17.480001)">
                              <g>
                                <g>
                                  <g>
                                    <rect fill="rgba(0,0,0,0)" width="244" height="150" y="0.1266650000000027" rx="0"
                                      ry="0">
                                    </rect>
                                  </g>
                                  <g></g>
                                  <g></g>
                                  <g>
                                    <path
                                      d="M1 1.0000000000000018 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="rgba(253,253,253,0.6)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(253,253,253,0.6)" display="block"></path>
                                    <path
                                      d="M1 30.970666200000007 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="url(#_jsc41)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(255,255,255,0.6)" display="block"></path>
                                    <path
                                      d="M1 60.94133240000001 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="url(#_jsc41)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(255,255,255,0.6)" display="block"></path>
                                    <path
                                      d="M1 90.9119986 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="url(#_jsc41)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(255,255,255,0.6)" display="block"></path>
                                    <path
                                      d="M1 120.88266480000003 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="url(#_jsc41)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(255,255,255,0.6)" display="block"></path>
                                    <path
                                      d="M35.85714285714286 1.0000000000000018 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="rgba(255,255,0,0.6)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(209,244,191,0.6)" display="block"></path>
                                    <path
                                      d="M35.85714285714286 30.970666200000007 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="url(#_jsc41)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(255,255,255,0.6)" display="block"></path>
                                    <path
                                      d="M35.85714285714286 60.94133240000001 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="url(#_jsc41)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(255,255,255,0.6)" display="block"></path>
                                    <path
                                      d="M35.85714285714286 90.9119986 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="url(#_jsc41)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(255,255,255,0.6)" display="block"></path>
                                    <path
                                      d="M35.85714285714286 120.88266480000003 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="rgba(255,255,0,0.6)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(209,244,191,0.6)" display="block"></path>
                                    <path
                                      d="M70.71428571428571 1.0000000000000018 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="rgba(255,255,0,0.6)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(209,244,191,0.6)" display="block"></path>
                                    <path
                                      d="M70.71428571428571 30.970666200000007 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="url(#_jsc41)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(255,255,255,0.6)" display="block"></path>
                                    <path
                                      d="M70.71428571428571 60.94133240000001 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="url(#_jsc41)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(255,255,255,0.6)" display="block"></path>
                                    <path
                                      d="M70.71428571428571 90.9119986 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="url(#_jsc41)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(255,255,255,0.6)" display="block"></path>
                                    <path
                                      d="M70.71428571428571 120.88266480000003 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="rgba(255,255,0,0.6)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(209,244,191,0.6)" display="block"></path>
                                    <path
                                      d="M105.57142857142857 1.0000000000000018 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="rgba(255,255,0,0.6)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(209,244,191,0.6)" display="block"></path>
                                    <path
                                      d="M105.57142857142857 30.970666200000007 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="rgba(255,255,0,0.6)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(209,244,191,0.6)" display="block"></path>
                                    <path
                                      d="M105.57142857142857 60.94133240000001 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="url(#_jsc41)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(255,255,255,0.6)" display="block"></path>
                                    <path
                                      d="M105.57142857142857 90.9119986 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="rgba(255,255,0,0.6)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(209,244,191,0.6)" display="block"></path>
                                    <path
                                      d="M105.57142857142857 120.88266480000003 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="rgba(255,255,0,0.6)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(209,244,191,0.6)" display="block"></path>
                                    <path
                                      d="M140.42857142857144 1.0000000000000018 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="rgba(255,255,0,0.6)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(209,244,191,0.6)" display="block"></path>
                                    <path
                                      d="M140.42857142857144 30.970666200000007 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="rgba(255,255,0,0.6)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(209,244,191,0.6)" display="block"></path>
                                    <path
                                      d="M140.42857142857144 60.94133240000001 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="url(#_jsc41)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(255,255,255,0.6)" display="block"></path>
                                    <path
                                      d="M140.42857142857144 90.9119986 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="rgba(255,255,0,0.6)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(209,244,191,0.6)" display="block"></path>
                                    <path
                                      d="M140.42857142857144 120.88266480000003 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="rgba(253,253,253,0.6)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(253,253,253,0.6)" display="block"></path>
                                    <path
                                      d="M175.2857142857143 1.0000000000000018 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="url(#_jsc41)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(255,255,255,0.6)" display="block"></path>
                                    <path
                                      d="M175.2857142857143 30.970666200000007 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="url(#_jsc41)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(255,255,255,0.6)" display="block"></path>
                                    <path
                                      d="M175.2857142857143 60.94133240000001 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="rgba(255,255,0,0.6)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(209,244,191,0.6)" display="block"></path>
                                    <path
                                      d="M175.2857142857143 90.9119986 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="rgba(255,255,0,0.6)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(209,244,191,0.6)" display="block"></path>
                                    <path
                                      d="M175.2857142857143 120.88266480000003 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="rgba(253,253,253,0.6)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(253,253,253,0.6)" display="block"></path>
                                    <path
                                      d="M210.14285714285717 1.0000000000000018 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="url(#_jsc41)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(255,255,255,0.6)" display="block"></path>
                                    <path
                                      d="M210.14285714285717 30.970666200000007 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="url(#_jsc41)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(255,255,255,0.6)" display="block"></path>
                                    <path
                                      d="M210.14285714285717 60.94133240000001 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="rgba(255,255,0,0.6)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(209,244,191,0.6)" display="block"></path>
                                    <path
                                      d="M210.14285714285717 90.9119986 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="url(#_jsc41)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(255,255,255,0.6)" display="block"></path>
                                    <path
                                      d="M210.14285714285717 120.88266480000003 h32.857142857142854 v27.970666200000004 h-32.857142857142854 Z"
                                      fill="rgba(253,253,253,0.6)" stroke-width="0" fill-rule="evenodd"
                                      stroke="rgba(253,253,253,0.6)" display="block"></path>
                                    <g fill="rgb(77,77,77)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(1,30.970666)" display="block"><text
                                        transform="translate(6.608259,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">7일</tspan>
                                      </text></g>
                                    <g fill="rgb(77,77,77)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(1,60.941332)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">14일</tspan>
                                      </text></g>
                                    <g fill="rgb(77,77,77)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(1,90.911999)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">21일</tspan>
                                      </text></g>
                                    <g fill="rgb(77,77,77)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(1,120.882665)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">28일</tspan>
                                      </text></g>
                                    <g fill="rgb(24,64,5)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(35.857143,1)" display="block"><text
                                        transform="translate(6.608259,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">1일</tspan>
                                      </text></g>
                                    <g fill="rgb(77,77,77)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(35.857143,30.970666)" display="block"><text
                                        transform="translate(6.608259,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">8일</tspan>
                                      </text></g>
                                    <g fill="rgb(77,77,77)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(35.857143,60.941332)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">15일</tspan>
                                      </text></g>
                                    <g fill="rgb(77,77,77)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(35.857143,90.911999)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">22일</tspan>
                                      </text></g>
                                    <g fill="rgb(24,64,5)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(35.857143,120.882665)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">29일</tspan>
                                      </text></g>
                                    <g fill="rgb(24,64,5)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(70.714286,1)" display="block"><text
                                        transform="translate(6.608259,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">2일</tspan>
                                      </text></g>
                                    <g fill="rgb(77,77,77)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(70.714286,30.970666)" display="block"><text
                                        transform="translate(6.608259,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">9일</tspan>
                                      </text></g>
                                    <g fill="rgb(77,77,77)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(70.714286,60.941332)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">16일</tspan>
                                      </text></g>
                                    <g fill="rgb(77,77,77)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(70.714286,90.911999)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">23일</tspan>
                                      </text></g>
                                    <g fill="rgb(24,64,5)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(70.714286,120.882665)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">30일</tspan>
                                      </text></g>
                                    <g fill="rgb(24,64,5)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(105.571429,1)" display="block"><text
                                        transform="translate(6.608259,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">3일</tspan>
                                      </text></g>
                                    <g fill="rgb(24,64,5)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(105.571429,30.970666)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">10일</tspan>
                                      </text></g>
                                    <g fill="rgb(77,77,77)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(105.571429,60.941332)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">17일</tspan>
                                      </text></g>
                                    <g fill="rgb(24,64,5)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(105.571429,90.911999)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">24일</tspan>
                                      </text></g>
                                    <g fill="rgb(24,64,5)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(105.571429,120.882665)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">31일</tspan>
                                      </text></g>
                                    <g fill="rgb(24,64,5)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(140.428571,1)" display="block"><text
                                        transform="translate(6.608259,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">4일</tspan>
                                      </text></g>
                                    <g fill="rgb(24,64,5)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(140.428571,30.970666)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">11일</tspan>
                                      </text></g>
                                    <g fill="rgb(77,77,77)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(140.428571,60.941332)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">18일</tspan>
                                      </text></g>
                                    <g fill="rgb(24,64,5)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(140.428571,90.911999)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">25일</tspan>
                                      </text></g>
                                    <g fill="rgb(77,77,77)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(175.285714,1)" display="block"><text
                                        transform="translate(6.608259,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">5일</tspan>
                                      </text></g>
                                    <g fill="rgb(77,77,77)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(175.285714,30.970666)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">12일</tspan>
                                      </text></g>
                                    <g fill="rgb(24,64,5)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(175.285714,60.941332)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">19일</tspan>
                                      </text></g>
                                    <g fill="rgb(24,64,5)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(175.285714,90.911999)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">26일</tspan>
                                      </text></g>
                                    <g fill="rgb(77,77,77)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(210.142857,1)" display="block"><text
                                        transform="translate(6.608259,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">6일</tspan>
                                      </text></g>
                                    <g fill="rgb(77,77,77)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(210.142857,30.970666)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">13일</tspan>
                                      </text></g>
                                    <g fill="rgb(24,64,5)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(210.142857,60.941332)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">20일</tspan>
                                      </text></g>
                                    <g fill="rgb(77,77,77)" font-family="tahoma, geneva, sans-serif" font-size="12px"
                                      transform="translate(210.142857,90.911999)" display="block"><text
                                        transform="translate(2.787947,6.745333)">
                                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="center"
                                          yAlignment="middle" style="white-space: pre">27일</tspan>
                                      </text></g>
                                  </g>
                                  <g></g>
                                  <g>
                                    <g></g>
                                    <path fill="none" stroke="#DEDEAC" stroke-opacity="0.9"
                                      stroke-width="3.5999999999999996" stroke-linejoin="round" stroke-linecap="butt"
                                      fill-rule="evenodd" d="M0 0" pointer-events="none" clip-path="url(#_jsc348)">
                                    </path>
                                    <path fill="none" stroke="#DEDEAC" stroke-opacity="0.36000000000000004"
                                      stroke-width="6" stroke-linejoin="round" stroke-linecap="butt" fill-rule="evenodd"
                                      d="M0 0" pointer-events="none" clip-path="url(#_jsc351)"></path>
                                  </g>
                                </g>
                                <g></g>
                                <g></g>
                                <path fill="none" d="M-1 -0.8733349999999973 h246 v152 h-246 Z"></path>
                              </g>
                            </g>
                            <g transform="translate(0,167.333332)">
                              <g></g>
                            </g>
                            <g transform="translate(244,167.333332)">
                              <g></g>
                            </g>
                            <g>
                              <g>
                                <g>
                                  <g>
                                    <g>
                                      <g display="none">
                                        <rect fill="transparent" y="-0.3933339999999994" rx="0" ry="0"></rect>
                                        <g></g>
                                      </g>
                                    </g>
                                    <g>
                                      <g transform="translate(8.428571,-3)">
                                        <path stroke-linejoin="round" stroke-linecap="butt" stroke-width="0"
                                          fill="transparent"
                                          d="M -0.4285709999999998 4.606666000000001 L -0.4285709999999998 -0.3933339999999994 L 4.571429 -0.3933339999999994 L 12.571429000000002 -0.3933339999999994 L 17.571429000000002 -0.3933339999999994 L 17.571429000000002 4.606666000000001 L 17.571429000000002 15.606666000000004 L 17.571429000000002 20.606666000000004 L 12.571429000000002 20.606666000000004 L 4.571429 20.606666000000004 L -0.4285709999999998 20.606666000000004 L -0.4285709999999998 15.606666000000004 Z">
                                        </path>
                                        <g cursor="default" fill="#5f5f5f" font-size="12px" transform="translate(3,3)">
                                          <text>
                                            <tspan x="0px" y="11.48746641438799" style="white-space: pre">일</tspan>
                                          </text></g>
                                      </g>
                                      <g transform="translate(43.285714,-3)">
                                        <path stroke-linejoin="round" stroke-linecap="butt" stroke-width="0"
                                          fill="transparent"
                                          d="M -0.2857139999999987 4.606666000000001 L -0.2857139999999987 -0.3933339999999994 L 4.714286000000001 -0.3933339999999994 L 12.714286000000001 -0.3933339999999994 L 17.714286 -0.3933339999999994 L 17.714286 4.606666000000001 L 17.714286 15.606666000000004 L 17.714286 20.606666000000004 L 12.714286000000001 20.606666000000004 L 4.714286000000001 20.606666000000004 L -0.2857139999999987 20.606666000000004 L -0.2857139999999987 15.606666000000004 Z">
                                        </path>
                                        <g cursor="default" fill="#5f5f5f" font-size="12px" transform="translate(3,3)">
                                          <text>
                                            <tspan x="0px" y="11.48746641438799" style="white-space: pre">월</tspan>
                                          </text></g>
                                      </g>
                                      <g transform="translate(78.142857,-3)">
                                        <path stroke-linejoin="round" stroke-linecap="butt" stroke-width="0"
                                          fill="transparent"
                                          d="M -0.14285700000000645 4.606666000000001 L -0.14285700000000645 -0.3933339999999994 L 4.8571429999999935 -0.3933339999999994 L 12.857142999999994 -0.3933339999999994 L 17.857142999999994 -0.3933339999999994 L 17.857142999999994 4.606666000000001 L 17.857142999999994 15.606666000000004 L 17.857142999999994 20.606666000000004 L 12.857142999999994 20.606666000000004 L 4.8571429999999935 20.606666000000004 L -0.14285700000000645 20.606666000000004 L -0.14285700000000645 15.606666000000004 Z">
                                        </path>
                                        <g cursor="default" fill="#5f5f5f" font-size="12px" transform="translate(3,3)">
                                          <text>
                                            <tspan x="0px" y="11.48746641438799" style="white-space: pre">화</tspan>
                                          </text></g>
                                      </g>
                                      <g transform="translate(113,-3)">
                                        <path stroke-linejoin="round" stroke-linecap="butt" stroke-width="0"
                                          fill="transparent"
                                          d="M 0 4.606666000000001 L 0 -0.3933339999999994 L 5 -0.3933339999999994 L 13 -0.3933339999999994 L 18 -0.3933339999999994 L 18 4.606666000000001 L 18 15.606666000000004 L 18 20.606666000000004 L 13 20.606666000000004 L 5 20.606666000000004 L 0 20.606666000000004 L 0 15.606666000000004 Z">
                                        </path>
                                        <g cursor="default" fill="#5f5f5f" font-size="12px" transform="translate(3,3)">
                                          <text>
                                            <tspan x="0px" y="11.48746641438799" style="white-space: pre">수</tspan>
                                          </text></g>
                                      </g>
                                      <g transform="translate(147.857143,-3)">
                                        <path stroke-linejoin="round" stroke-linecap="butt" stroke-width="0"
                                          fill="transparent"
                                          d="M 0.14285699999999224 4.606666000000001 L 0.14285699999999224 -0.3933339999999994 L 5.142856999999992 -0.3933339999999994 L 13.142856999999992 -0.3933339999999994 L 18.142856999999992 -0.3933339999999994 L 18.142856999999992 4.606666000000001 L 18.142856999999992 15.606666000000004 L 18.142856999999992 20.606666000000004 L 13.142856999999992 20.606666000000004 L 5.142856999999992 20.606666000000004 L 0.14285699999999224 20.606666000000004 L 0.14285699999999224 15.606666000000004 Z">
                                        </path>
                                        <g cursor="default" fill="#5f5f5f" font-size="12px" transform="translate(3,3)">
                                          <text>
                                            <tspan x="0px" y="11.48746641438799" style="white-space: pre">목</tspan>
                                          </text></g>
                                      </g>
                                      <g transform="translate(182.714286,-3)">
                                        <path stroke-linejoin="round" stroke-linecap="butt" stroke-width="0"
                                          fill="transparent"
                                          d="M 0.2857140000000129 4.606666000000001 L 0.2857140000000129 -0.3933339999999994 L 5.285714000000013 -0.3933339999999994 L 13.285714000000013 -0.3933339999999994 L 18.285714000000013 -0.3933339999999994 L 18.285714000000013 4.606666000000001 L 18.285714000000013 15.606666000000004 L 18.285714000000013 20.606666000000004 L 13.285714000000013 20.606666000000004 L 5.285714000000013 20.606666000000004 L 0.2857140000000129 20.606666000000004 L 0.2857140000000129 15.606666000000004 Z">
                                        </path>
                                        <g cursor="default" fill="#5f5f5f" font-size="12px" transform="translate(3,3)">
                                          <text>
                                            <tspan x="0px" y="11.48746641438799" style="white-space: pre">금</tspan>
                                          </text></g>
                                      </g>
                                      <g transform="translate(217.571429,-3)">
                                        <path stroke-linejoin="round" stroke-linecap="butt" stroke-width="0"
                                          fill="transparent"
                                          d="M 0.42857100000000514 4.606666000000001 L 0.42857100000000514 -0.3933339999999994 L 5.428571000000005 -0.3933339999999994 L 13.428571000000005 -0.3933339999999994 L 18.428571000000005 -0.3933339999999994 L 18.428571000000005 4.606666000000001 L 18.428571000000005 15.606666000000004 L 18.428571000000005 20.606666000000004 L 13.428571000000005 20.606666000000004 L 5.428571000000005 20.606666000000004 L 0.42857100000000514 20.606666000000004 L 0.42857100000000514 15.606666000000004 Z">
                                        </path>
                                        <g cursor="default" fill="#5f5f5f" font-size="12px" transform="translate(3,3)">
                                          <text>
                                            <tspan x="0px" y="11.48746641438799" style="white-space: pre">토</tspan>
                                          </text></g>
                                      </g>
                                      <path fill="none" stroke-width="0" stroke-linejoin="round" stroke-linecap="butt"
                                        d="M0 17.606666000000004 L 244 17.606666000000004"></path>
                                      <path fill="none" stroke="#E2E2E2" stroke-opacity="1" stroke-linejoin="round"
                                        stroke-linecap="butt" d="M17.5 17.106666000000004 L 17.5 17.106666000000004">
                                      </path>
                                      <path fill="none" stroke="#E2E2E2" stroke-opacity="1" stroke-linejoin="round"
                                        stroke-linecap="butt" d="M52.5 17.106666000000004 L 52.5 17.106666000000004">
                                      </path>
                                      <path fill="none" stroke="#E2E2E2" stroke-opacity="1" stroke-linejoin="round"
                                        stroke-linecap="butt" d="M87.5 17.106666000000004 L 87.5 17.106666000000004">
                                      </path>
                                      <path fill="none" stroke="#E2E2E2" stroke-opacity="1" stroke-linejoin="round"
                                        stroke-linecap="butt" d="M122.5 17.106666000000004 L 122.5 17.106666000000004">
                                      </path>
                                      <path fill="none" stroke="#E2E2E2" stroke-opacity="1" stroke-linejoin="round"
                                        stroke-linecap="butt" d="M156.5 17.106666000000004 L 156.5 17.106666000000004">
                                      </path>
                                      <path fill="none" stroke="#E2E2E2" stroke-opacity="1" stroke-linejoin="round"
                                        stroke-linecap="butt" d="M191.5 17.106666000000004 L 191.5 17.106666000000004">
                                      </path>
                                      <path fill="none" stroke="#E2E2E2" stroke-opacity="1" stroke-linejoin="round"
                                        stroke-linecap="butt" d="M226.5 17.106666000000004 L 226.5 17.106666000000004">
                                      </path>
                                      <g></g>
                                    </g>
                                  </g>
                                </g>
                              </g>
                            </g>
                            <g transform="translate(0,17.480001)">
                              <g>
                                <g></g>
                              </g>
                            </g>
                            <g transform="translate(244,17.480001)">
                              <g>
                                <g></g>
                              </g>
                            </g>
                            <g transform="translate(0,167.333332)">
                              <g>
                                <g></g>
                              </g>
                            </g>
                          </g>
                          <g transform="translate(244,0)">
                            <g></g>
                          </g>
                        </g>
                        <g transform="translate(0,195.726666)">
                          <g></g>
                        </g>
                      </g>
                    </g>
                  </g>
                  <g>
                    <g transform="translate(36.958124999999995,195.726666)">
                      <path stroke-width="0" fill="transparent"
                        d="M 0.04187500000000455 5.2733340000000055 L 5.0418750000000045 0.2733340000000055 L 165.041875 0.2733340000000055 L 170.041875 0.2733340000000055 L 170.041875 5.2733340000000055 L 170.041875 23.273334 L 165.041875 28.273334 L 5.0418750000000045 28.273334 L 0.04187500000000455 28.273334 L 0.04187500000000455 23.273334 Z">
                      </path>
                      <g transform="translate(2.5,2.5)">
                        <g display="none">
                          <rect fill="transparent" x="-0.45812499999999545" y="-0.22666599999999448" rx="0" ry="0">
                          </rect>
                          <g></g>
                        </g>
                        <g>
                          <g transform="translate(2.5,2.5)">
                            <g transform="translate(2.5,4.136667)">
                              <path
                                d="M 0 2 A 2 2 0 0 1 1.9980000003333322 9.999999166510065e-7 L 18 0 A 2 2 0 0 1 19.999999000000084 1.9980000003333334 L 20 8 A 2 2 0 0 1 18.001999999666666 9.999999000000084 L 2 10 A 2 2 0 0 1 9.999999166510065e-7 8.001999999666667 Z"
                                fill="rgba(255,255,0,1)"
                                transform="translate(0.04187500000000455,-0.36333299999998303)" stroke="#F1F1F1"
                                stroke-opacity="1" stroke-linejoin="round" stroke-linecap="butt" fill-rule="evenodd">
                              </path>
                            </g>
                          </g>
                          <g fill="#323232" font-size="11px" font-weight="bold" transform="translate(27.5,2.5)">
                            <g transform="translate(2.5,2.5)"><text>
                                <tspan x="0px" y="10.530177546522324" style="white-space: pre">성공!!</tspan>
                              </text></g>
                          </g>
                          <g transform="translate(62.041875,2.5)">
                            <g transform="translate(2.5,2.5)"></g>
                          </g>
                          <g transform="translate(70.041875,2.5)">
                            <g transform="translate(2.5,4.136667)">
                              <path
                                d="M 0 2 A 2 2 0 0 1 1.9980000003333322 9.999999166510065e-7 L 18 0 A 2 2 0 0 1 19.999999000000084 1.9980000003333334 L 20 8 A 2 2 0 0 1 18.001999999666666 9.999999000000084 L 2 10 A 2 2 0 0 1 9.999999166510065e-7 8.001999999666667 Z"
                                fill="url(#_jsc34)" transform="translate(0.5,-0.36333299999998303)" stroke="#F1F1F1"
                                stroke-opacity="1" stroke-linejoin="round" stroke-linecap="butt" fill-rule="evenodd">
                              </path>
                            </g>
                          </g>
                          <g fill="#323232" font-size="11px" font-weight="bold" transform="translate(95.041875,2.5)">
                            <g transform="translate(2.5,2.5)"><text>
                                <tspan x="0px" y="10.530177546522324" style="white-space: pre">반성하세요!!</tspan>
                              </text></g>
                          </g>
                        </g>
                        <g font-size="5" display="none">
                          <g transform="translate(5,0)"><text>
                              <tspan x="0px" y="4.7864443393283285" style="white-space: pre"> </tspan>
                            </text>
                            <g transform="translate(0,2.516667)">
                              <path d="M 0 0 L 10 0" stroke="darkgray" fill="none" height="1"></path>
                            </g>
                          </g>
                        </g>
                      </g>
                    </g>
                  </g>
                </g>
                <g></g>
                <g>
                  <g pointer-events="none" transform="translate(181.7297,48.8733)" display="none" opacity="0">
                    <g>
                      <path fill="rgba(0,0,0,.025)" transform="translate(5,5)" stroke-opacity="1"
                        stroke-linejoin="round" stroke-linecap="butt" pointer-events="none"
                        d="M 0.7703229999999905 2.6266650000000027 A 2 2 0 0 1 2.768323000333323 0.6266659999999193 L 65.770323 0.6266650000000027 A 2 2 0 0 1 67.77032200000009 2.624665000333336 L 67.770323 53.626665 A 2 2 0 0 1 65.77232299966667 55.62666400000008 L 2.7703229999999905 55.626665 A 2 2 0 0 1 0.7703239999999072 53.62866499966667 Z">
                      </path>
                      <path fill="rgba(0,0,0,0.05)" transform="translate(2.5,2.5)" stroke-opacity="1"
                        stroke-linejoin="round" stroke-linecap="butt" pointer-events="none"
                        d="M 0.7703229999999905 2.6266650000000027 A 2 2 0 0 1 2.768323000333323 0.6266659999999193 L 65.770323 0.6266650000000027 A 2 2 0 0 1 67.77032200000009 2.624665000333336 L 67.770323 53.626665 A 2 2 0 0 1 65.77232299966667 55.62666400000008 L 2.7703229999999905 55.626665 A 2 2 0 0 1 0.7703239999999072 53.62866499966667 Z">
                      </path>
                    </g>
                    <path stroke-opacity="1" stroke-linejoin="round" stroke-linecap="butt" pointer-events="none"
                      stroke="#BFE3AC" fill="url(#_jsc366)"
                      d="M 0.7703229999999905 2.6266650000000027 A 2 2 0 0 1 2.768323000333323 0.6266659999999193 L 65.770323 0.6266650000000027 A 2 2 0 0 1 67.77032200000009 2.624665000333336 L 67.770323 53.626665 A 2 2 0 0 1 65.77232299966667 55.62666400000008 L 2.7703229999999905 55.626665 A 2 2 0 0 1 0.7703239999999072 53.62866499966667 Z">
                    </path>
                    <g transform="translate(6.585786,6.585786)"><text>
                        <tspan x="0px" y="11.48746641438799" style="white-space: pre">1/20/2018</tspan>
                      </text>
                      <g transform="translate(0,14.480001)"><text>
                          <tspan x="0px" y="11.48746641438799" style="white-space: pre"> </tspan>
                        </text>
                        <g transform="translate(0,6.740001)">
                          <path d="M0.18453699999997752 0.32087699999999586L55.184536999999985 0.32087699999999586"
                            stroke="darkgray" fill="none" width="55.09875" height="1"></path>
                        </g>
                      </g><text transform="translate(0,28.960002)">
                        <tspan x="0px" y="11.48746641438799" font-weight="bold" xAlignment="left">Available</tspan>
                      </text>
                    </g>
                  </g>
                  <rect cursor="default" fill="rgba(255,255,255,0)" x="45.458124999999995" y="204.226666"
                    width="58.541875000000005" height="17.273334000000006"></rect>
                  <rect cursor="default" fill="rgba(255,255,255,0)" x="113" y="204.226666" width="91.541875"
                    height="17.273334000000006"></rect>
                </g>
                <g cursor="pointer" transform="translate(4,229)">
                  <g>
                    <linearGradient id="a" gradientUnits="userSpaceOnUse" x1="8.4" x2="8.4" y1="16.327" y2="1.765">
                      <stop offset="0" stop-color="#4a4949"></stop>
                      <stop offset="1" stop-color="#666565"></stop>
                    </linearGradient>
                    <linearGradient id="b">
                      <stop offset="0" stop-color="#0d48a1"></stop>
                      <stop offset="1" stop-color="#20ade2"></stop>
                    </linearGradient>
                    <linearGradient id="c" gradientUnits="userSpaceOnUse" x1="24.226" x2="24.226" xlink:href="#b"
                      y1="16.343" y2="4.618"></linearGradient>
                    <filter id="d" width="120%" height="120%" x="-10%" y="-10%">
                      <feColorMatrix type="saturate" values="0"></feColorMatrix>
                    </filter>

                  </g>
                  <title>Chart created using JSCharting</title>
                </g>
              </g>
            </svg>
            <div id="_jsc_overlay0" style="position: absolute; left: 0px; top: 0px;"></div>
            <div style="position: absolute; inset: 0px; overflow: hidden; z-index: -1; visibility: hidden;">
              <div
                style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;">
                <div
                  style="position: absolute; left: 0px; top: 0px; transition: all 0s ease 0s; width: 100000px; height: 100000px;">
                </div>
              </div>
              <div
                style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;">
                <div style="position: absolute; left: 0; top: 0; transition: 0s; width: 200%; height: 200%"></div>
              </div>
            </div>
            <div class="loader default hide" style="width: 250px; height: 250px; animation-delay: 0ms;">
              <div class="loader-overlay" style="background-color: rgb(255, 255, 255);"></div>
              <div class="loader-icon-holder">
                <div class="loader-icon">
                  <div class="inner"></div>
                  <div class="inner"></div>
                  <div class="inner"></div>
                  <div class="inner"></div>
                  <div class="inner"></div>
                  <div class="inner"></div>
                  <div class="inner"></div>
                  <div class="inner"></div>
                  <div class="inner"></div>
                  <div class="inner"></div>
                  <div class="inner"></div>
                  <div class="inner"></div>
                </div>
                <div class="loader-text"></div>
              </div>
            </div>

            <div
              style="padding: 12px; background-color: rgb(238, 238, 238); border-radius: 16px; position: absolute; display: none; text-align: left; max-width: 400px; z-index: 999; font-family: tahoma, geneva, sans-serif; font-size: 12px; font-weight: normal; font-style: normal; right: 26px; bottom: 26px;">
              <div style="max-height: 200px; overflow-y: auto;">
                <div style="pointer-events: none;">
                  <h4 style="margin-top: 0px; margin-bottom: 4px; color: rgb(204, 153, 0);">Adding &lt;script&gt;
                    improves
                    performance</h4>
                  <p style="margin-top: 0px; margin-bottom: 4px;">Adding: &lt;script type="text/javascript"
                    src="https://code.jscharting.com/latest/modules/types.js"&gt;&lt;/script&gt; to the HTML page will
                    improve
                    performace</p>
                  <p style="margin-bottom: 4px; color: gray;">To disable these messages, remove or set chart debug
                    option to
                    false</p>
                </div>
              </div>
            </div>
          </div>
        </div>

        
      </div>



      <div id="target_box" class="box_shadow">
        <!-- <div class="profile_box" style="background: #BDBDBD;">
                    <img class="profile" src="./images/profile.jpg">
                </div> -->


        <div class="target_money_text">
          <span>목표 금액</span><br>

        </div>
        <input type="text" class="input_target_money target_margin" id="" value="${mvo.challenge_total}" disabled="">
        <input type="text" class="input_now_money target_margin" id="" value="${sum}" disabled="">
        <div class="col-12">
        <form action="${cpath}/challenge.do">
                <input type="hidden" name="mb_id" value="${mvo.mb_id}"/>
                <input type="hidden" name="aaa" value="aaa"/>
          <select name="priority" class="target_margin" id="category">
            <option value="">- 선택 -</option>
            <option value="1">1.쇼핑</option>
            <option value="2">2.식비</option>
            <option value="3">3.여가</option>
            <option value="4">4.교통</option>
            <option value="5">5.기타</option>
          </select>
        </div>
        <div>
          <input type="text" class="target_margin a" value="" name="pay_money" placeholder="소비금액 입력"/>
        </div>
        <ul class="actions fit">

          <li><button type="submit" class="button fit" onclick="over()">저장</button></li>

        </ul>
        </form>
		<script>
		function over(){
			if(${mvo.challenge_total < sum}){
				alert("으이구~~돈 좀 아껴써라~🤦‍🤦‍♂️🤦💸💸💸💸💸")
				
			}
			if(document.querySelector("input.a").value==""){
				alert("금액을 입력하세요.");
			}
		}
		</script>



      </div>

    </div>
    <div id="main_box" class="box_shadow" style="color: rgb(0, 0, 0)">
      <div class="main_top_div">
        <div class="card mb-4">
          <div class="card-header">
            <!-- <svg class="svg-inline--fa fa-chart-area me-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chart-area" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M64 400C64 408.8 71.16 416 80 416H480C497.7 416 512 430.3 512 448C512 465.7 497.7 480 480 480H80C35.82 480 0 444.2 0 400V64C0 46.33 14.33 32 32 32C49.67 32 64 46.33 64 64V400zM128 320V236C128 228.3 130.8 220.8 135.9 214.1L215.3 124.2C228.3 109.4 251.4 109.7 263.1 124.8L303.2 171.8C312.2 182.7 328.6 183.4 338.6 173.4L359.6 152.4C372.7 139.3 394.4 140.1 406.5 154.2L472.3 231C477.3 236.8 480 244.2 480 251.8V320C480 337.7 465.7 352 448 352H159.1C142.3 352 127.1 337.7 127.1 320L128 320z"></path></svg> -->
            <i class="fas fa-chart-area me-1"></i>
            3주 소비 차트
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
            3주 소비 차트
          </div>
          <div class="ex1 card-body">
            <canvas id="myPieChart" width="455" height="227" style="display: block; height: 182px; width: 364px;"
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


        <div class="div_ex card mb-4">
          <div class="card-header">
            <i class="fas fa-chart-pie me-1"></i>
            1년 소비 차트
          </div>
          <div class="ex1 card-body">
            <canvas id="myPieChart2" width="455" height="227" style="display: block; height: 182px; width: 364px;"
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
        <!-- <div class="div_ex" style="border: solid 1px black;">
          무엇을 넣을까요?
        </div> -->
      </div>
      
        
      
      
    </div>
    



  </div>

  </div>
  <div>
        <img src="img/배경.png" style="position: absolute;width: 90%;top:161%;left: 5%; height: 70%;"/>
        <img src="img/카드추천.png" style="position: absolute;width: 25%;top:165%;left: 36% ;">
        <img src="img/영역.png" style="position: absolute;width: 40%;top:161%;left: 4%;"/>
        <img src="img/영역.png" style="position: absolute;width: 40%;top:161%;left: 56.8%;"/>
        <img src="img/ezgif.com-gif-maker.gif" style="position: absolute;width:3%;top:175%;left: 8%;"/>
        <img src="img/ezgif.com-gif-maker.gif" style="position: absolute;width:3%;top:175%;left: 61%;"/>
        <img src="img/카드추천_그림.png" style="position: absolute;width: 14%;top:186%;left: 42%;"/>
        <img src="img/오하쳌(오늘하루체크)(우리카드) (2).jpg" style="border-radius: 7px; position: absolute;width: 17%;top:166%;left: 19%;box-shadow: 5px 5px 10px;color:gray;"/>
        <img src="img/haebom.jpg" style="border-radius: 7px; position: absolute;width: 17%;top:166%;left: 72%;box-shadow: 5px 5px 10px;color:gray;"/>
        <h4 style="position: absolute;left: 10%; top:194%">오늘하루 체크카드</h4>
        
        <p style="position: absolute;left: 11%; top:201%">- [EAT] 커피 5% 캐시백<br>- [EAT] 배달/주문 5% 캐시백</p>
        <a href="https://www.card-gorilla.com/card/detail/762" style="position: absolute;left: 30%; top:211%">자세히보기</a>

        <h4 style="position: absolute;left: 63%; top:194%">노리 체크카드</h4>
        <p style="position: absolute;left: 64%; top:201%">- 커피 20% 할인<br>- 배달앱 5% 할인<br>- 온라인 쇼핑 5% 할인</p>
      </div><a href="https://www.card-gorilla.com/card/detail/762" style="position: absolute;left: 83%; top:211%">자세히보기</a>
  </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br>
  <footer id="footer">
    <ul class="copyright">
      <li>&copy; non-Spending Challenge.</li>
      <li>Design: <a>무지출챌린지</a></li>
    </ul>
  </footer>
  <script type="text/javascript">
    /*
Calendar with blackout dates loaded from a CSV file.
Learn how to:
 
- Use CSV data with calendars.
*/
    // JS
    var chart,
      chartConfig = {
        debug: true,
        //Without data, a view must be specified.
        type: 'calendar month solid',
        title_label_text: '무지출 달성표',
        yAxis_visible: false,
        legend: {
          //Add custom entries
          template: '%icon %name',
          position: 'bottom',
          customEntries: [
            { name: '성공!!', icon_color: '#cbf2b7' },
            {
              name: '반성하세요!!',
              icon: {
                hatch: {
                  style: 'light-upward-diagonal',
                  color: '#a2a2a2'
                }
              }
            }
          ]
        },
        calendar: {
          range: ['1/1/2018', '1/31/2018'],
          defaultEdgePoint: { mouseTracking: false, label_visible: false }
        },
        defaultSeries: {
          opacity: 0.6,
          legendEntry_visible: false,
          defaultPoint: {
            outline_width: 0,
            label_text: '<b>%name</b>'
          }
        },
        toolbar_visible: false
      };

    loadData(makeChart);

    function loadData(cb) {
      JSC.fetch('./bookingData.csv')
        .then(function (response) {
          return response.text();
        })
        .then(function (csv) {
          cb(JSC.parseCsv(csv).data);
        })
        .catch(function (ex) {
          console.error(ex);
        });
    }

    function makeChart(data) {
      chartConfig.series = [
        {
          points: data.map(function (row) {
            var isAvailable = row[1] === 'a';
            return isAvailable
              ? {
                date: row[0],
                color: '#cbf2b7',
                tooltip: '{%date:date d}<hr><b>Available</b>'
              }
              : {
                date: row[0],
                tooltip: '{%date:date d}<hr><b>Booked</b>',
                hatch: {
                  style: 'light-upward-diagonal',
                  color: '#a2a2a2'
                }
              };
          })
        }
      ];
      chart = JSC.chart('chartDiv', chartConfig);
    }
  </script>
  <!-- Code injected by live-server -->
  <script type="text/javascript">
    // <![CDATA[  <-- For SVG support
    if ('WebSocket' in window) {
      (function () {
        function refreshCSS() {
          var sheets = [].slice.call(document.getElementsByTagName("link"));
          var head = document.getElementsByTagName("head")[0];
          for (var i = 0; i < sheets.length; ++i) {
            var elem = sheets[i];
            var parent = elem.parentElement || head;
            parent.removeChild(elem);
            var rel = elem.rel;
            if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
              var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
              elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
            }
            parent.appendChild(elem);
          }
        }
        var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
        var address = protocol + window.location.host + window.location.pathname + '/ws';
        var socket = new WebSocket(address);
        socket.onmessage = function (msg) {
          if (msg.data == 'reload') window.location.reload();
          else if (msg.data == 'refreshcss') refreshCSS();
        };
        if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
          console.log('Live reload enabled.');
          sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
        }
      })();
    }
    else {
      console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
    }
    // ]]>
  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    crossorigin="anonymous"></script>
  <script src="js/scripts.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
   <script>
    var ctx = document.getElementById("myAreaChart");
    var myLineChart = new Chart(ctx, {
      type: 'bar',
      data: {
        labels: ["Sep 1", "Sep 2", "Sep 3", "Sep 4", "Sep 5", "Sep 6", "Sep 7"], 
        
        datasets: [{
          label: "Sessions",
          lineTension: 0.3,
          backgroundColor: "rgba(2,117,216,0.2)",
          borderColor: "rgba(2,117,216,1)",
          pointRadius: 5,
          pointBackgroundColor: "rgba(2,117,216,1)",
          pointBorderColor: "rgba(255,255,255,0.8)",
          pointHoverRadius: 5,
          pointHoverBackgroundColor: "rgba(2,117,216,1)",
          pointHitRadius: 50,
          pointBorderWidth: 2,
          data: [${sumPay[0]}, ${sumPay[1]}, ${sumPay[2]}, ${sumPay[3]}, ${sumPay[4]}, ${sumPay[5]}, ${sumPay[6]}],
        }],
      },
      options: {
        scales: {
          xAxes: [{
            time: {
              unit: 'date'
            },
            gridLines: {
              display: false
            },
            ticks: {
              maxTicksLimit: 5
            }
          }],
          yAxes: [{
            ticks: {
              min: 0,
              max: 40000,
              maxTicksLimit: 9
            },
            gridLines: {
              color: "rgba(0, 0, 0, .125)",
            }
          }],
        },
        legend: {
          display: false
        }
      }
    });
    //-------------
    var ctx = document.getElementById("myAreaChart");
    var myLineChart = new Chart(ctx, {
      type: 'line',
      data: {
        labels: ["Sep 1", "Sep 2", "Sep 3", "Sep 4", "Sep 5", "Sep 6", "Sep 7"],
        datasets: [{
          label: "Sessions",
          lineTension: 0.3,
          backgroundColor: "rgba(2,117,216,0.2)",
          borderColor: "rgba(2,117,216,1)",
          pointRadius: 5,
          pointBackgroundColor: "rgba(2,117,216,1)",
          pointBorderColor: "rgba(255,255,255,0.8)",
          pointHoverRadius: 5,
          pointHoverBackgroundColor: "rgba(2,117,216,1)",
          pointHitRadius: 50,
          pointBorderWidth: 2,
          data: [${sumPay[0]}, ${sumPay[1]}, ${sumPay[2]}, ${sumPay[3]}, ${sumPay[4]}, ${sumPay[5]}, ${sumPay[6]}],
        }],
      },
      options: {
        scales: {
          xAxes: [{
            time: {
              unit: 'date'
            },
            gridLines: {
              display: false
            },
            ticks: {
              maxTicksLimit: 5
            }
          }],
          yAxes: [{
            ticks: {
              min: 0,
              max: 40000,
              maxTicksLimit: 9
            },
            gridLines: {
              color: "rgba(0, 0, 0, .125)",
            }
          }],
        },
        legend: {
          display: false
        }
      }
    });

    </script>
    <script src="assets/demo/chart-bar-demo.js"></script>
    <script>
	    var ctx = document.getElementById("myPieChart");
	    var myPieChart = new Chart(ctx, {
	      type: 'pie',
	      data: {
	        labels: ["쇼핑", "식비", "여가", "교통", "기타"],
	        datasets: [{
	          data: [${sumItemPay[0]}, ${sumItemPay[1]}, ${sumItemPay[2]}, ${sumItemPay[3]},${sumItemPay[4]}],
	          backgroundColor: ['#007bff', '#dc3545', '#ffc107', '#28a745', '#00000'],
	        }],
	      },
	    });
		console.log(${sumItemPay[1]});
    </script>
    <script> //도넛 1월~9월 하면 되죠?네
    var ctx = document.getElementById("myPieChart2");
    var myPieChart2 = new Chart(ctx, {
      type: 'doughnut',
      data: {
        datasets: [
          {
            data: [${yearPay[0]},${yearPay[1]},${yearPay[2]},${yearPay[3]},${yearPay[4]}],
            backgroundColor: [ 'rgb(255, 99, 132)', 'rgb(255, 159, 64)', 'rgb(255, 205, 86)', 'rgb(75, 192, 192)', 'rgb(54, 162, 235)', ],
          },
        ],
        labels: ["쇼핑", "식비", "여가", "교통", "기타"],
      },
      options: {
        plugins: {
          datalabels: {
            formatter: (value) => {
              return value + '%';
            }
          }
        }
      }
    });

    </script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.0/dist/chart.min.js"></script>

  <style>


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
      width: 592px;
      
      display: flex;
      justify-content: space-between;
    }

    .div_ex {
      width: 260px;
      height: 250px;
      
    }

    .ex1 {
      position: absolute;
        width: 360px !important;
        height: 180px !important;
        left: -25px;
        bottom: 10px;
    }

    hr {
      border: 0;
      border-bottom: solid 2px #e5e5e5;
      margin: 1em 0;
    }
  .card_div{
    position: absolute;
    border: 2px solid rgb(214, 102, 255);
    border-radius: 20px;
    width: 141%;
    height: 50%;
    left: -267px;
    bottom: -328px;
}
.target_box .target_margin{
  margin-top: 10px !important;
}
  
  </style>

</body>

</html>