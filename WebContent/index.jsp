<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Untitled</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link href="${pageContext.request.contextPath}/assets/css/user/indexBox.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/assets/css/board/board.css" type="text/css" rel="stylesheet" />
</head>
<body class="is-preload">

	<!-- Header -->
		<div id = indexBtn style="display: none"></div>
	<c:choose> 
		<c:when test="${enterprisenumber ne null}">
		<header id="header" class="alt">
			<h1>
				<a href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/images/logo.png" class="logo"></a>
			</h1>
			<nav id="nav">
				<ul>
					<li><a href="#" class="submenu fa-angle-down">구장관리</a>
						<ul>
							<li><a href="${pageContext.request.contextPath}/futsalFrontController/futsallist.fu">구장현황</a></li>
							<li><a href="${pageContext.request.contextPath}/futsalFrontController/groundregistpage.fu">구장등록</a></li>
							<li><a href="${pageContext.request.contextPath}/futsalFrontController/registlistpage.fu">등록구장리스트</a></li>
						</ul>
						
					<li><a href="${pageContext.request.contextPath}/app/user/logOut.me" class="button"
							id="logOutBtn">Log Out</a></li>
				</ul>
			</nav>
		</header>
		</c:when>
	<c:otherwise>
		<header id="header" class="alt">
			<h1>
				<a href="${pageContext.request.contextPath}/index.jsp"><img src="images/logo.png" class="logo"></span></a>
			</h1>
			<nav id="nav">
				<ul>
					<li><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
					<li><a href="#" class="submenu fa-angle-down">Ground</a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath}/futsalFrontController/futsallist.fu">구장현황</a></li>
						</ul>
					</li>
					<li><a href="${pageContext.request.contextPath}/team/TeamList.te" class="submenu fa-angle-down">Team</a>
						<ul>
							<li><a href="${pageContext.request.contextPath}/team/TeamList.te">팀 목록 보기</a></li>
							<li><a href="${pageContext.request.contextPath}/app/team/teamcreate.jsp">팀 생성하기</a></li>
						</ul>
					</li>
					
				<c:choose>
					<c:when test="${login_session.userid eq 'admin'}">
					
						<li><a href="#" class="submenu fa-angle-down">Board</a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/board/boardList.bo?num=2">1:1
										문의하기</a></li>
								<li><a
									href="${pageContext.request.contextPath}/board/boardList.bo?num=3">FAQ</a></li>
							</ul>
						</li>
						
						<li><a href="#" class="submenu fa-angle-down">Admin</a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/admin/board.bo">게시판관리</a></li>
								<li><a
									href="${pageContext.request.contextPath}/admin/boardlist.bo">게시물관리</a></li>
							</ul>
						</li>
					</c:when>
					<c:otherwise>
						<li><a href="#" class="submenu fa-angle-down">Board</a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/board/boardList.bo?num=2">1:1
										문의하기</a></li>
								<li><a
									href="${pageContext.request.contextPath}/board/boardList.bo?num=3">FAQ</a></li>
							</ul></li>
					</c:otherwise>
				</c:choose>
	
					<c:choose>
						<c:when test="${login_session ne null}">
							<li><a href="${pageContext.request.contextPath}/app/user/logOut.me" class="button"
								id="logOutBtn">Log Out</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="#" onclick="signupBtnClick()" class="button">Sign Up</a></li>
							<li><a href="#" onclick = "loginBtnClick()" class="button">Login</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</nav>
		</header>
	</c:otherwise>
</c:choose>
	<!-- Banner -->
	<section id="banner">
		<article>
			<img src="images/visual01.jpg" alt="" />
			<div class="inner">
				<h2><a href="#">Magna tempus. Sed feugiat.</a></h2>
			</div>
		</article>
		<article>
			<img src="images/visual02.jpg" alt="" />
			<div class="inner">
				<h2>
					<a href="#">Aliquam veroeros nullam.</a>
				</h2>
			</div>
		</article>

		<article>
			<img src="images/visual03.jpg" alt="" />
			<div class="inner">
				<h2>
					<a href="#">Consequat dolore adipiscing.</a>
				</h2>
			</div>
		</article>
	</section>
	<div id="faq">
		<a href="app/board/faq.jsp"><i class="fas fa-comment-dots"></i>도움말</a>
	</div>

	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/loginsingup.js"></script>
</body>
</html>