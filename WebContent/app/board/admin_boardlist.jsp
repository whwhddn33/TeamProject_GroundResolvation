<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
	<title>게시물 관리하기</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="/assets/css/main.css" />
	<noscript><link rel="stylesheet" href="/assets/css/noscript.css" /></noscript>
</head>
<body class="is-preload">
		<c:set var="userid" value="${session_id.getUserid()}"/>
		<c:set var="list" value="${requestScope.BoardList}" />
		<!-- Header -->
			<header id="header">
				<a href="/index.jsp"><img src="/images/logo2.png" class="logo2"></span></a>
				<nav id="nav">
					<ul>
						<li><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
						<li><a href="#" class="submenu fa-angle-down">Page Layouts</a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/futsalFrontController/futsallist.fu">구장현황</a></li>
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
						<li><a href="${pageContext.request.contextPath}/team/TeamList.te" class="submenu fa-angle-down">Team</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/team/TeamList.te">팀 목록 보기</a></li>
								<li><a href="#">팀 생성하기</a></li>
							</ul>
						</li>
						<li>
							<a href="#" class="submenu fa-angle-down">Board</a>
							<ul>
							<li><a href="${pageContext.request.contextPath}/board/boardList.bo?num=2">1:1 문의하기</a></li>
							<li><a href="${pageContext.request.contextPath}/board/boardList.bo?num=3">FAQ</a></li>
							</ul>
						</li>
						<li>
							<a href="#" class="submenu fa-angle-down">Admin</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/admin/board.bo">게시판관리</a></li>
								<li><a href="${pageContext.request.contextPath}/admin/boardlist.bo">게시물관리</a></li>
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
						<h2>게시물 관리하기</h2>
					</header>
					<!-- Content -->
					<div class="content">
						<table border="1">
								<thead>
									<tr>
										<td>번호</td>
										<td>제목</td>
										<td>작성자</td>
										<td>날짜</td>
										<td>조회</td>
									</tr>
								</thead>
								<tbody>
								<c:choose>
									<c:when test="${list != null and fn:length(list) > 0 }">
										<c:forEach var="board" items="${list}">
											<tr onclick="location.href='/admin/adminView.bo?num=${board.getListnum()}'">
												<td>${board.getListnum() }</td>
												<td>${board.getListtitle() }</td>
												<td>${board.getUsernum() }</td>
												<td>${board.getListdate() }</td>
												<td>${board.getReadcnt() }회</td>
											</tr>
										</c:forEach>
									</c:when>
								</c:choose>
								</tbody>
							</table>
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