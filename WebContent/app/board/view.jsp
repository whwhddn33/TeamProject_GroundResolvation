<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
		<link rel="stylesheet" href="/assets/css/board/board.css" />
		<noscript><link rel="stylesheet" href="/assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<header id="header">
				<a href="/index.jsp"><img src="/images/logo2.png" class="logo2"></span></a>
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
			<section id="main" class="wrapper boardView">
				<div class="inner">

					<header class="major">
						<h2>게시글 보기</h2>
					</header>
						<section>
							<div class="titleWrap">
								${board.getListtitle()}
							</div>
							<div class="table-wrapper">
								<table>
									<thead>
										<tr>
											<th>글번호</th>
											<th>제목</th>
											<th>작성자</th>
										</tr>
									</thead>
									<tbody style="background:#eaeaea">
										<tr>
											<td>${board.getListnum() }</td>
											<td>${board.getListtitle() }</td>
											<td>${board.getUserid() }</td>
										</tr>
									</tbody>
								</table>
								<table style="border-top:#eaeaea solid 2px">
									<thead>
										<tr>
											<th>날짜</th>
											<th>조회</th>
										</tr>
									</thead>
									<tbody style="background:#eaeaea">
										<tr>
											<td>${board.getListdate() }</td>
											<td>${board.getReadcnt() }회</td>
										</tr>
									</tbody>
								</table>
								<div class="viewWrap">
									<div>${board.getListcontents() }</div>
								</div>
								<c:choose>
									<c:when test="${files.size() != 0 and files != null}">
										<div class="imgWrap">
											<div>첨부파일</div>
											<div>
												<a href="/board/fileDownload.bo?
												filename=${files.getFilename()}&realname=${files.getRealname()}">
												${files.getRealname()}
												</a>
											</div>
										</div>
									</c:when>
									<c:otherwise>
										<div class="imgWrap">
											<div>첨부 파일이 없습니다.</div>
										</div>
									</c:otherwise>
								</c:choose>
								<div class="btnWrap">
									<a href="/board/listModi.bo?num=${board.getListnum() }" class="btn2 small">수정</a>
									<a onclick="Delete('/board/listDel.bo?num=${board.getListnum()}')" class="btn3 small">삭제</a>
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