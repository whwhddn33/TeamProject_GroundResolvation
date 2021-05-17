<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/assets/css/user/indexBox.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<!-- Header -->
	<div id = indexBtn style="display: none"></div>
		<header id="header">
		
		<h1>
			<a href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/images/logo.png" class="logo"></a>
		</h1>
		
		<nav id="nav">
			<ul>
				<li><a href="${pageContext.request.contextPath}">Home</a></li>
				<li><a href="#" class="submenu fa-angle-down">Page Layouts</a>
					<ul>
						<li><a href="${pageContext.request.contextPath}/futsalFrontController/futsallist.fu">구장현황</a></li>
						<li><a href="${pageContext.request.contextPath}/TeamFrontController/TeamList.te">팀 목록 보기</a></li>
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

</body>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/loginsingup.js"></script>
</html>