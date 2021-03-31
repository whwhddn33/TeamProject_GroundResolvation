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
		<title>글보기</title>
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
			<section id="main" class="wrapper">
				<div class="inner">

					<header class="major">
						<h2>VIEW</h2>
					</header>
						<section>
							<div class="table-wrapper">
								<table>
									<thead>
										<tr>
											<th>글번호</th>
											<th>작성자</th>
											<th>이메일</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>김사과</td>
											<td>test@naver.com</td>
										</tr>
									</tbody>
								</table>
								<table>
									<thead>
										<tr>
											<th>제목</th>
											<th>작성일</th>
											<th>조회수</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>TITLE</td>
											<td>2021-03-05</td>
											<td>0회</td>
										</tr>
									</tbody>
								</table>
								<table class="ContentWrap">
									<thead>
										<tr>
											<th>내용</th>
										</tr>
									</thead>
								</table>
								<div class="contentText">Ante turpis integer aliquet porttitor.</div>
								<div>
									<a href="/app/board/modify.jsp" class="button primary small">수정</a>
									<a onclick="Delete()" class="button small mt-70">삭제</a>
								</div>
							</div>
						</section>
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
			<script>
				function Delete(){
					confirm("정말 삭제하시겠습니까?");
				}
			</script>
	</body>
</html>