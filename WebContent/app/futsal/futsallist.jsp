<%@page import="com.koreait.app.futsalDAO.FutsalDAO"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Untitled</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/futsal/calendar.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/futsal/futsallist.css" />
</head>
<body id = "futsalbody"class="is-preload">


	<!-- Header -->
		<header id="header">
		<h1>
			<a href="index.html">Slate <span>by Pixelarity</span></a>
		</h1>
		<nav id="nav">
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="#" class="submenu fa-angle-down">Page Layouts</a>
					<ul>
						<li><a href="${pageContext.request.contextPath}/futsalFrontController/futsallist.fu">구장현황</a></li>
						<li><a href="${pageContext.request.contextPath}/TeamFrontController/TeamList.te">팀 목록 보기</a></li>
						<li><a href="no-sidebar.html">No Sidebar</a></li>
						<li><a href="#">Submenu</a>
							<ul>
								<li><a href="#">Option One</a></li>
								<li><a href="#">Option Two</a></li>
								<li><a href="#">Option Three</a></li>
								<li><a href="#">Option Four</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li><a href="#" class="submenu fa-angle-down">Board</a>
					<ul>
							<li><a href="${pageContext.request.contextPath}/board/boardList.bo?num=2">1:1 문의하기</a></li>
							<li><a href="${pageContext.request.contextPath}/board/boardList.bo?num=3">FAQ</a></li>
					</ul>
				</li>
				<li><a href="#" class="submenu fa-angle-down">Admin</a>
					<ul>
						<li><a href="${pageContext.request.contextPath}/admin/board.bo">게시판관리</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/boardlist.bo">게시물관리</a></li>
					</ul>
				</li>
				<!-- <li><a href="elements.html">Elements</a></li> -->
				<c:choose>
					<c:when test="${login_session ne null}">
						<li><a href="${pageContext.request.contextPath}/app/user/logOut.me" class="button"
							id="logOutBtn">Log Out</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="${pageContext.request.contextPath}/app/user/joinView.me" class="button">Sign Up</a></li>
						<li><a href="${pageContext.request.contextPath}/app/user/loginView.me" class="button">Login</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</nav>
		
	</header>

	<!-- Main -->
	

	
	<section id="main" class="wrapper sidebar left">
		<div id="futsalinner" class="inner">
		
			<div id = futsalweather>
					<table>
					<tr>
					<td></td>
						<c:forEach var="i" begin="0" end="6" step="1">
							<td id = "DAY${i}"></td>
						</c:forEach>
					</tr>
					<tr>
					<td>날씨</td>
						<c:forEach var="i" begin="0" end="6" step="1">
							<td id ="SKY${i}"></td>
						</c:forEach>
					</tr>
					<tr>
					<td>강수확률</td>
						<c:forEach var="i" begin="0" end="6" step="1">
							<td id ="POP${i}"></td>
						</c:forEach>
					</tr>
					</table>
			</div>
			
			<hr/>
			<div id = mapwrapper>
				<div id="map"></div>
			</div>
			
			<div id = line></div>
			
			<div id = calenderwrapper>
				<div id="calendarForm" style="font-size: 8px;"></div>
			</div>
			
				<!-- Content -->
			<div id = "futsalcontent" class="contents">
				<div id = loading>구장목록을 불러오는중입니다</div>
			</div>
			
			
		</div>
		
	</section>

</body>
	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/futsal/calenderMaker.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/futsal/ajaxlist.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/futsal/weatherSetter.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=563cdd8507ac7e3ee9a21bace94dd5e2"></script>
	<script>
	var mapContainer = document.getElementById('map'),
	    mapOption = { 
	        center: new kakao.maps.LatLng(37.5642135, 127.001698),
	        level: 10
	    };
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	</script>
<script>
$(document).ready(function(){
	var getdangi = ${getDangi};
	var getjungi = ${getJungi};
	var getupdateTime = ${updateTime};
	weatherSetter(getdangi,getjungi,getupdateTime);
 	insertDate();
	function insertDate(){
		var today = new Date();
		date = today.getDate();
		for (var i = 0; i < 7; i++) {
			$("#DAY"+i).text(date+i);	
		}
	}
});
</script>
</html>