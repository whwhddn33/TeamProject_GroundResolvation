<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE HTML>
<html>
<head>
<title>팀 정보</title>
<meta charset="utf-8" http-equiv="Content-Type" content="text/html"/>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/team/teamdesc.css" />
<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" /></noscript>
</head>
<body class="is-preload">
	<!-- Header -->
	<header id="header">
		<h1>
			<a href="${pageContext.request.contextPath}/index.jsp">Slate <span>by Pixelarity</span></a>
		</h1>
		<nav id="nav">
			<ul>
				<li><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
				<li><a href="#" class="submenu fa-angle-down">Page Layouts</a>
					<ul>
						<li><a href="left-sidebar.html">Left Sidebar</a></li>
						<li><a href="right-sidebar.html">Right Sidebar</a></li>
						<li><a href="no-sidebar.html">No Sidebar</a></li>
						<li><a href="#">Submenu</a>
							<ul>
								<li><a href="#">Option One</a></li>
								<li><a href="#">Option Two</a></li>
								<li><a href="#">Option Three</a></li>
								<li><a href="#">Option Four</a></li>
							</ul></li>
					</ul></li>
				<!-- <li><a href="elements.html">Elements</a></li> -->
				<li><a href="#" class="button">Sign Up</a></li>
			</ul>
		</nav>
	</header>

		<!-- Main -->
			<section id="main" class="wrapper sidebar left">
				<div class="inner">
<!-- 					<header class="major">
						<h2>Left Sidebar</h2>
					</header> -->

					<!-- 내용 -->
						<c:set var="teamName" value="${requestScope.teamName }"/>
						<c:set var="teamLocal" value="${requestScope.teamLocal }"/>
						<c:set var="teamLevel" value="${requestScope.teamLevel }"/>
						<div class="content teamdesc">
							<div class="title main-title">
							    <h2 class="title-name">팀 정보</h2>
  							</div>
  							<!-- title main-title end -->
  							<div class="desc_wrap">
	  							<div class="team_logo">
									<div class="logo_circle">
									<div class="logo_image">
	  								</div>
									<!-- logo_circle end -->							
									</div>
	  								<!-- logo_image end -->
	  							</div>	
	  							<!-- team_logo end -->
	  							<div class="team_info">
	  								<div class="info_wrap">
		  								<div class="team_name_view">
		  									${teamName }
		  								</div>
		  								<!-- team_name_view end -->
		  								<div class="info_list">
		  									<ul>
		  										<li>지역 : ${teamLocal }</li>
		  										<li>레벨 : ${teamLevel }</li>
		  									</ul>
		  								</div>
		  								<!-- info_list end -->
		  								<div class="join_button"> 
		  									<input type="button" value="가입하기" class="button small">
		  								</div>
		  								<!-- join_button end -->
	  								</div>
	  								<!-- info_wrap end -->
	  							</div>	
	  							<!-- team_info end -->
	  							<div class="middle_wrap">
		  							<div class="winning_rate">
		  								<div class="table_wrap">
			  								<table class="winning_table">
			  									<thead>
									              <tr>
									                <th rowspan="2">총</th>
									                <th rowspan="2">승</th>
									                <th rowspan="2">무</th>
									                <th rowspan="2">패</th>
									                <th rowspan="2">승률</th>
									                <th colspan="2">경기당</th>
									              </tr>
									              <tr>
									                <th>득점</th>
									                <th>실점</th>
									              </tr>
									            </thead>
									            <tbody>
									              <tr>
									                <td>-</td>
									                <td>-</td>
									                <td>-</td>
									                <td>-</td>
									                <td>-</td>
									                <td>-</td>
									                <td>-</td>
									              </tr>
									           </tbody>
			  								</table>
		  								</div>
		  								<!-- table_wrap end -->
		  							</div>
		  							<!-- winning_rate end -->
		  							<div class="score_chart">
		  								<div class="chart_wrap">
		  									<div class="chart" id="chart">
		  									</div>
		  									<!-- chart end -->
		  								</div>
		  								<!-- chart_wrap end -->
		  							</div>
		  							<!-- score_chart end -->
	  							</div>
	  							<!-- middle_wrap end -->
	  							<div class="member_wrap">
	  								<div class="blank_space">
	  									선수 명단
	  								</div>
	  								<!-- blank_space end -->
	  								<table class="member_list">
										<thead>
											<tr>
												<th width="7%">번호</th>
												<th width="53%">닉네임</th>
												<th width="20%">연령</th>
												<th width="20%">포지션</th>
											</tr>
										</thead>
										<tbody>
											<tr hegiht="50px" align="center">
												<td colspan="5">가입한 선수가 없습니다.</td>
											</tr>
										</tbody>
										<tfoot>
										</tfoot>
									</table>
	  							</div>
	  							<div class="schedule_wrap">
	  								<div class="blank_space">
	  									경기 일정
	  								</div>
	  								<!-- blank_space end -->
	  								<table class="match_schedule">
										<thead>
											<tr>
												<th width="7%">번호</th>
												<th width="20%">날짜</th>
												<th width="53%">상대 팀명</th>
												<th width="20%">경기 장소</th>
											</tr>
										</thead>
										<tbody>
											<tr hegiht="50px" align="center">
												<td colspan="5">경기 일정이 없습니다.</td>
											</tr>
										</tbody>
										<tfoot>
										</tfoot>
									</table>
	  							</div>
	  							<!-- schedule_wrap end -->
							</div>
							<!-- desc_wrap end -->
						</div>
						<!-- content end -->
<!-- Sidebar -->
						<div class="sidebar">
 							<div class="joined_team">
 								가입팀명
 							</div>
 							<!-- joined_team end -->
 							<div class="create_team">
 								새 팀 생성하기
 							</div>
 							<!-- create_team end -->
						</div>
				</div>
			</section>

	<!-- Scripts -->
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="../../assets/js/team/teamdesc.js"></script>
	<script src="../../assets/js/jquery.min.js"></script>
	<script src="../../assets/js/jquery.dropotron.min.js"></script>
	<script src="../../assets/js/jquery.scrollex.min.js"></script>
	<script src="../../assets/js/browser.min.js"></script>
	<script src="../../assets/js/breakpoints.min.js"></script>
	<script src="../../assets/js/util.js"></script>
	<script src="../../assets/js/main.js"></script>
	<script> var contextPath = "${pageContext.request.contextPath}";</script>
</body>
</html>