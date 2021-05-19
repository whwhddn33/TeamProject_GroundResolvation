<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML>
<!--
	Slate by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>1:1 문의하기</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/board/board.css" />
	</head>
	<body class="is-preload">
		<c:set var="list" value="${requestScope.BoardList}"/>
		<c:set var="nowPage" value="${requestScope.nowPage}"/>
		<c:set var="startPage" value="${requestScope.startPage }"/>
		<c:set var="endPage" value="${requestScope.endPage }"/>
		<c:set var="totalCnt" value="${requestScope.totalCnt }"/>
		<c:set var="totalPage" value="${requestScope.totalPage }"/>
				
		<!-- header -->
		<jsp:include page="/header.jsp"></jsp:include>
		

		<!-- Main -->
			<section id="main" class="wrapper qna">
				<div class="inner">
					<header class="major">
						<h2>1:1 문의하기</h2>
						<p>구매 전 확인하기</p>
					</header>

					<!-- Content -->
					<div class="content">
						<p>전체 글 개수 : ${totalCnt}</p>
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
											<tr onclick="location.href='${pageContext.request.contextPath}/board/boardView.bo?num=${board.getListnum()}'">
												<td>${board.getListnum()}</td>
												<td>${board.getListtitle()}</td>
												<td>${board.getUserid()}</td>
												<td>${board.getListdate()}</td>
												<td>${board.getReadcnt()}회</td>
											</tr>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<tr hegiht="50px" align="center">
											<td colspan="5">등록된 게시물이 없습니다.</td>
										</tr>
									</c:otherwise>
								</c:choose>
							</tbody>
						</table>
						<a href="${pageContext.request.contextPath}/board/boardWrite.bo?num=${category}" class="small btn1">글쓰기</a>
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