<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<!--
	Slate by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>글쓰기</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/board/board.css" />
		<noscript><link rel="stylesheet" href="/assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">
		<c:set var="userid" value="${session_id.getUserid()}" />
		<c:set var="num" value="${requestScope.num}"/>
				
		<!-- header -->
		<jsp:include page="/header.jsp"></jsp:include>
		

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="inner">

					<header class="major">
						<h2>글쓰기</h2>
						<p>게시판의 글을 작성해보세요.</p>
					</header>
						<section>
							<form method="post" action="/board/boardWriteOk.bo?num=${num}" enctype="multipart/form-data">
								<div class="row gtr-uniform writeWrap">
									<div class="col-12">
										<label for="title">제목</label>
										<input type="text" name="title" id="title" value="" placeholder="제목을 입력하세요" />
									</div>
									<div class="col-6 col-12-xsmall">
										<label for="name">아이디</label>
										<input type="text" name="name" id="name" value="${userid}" placeholder="Name" />
									</div>
									<div class="col-12">
										<label for="file">첨부파일</label>
										<input type="file" name="file" id="file" />
									</div>
									<div class="col-12 messageWrap">
										<label for="message">Content</label>
										<textarea name="content" id="message" placeholder="내용을 입력하세요." rows="6"></textarea>
									</div> 
									<input type="hidden" name="num" id="num" value="${num}"/>
									<div class="col-12">
										<ul class="actions">
											<li><button type="sumit" class="small btn2" />전송</button></li>
											<li><button type="reset" class="small btn3" />초기화</button></li>
										</ul>
									</div>
								</div>
							</form>
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

	</body>
</html>