<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
	<title>게시판 관리하기</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
	<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" /></noscript>
	
</head>
<body class="is-preload">
		<c:set var="list" value="${requestScope.BoardList}" />
		<!-- Header -->
			<header id="header">
				<a href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/images/logo2.png" class="logo2"></span></a>
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
						<h2>게시판 관리하기</h2>
					</header>
					<a onclick="addBoard()" class="button small">추가</a>
					<!-- Content -->
					<div class="content">
						<!-- Board Menu Start -->
						<div class="AdminBoardWrap"> 
							<div class="parentMenu">
								<c:choose>
									<c:when test="${list != null and fn:length(list) > 0 }">
										<c:forEach var="board" items="${list}">
											<div class="item"><p>${board.getBoardname()}<a onclick="Delete(${board.getBoardnum()})">삭제</a><a onclick="modify(${board.getBoardnum()})">수정</a></p></div>
										</c:forEach>
									</c:when>
								</c:choose>
							</div>
						</div>
						<form action="/board/adminWrite.bo" method="post" name="boardForm" class="boardForm">
							<input type="hidden" name="name" class="name"/>
						</form>
						<form action="/board/adminDelete.bo" method="post" name="delForm" class="delForm">
							<input type="hidden" name="num" class="num"/>
						</form>
						<form action="/board/adminModify.bo" method="post" name="modiForm" class="modiForm">
							<input type="hidden" name="modinum" class="modinum"/>
							<input type="hidden" name="modiname" class="modiname"/>
						</form>
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
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script>
		function addBoard(){
			let datas = prompt("추가할 게시판의 이름을 입력해주세요");
			$(".name").val(datas);
			$(".boardForm").submit();
		}
		function modify(num){
			let ans = prompt("수정할 이름을 입력해주세요");
			if(ans){
				$(".modinum").val(num);
				$(".modiname").val(ans);
				$(".modiForm").submit();
			}
		}
		function Delete(num){
			let ans = confirm("정말 삭제하시겠습니까?");
			if(ans){
				$(".num").val(num);
				$(".delForm").submit();
			}
		}
	</script>
	</body>
</html>