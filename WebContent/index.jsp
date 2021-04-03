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
<noscript>	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" /></noscript>
</head>
<body class="is-preload">

	<!-- Header -->
	<header id="header" class="alt">
		<h1>
			<a href="/index.jsp"><img src="images/logo.png" class="logo"></span></a>
		</h1>
		<nav id="nav">
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="#" class="submenu fa-angle-down">Page Layouts</a>
					<ul>
						<li><a
							href="${pageContext.request.contextPath}/futsalFrontController/futsallist.fu">구장현황</a></li>
						<li><a 
						href="${pageContext.request.contextPath}/TeamFrontController/TeamList.te">팀 목록 보기</a></li>
						<li><a href="no-sidebar.html">No Sidebar</a></li>
						<li><a href="#">Submenu</a>
							<ul>
								<li><a href="#">Option One</a></li>
								<li><a href="#">Option Two</a></li>
								<li><a href="#">Option Three</a></li>
								<li><a href="#">Option Four</a></li>
							</ul></li>
					</ul>
				</li>
				<li><a href="#" class="submenu fa-angle-down">Board</a>
					<ul>
						<li><a href="${pageContext.request.contextPath}/board/boardList.bo?num=1">REVIEW</a></li>
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

	<!-- Banner -->
	<section id="banner">
		<article>
			<img src="images/visual01.jpg" alt="" />
			<div class="inner">
				<h2>
					<a href="#">Magna tempus. Sed feugiat.</a>
				</h2>
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
		<a href="app/board/faq.jsp"><i class="fas fa-comment-dots"></i>
			도움말</a>
	</div>
	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
</body>
</html>