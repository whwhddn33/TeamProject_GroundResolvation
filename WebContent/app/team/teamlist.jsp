<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팀 목록</title>
<meta charset="utf-8" http-equiv="Content-Type" content="text/html" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/team/teamlist.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/team/teamsidebar.css" />
<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" /></noscript>
</head>
<body class="is-preload">
	<c:set var="list" value="${requestScope.teamList}" />
	<c:set var="nowPage" value="${requestScope.nowPage}" />
	<c:set var="startPage" value="${requestScope.startPage }" />
	<c:set var="endPage" value="${requestScope.endPage }" />
	<c:set var="totalCnt" value="${requestScope.totalCnt }" />
	<c:set var="totalPage" value="${requestScope.totalPage }" />
	
	
			
		<!-- header -->
		<jsp:include page="/header.jsp"></jsp:include>
		
	<!-- Main -->
 		<!-- 로그인 -->
			<table border="0" cellpadding="0" cellspacing="0" width="900px">
				<tr align="right" valign="middle">
					<td>${session_id.getUserid()}님환영합니다.&ensp;<a
						href="${pageContext.request.contextPath}/member/MemberLogout.me"
						class="button primary small">로그아웃</a>
					</td>
				</tr>
			</table>

	 	<!-- 팀 목록 -->
			<secion id="main" class="wrapper sidebar left">
				<div class="inner">
					<div class="content teamlist">
						<div class="title main-title">
								<h2 class="title-name">팀 목록</h2>
						</div>	
							<div class="team-table-wrapper">
								<table class="alt">
									<thead>
										<tr>
											<th width="50%">팀 명</th>
											<th width="20%">연령대</th>
											<th width="19%">지역</th>
											<th width="11%">팀 유형</th>
										</tr>
										<c:choose>
											<c:when test="${list!=null and fn:length(list)>0 }">
												<c:forEach var="team" items="${list}">
													<tr align="center" valign="middle"
														onmouseover="this.style.backgroundColor='#e0f7fa'"
														onmouseout="this.style.backgroundColor=''">
														<td><a href="${pageContext.request.contextPath}/team/TeamList.te?num=${team.getTeamNo()}">
																${team.getTeamName() } </a></td>
														<td>${team.getStartAge() } ~ ${team.getStopAge() }</td>
														<td>${team.getTeamLocal() }</td>
														<td>${team.getControlLabel() }</td>
													</tr>
												</c:forEach>
											</c:when>
											<c:otherwise>
												<tbody>
													<tr hegiht="50px" align="center">
														<td colspan="5">등록된 팀이 없습니다.</td>
													</tr>
												</tbody>
											</c:otherwise>
										</c:choose>
								</table>
							</div>
						<!-- 페이징 -->
									<div align="center">
										<ul class="pagination">
													<li><span class="button disabled">Prev</span></li>
													<li>
														<c:choose>
															<c:when test="${nowPage>1}">
																<a href="${pageContext.request.contextPath}/team/TeamList.te?page=${nowPage-1}" class="button disabled">이전</a>
															</c:when>
														</c:choose> <c:forEach var="i" begin="${startPage}" end="${endPage}">
														<c:choose>
															<c:when test="${i == nowPage }">
																	[${i}]
																</c:when>
															<c:otherwise>
																<a href="${pageContext.request.contextPath}/team/TeamList.te?page=${i}" class="page active">${i}</a>
															</c:otherwise>
														</c:choose>
														</c:forEach> <c:if test="${nowPage<totalPage}">
															<a href="${pageContext.request.contextPath}/team/TeamList.te?page=${nowPage+1}" class="button">다음</a>
														</c:if>
													</li>
													<li><a href="#" class="button">Next</a></li>
										</ul>
									</div>
						<!-- 검색하기 -->
							<form method="get" action="/team/teamlist" id="searchForm">
								<div class="search">
									<div class="searchwrap" >
										<div style="align:center">
											<select style="width:20%; float: left; margin-right:10px;" name="type">
												<option ${pageMaker.cri.type == null ? 'selected':''} value="">검색 기준</option>
												<option ${pageMaker.cri.type == 'T'?'selected':''} value="T">제목</option>
												<option ${pageMaker.cri.type == 'C'?'selected':''} value="C">내용</option>
												<option ${pageMaker.cri.type == 'W'?'selected':''} value="W">작성자</option>
												<option ${pageMaker.cri.type == 'TC'?'selected':''} value="TC">제목 또는 내용</option>
												<option ${pageMaker.cri.type == 'TW'?'selected':''} value="TW">제목 또는 작성자</option>
												<option ${pageMaker.cri.type == 'TCW'?'selected':''} value="TCW">제목 또는 내용 또는 작성자</option>
											</select>
											<input style="width:50%; float: left; margin-right:10px;" id="keyword" name="keyword" type="text" value="${pageMaker.cri.keyword}"/>
											<input id="pageNum" type="hidden" value="${pageMaker.cri.pageNum}"/>
											<input id="amount" type="hidden" value="${pageMaker.cri.amount }"/>
											<input style="width:20%; float: left; margin-right:10px;" type="button" value="검색하기" class="primary" onclick="javascript:sendIt();">
												<!-- <input type="search" name="searchteam" id="searchteam">
												<input type="button" value="검색하기" class="primary" onclick="javascript:sendIt();"> -->
										</div>
									</div>
								</div>
							</form>
						
					</div>
					<br>
			<script>
				console.log("totalPage"+'<%=request.getParameter("totalPage")%>');
				console.log("startPage"+'<%=request.getParameter("startPage")%>');
				console.log("endPage"+'<%=request.getParameter("endPage")%>');
				console.log("nowPage"+'<%=request.getParameter("nowPage")%>');
				console.log("totalCnt"+'<%=request.getParameter("totalCnt")%>');
				console.log("list"+'<%=request.getParameter("teamList")%>');
			</script>
		
				
			<!-- Sidebar -->
							<div class="sidebar">
									<a href="/" class="navbar-brand"><img src="/images/logo3.png" alt="" /></a>
										<div class="create_team" onclick="location.herf'#';">
												팀 생성하기
										</div>
										<div class="team_list" onclick="location.href='${pageContext.request.contextPath}/team/TeamList.te';" class="team_list">
												팀 목록보기
										</div>
										<div class="joined_team" onclick="location.herf'';">
												내 팀 보기
										</div>
							</div>
				</div>
			</secion>


			
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


















