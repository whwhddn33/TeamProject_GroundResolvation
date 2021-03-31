<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../../assets/css/main.css" />
<link rel="stylesheet" href="../../assets/css/team/applyteam.css" />
<noscript>
	<link rel="stylesheet" href="../../assets/css/noscript.css" />
</noscript>
</head>
<body>
	
	<!-- 로그인 정보 -->
		<table border="0" cellpadding="0" cellspacing="0" width="900px">
			<tr align="right" valign="middle">
				<td>${session_id.getUserid()}님환영합니다. 
					<a href="${pageContext.request.contextPath}/member/MemberLogout.me" class="button primary small">로그아웃</a>
				</td>
			</tr>
		</table>

		<!-- 게시판 리스트 -->
		<table class="alt">
			<tr align="center" valign="middle">
				<td><h3>팀 지원 게시판</h3></td>
			</tr>
			<tr align="right">
				<td>전체 글 개수 : ${totalCnt}</td>
			</tr>
		</table>
		<div class="table-wrapper">
				<table class="alt">
					<thead>
						<tr>
							<th width="7%">번호</th>
							<th width="50%">팀 명</th>
							<th width="17%">주장</th>
							<th width="19%">지역</th>
							<th width="7%">팀 유형</th>
						</tr>
					</thead>
					<tbody>
						<tr hegiht="50px" align="center">
							<td colspan="5">등록된 게시물이 없습니다.</td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2"></td>
						</tr>
					</tfoot>
				</table>
		</div>
		<%-- <table border="1" cellspacing="0" cellpadding="0" width="900px">
			<tr align="center">
				<td width="7%">번호</td>
				<td width="50%">팀 명</td>
				<td width="17%">주장</td>
				<td width="19%">지역</td>
				<td width="7%">팀 유형</td>
			</tr>
						<tr align="center" valign="middle"
						onmouseover="this.style.backgroundColor='#e0f7fa'"
						onmouseout="this.style.backgroundColor=''">
							<td height="24px">${board.getBoardnum() }</td>
							<td><a href = "${pageContext.request.contextPath}/board/BoardView.bo?num=${board.getBoardnum()}">
							${board.getBoardtitle() }
							</a></td>
							<td>${board.getUserid() }</td>
							<td>${board.getBoarddate() }</td>
							<td>${board.getBoardreadcount() }</td>
						</tr>
					<tr hegiht="50px" align="center">
						<td colspan="5">등록된 게시물이 없습니다.</td>
					</tr>
		</table> --%>
		<br>
		<script>
		console.log("totalPage"+'<%=request.getParameter("totalPage")%>');
		console.log("startPage"+'<%=request.getParameter("startPage")%>');
		console.log("endPage"+'<%=request.getParameter("endPage")%>');
		console.log("nowPage"+'<%=request.getParameter("nowPage")%>');
		console.log("totalCnt"+'<%=request.getParameter("totalCnt")%>');
		console.log("list"+'<%=request.getParameter("boardList")%>');
		</script>
		<table border="0" cellpadding="0" cellspacing="0" width="900px">
			<tr align="center" valign="middle">
				<ul align="center" valign="middle" class="pagination">
								<li><span class="button disabled">Prev</span></li>
								<li><a href="${pageContext.request.contextPath}/board/BoardList.bo?page=${i}" class="page active">${i}</a></li>
								<li><a href="#" class="page active">1</a></li>
								<li><a href="#" class="page">2</a></li>
								<li><a href="#" class="page">3</a></li>
								<li><span>…</span></li>
								<li><a href="#" class="page">8</a></li>
								<li><a href="#" class="page">9</a></li>
								<li><a href="#" class="page">10</a></li>
								<li><a href="${pageContext.request.contextPath}/board/BoardList.bo?page=${nowPage+1}" class="button">Next</a></li>
				</ul>
				<td>
								<a href="${pageContext.request.contextPath}/board/BoardList.bo?page=${i}">[${i}]</a>
						<a href="${pageContext.request.contextPath}/board/BoardList.bo?page=${nowPage+1}">[다음]</a>
				</td>
			</tr>
		</table>
</body>
</html>


















