<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Slate by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>REVIEW</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="/assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Header -->
			<header id="header">
				<h1><a href="/index.jsp">Slate <span>by Pixelarity</span></a></h1>
				<nav id="nav">
					<ul>
						<li><a href="/index.jsp">Home</a></li>
						<li>
							<a href="#" class="submenu fa-angle-down">Page Layouts</a>
							<ul>
								<li><a href="/left-sidebar.html">Left Sidebar</a></li>
								<li><a href="/right-sidebar.html">Right Sidebar</a></li>
								<li><a href="/no-sidebar.html">No Sidebar</a></li>
								<li>
									<a href="#">Submenu</a>
									<ul>
										<li><a href="#">Option One</a></li>
										<li><a href="#">Option Two</a></li>
										<li><a href="#">Option Three</a></li>
										<li><a href="#">Option Four</a></li>
									</ul>
								</li>
							</ul>
						</li>
						<li>
							<a href="#" class="submenu fa-angle-down">Board</a>
							<ul>
								<li><a href="/board/boardList.bo?num=1">REVIEW</a></li>
								<li><a href="/board/boardList.bo?num=2">1:1 문의하기</a></li>
								<li><a href="/board/boardList.bo?num=3">FAQ</a></li>
							</ul>
						</li>
						<li>
							<a href="#" class="submenu fa-angle-down">Admin</a>
							<ul>
								<li><a href="/admin/board.bo">게시판관리</a></li>
								<li><a href="/admin/boardlist.bo">게시물관리</a></li>
							</ul>
						</li>
						<!-- <li><a href="elements.html">Elements</a></li> -->
						<li><a href="#" class="button">Sign Up</a></li>
					</ul>
				</nav>
			</header>

		<!-- Main -->
			<section id="main" class="wrapper sidebar review left">
				<div class="inner">

					<header class="major">
						<h2>REVIEW</h2>
						<p>다양한 후기로 더 꼼꼼히</p>
					</header>

					<!-- Content -->
						<div class="content">
							<table border="1">
								<thead>
									<tr>
										<td>이미지</td>
										<td>닉네임</td>
										<td>제목</td>
										<td>날짜</td>
										<td>조회</td>
									</tr>
								</thead>
								<tbody>
									<tr onclick="location.href='/app/board/view.jsp'">
										<td><img src="/images/review1.jpg" class="img"></td>
										<td>PLAYER1</td>
										<td>TITLE</td>
										<td>2021-02-21</td>
										<td>0회</td>
									</tr>
									<tr onclick="location.href='/app/board/view.jsp'">
										<td><img src="/images/review2.jpg" class="img"></td>
										<td>PLAYER1</td>
										<td>TITLE</td>
										<td>2021-03-05</td>
										<td>0회</td>
									</tr>
									<tr onclick="location.href='/app/board/view.jsp'">
										<td><img src="/images/review3.jpg" class="img"></td>
										<td>PLAYER1</td>
										<td>TITLE</td>
										<td>2021-03-07</td>
										<td>0회</td>
									</tr>
								</tbody>
							</table>
							<a href="/app/board/write.jsp" class="button small">글쓰기</a>
						</div>

					<!-- Sidebar -->
						<div class="sidebar">

							<section>
								<h3>게시판</h3>
								<p>게시판을 한눈에<br>보고싶다면?</p>
								<footer>
									<ul class="actions">
										<li><a href="#" class="button">Learn More</a></li>
									</ul>
								</footer>
							</section>
							<hr />
							<ul>
								<a href="/app/board/review.jsp"><li>REVIEW</li></a>
								<a href="/app/board/qna.jsp"><li>1:1 문의하기</li></a>
								<a href="/app/board/faq.jsp"><li>FAQ</li></a>
							</ul>
						</div>

				</div>
			</section>

		<!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<p class="copyright">&copy; Untitled Corp. All rights reserved. Lorem ipsum dolor sit amet feugiat tempus aliquam.</p>
					<ul class="menu">
						<li><a href="#">Terms<span> of Use</span></a></li>
						<li><a href="#">Privacy<span> Policy</span></a></li>
						<li><a href="#">Legal<span> Information</span></a></li>
					</ul>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="/assets/js/jquery.min.js"></script>
			<script src="/assets/js/jquery.dropotron.min.js"></script>
			<script src="/assets/js/jquery.scrollex.min.js"></script>
			<script src="/assets/js/browser.min.js"></script>
			<script src="/assets/js/breakpoints.min.js"></script>
			<script src="/assets/js/util.js"></script>
			<script src="/assets/js/main.js"></script>

	</body>
</html>