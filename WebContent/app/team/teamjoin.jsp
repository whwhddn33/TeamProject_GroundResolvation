<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>팀 가입</title>
<meta charset="utf-8" http-equiv="Content-Type" content="text/html"/>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/team/teamjoin.css" />
<link href="${pageContext.request.contextPath}/assets/css/user/indexBox.css" type="text/css" rel="stylesheet" />
</head>
<body class="is-preload">
		
		<!-- header -->
		<jsp:include page="/header.jsp"></jsp:include>
		

		<!-- Main -->
			<section id="main" class="wrapper sidebar left">
				<div class="inner">
<!-- 					<header class="major">
						<h2>Left Sidebar</h2>
					</header> -->

					<!-- 내용 -->
						<div class="content teamjoin">
							<div class="title main-title">
							    <h2 class="title-name">팀 가입</h2>
  							</div>
  							<!-- title main-title end -->
  							<div class="joinwrap">
  								<div class="formwrap">
	  								<form action="#" name="joinform" class="joinform" method="post">
	  									<label>이름
											<input type="text" name="username" class="username" />
											<span id="checkText"></span>
										</label>
										<label>닉네임
											<input type="text" name="nickname" class="nickname" />
										</label>
										<label>연락처
											<input type="tel" name="usertel" class="usertel" />
										</label>
										<label>신장
											<input type="text" name="userheight" class="userheight" />
										</label>
										<label>체중
											<input type="text" name="userweight" class="userweight" />
										</label>
										<label>주 사용 발
											<input type="text" name="usefoot" class="usefoot" />
										</label>
										<label>주 포지션
											<input type="text" name="mainposition" class="mainposition" />
										</label>
										<label>부 포지션
											<input type="text" name="minorposition" class="minorposition" />
										</label>
										<div class="actions_div" id="actions_div">
											<ul class="actions">
												<li><input type="button" value="생성" class="primary" onclick="javascript:sendIt();"/></li>
												<li><input type="reset" value="초기화"/></li>
											</ul>
	 									</div>
	 									<!-- actions_div end -->																																																													
	  								</form>
  								</div>
  								<!-- formwrap end -->
  							</div>
  							<!-- joinwrap end -->
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="../../assets/js/team/teamjoin.js"></script>
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