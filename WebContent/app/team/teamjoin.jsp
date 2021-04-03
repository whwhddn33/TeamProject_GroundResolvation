<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>새 팀 생성</title>
<meta charset="utf-8" http-equiv="Content-Type" content="text/html"/>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/team/teamjoin.css" />
<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" /></noscript>
</head>
<body class="is-preload">
	<!-- Header -->
	<header id="header">
		<h1>
			<a href="index.jsp">Slate <span>by Pixelarity</span></a>
		</h1>
		<nav id="nav">
			<ul>
				<li><a href="index.jsp">Home</a></li>
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
						<div class="content teamjoin">
							<div class="title main-title">
							    <h2 class="title-name">새 팀 생성</h2>
  							</div>
  							<!-- title main-title end -->
  							<div class="row gtr-uniform">
	  							<form class="teamjoin" name="teamjoin" method="post" action="${pageContext.request.contextPath}/team/TeamJoinOk.te">
	  								<div class="col-5">
											<label for="teamname" style="float: left;">팀명 </label>
											<p class="help-block" style="float: left;">한글, 영어, 숫자, 띄어쓰기 및 _만 가능합니다.</p>
											<input type="text" name="teamname" id="teamname" onkeyup="checkName()"/>
											 <span id="checkText"></span>
									</div>
									<!-- 팀명 end -->
									<div class="col-5">
											<label for="captainname">주장이름</label>
											<input type="text" name="captainname" id="captainname" />	
									</div>
									<!-- 주장이름 end -->	
									<div class="col-6 col-12-xsmall">
												<label for="teamtel">전화번호</label>
												<input type="tel" name="teamtel" id="teamtel" />
									</div> 	
									<!-- 전화번호 end -->
									<div class="col-6 col-12-xsmall">
											<label for="teamlocal">지역 선택</label>
											<select name="teamlocal" id="teamlocal">
													<option value="non_select">- 지역 선택  -</option>
													<option>서울특별시</option>
													<option>서울시 강남구</option>
													<option>서울시 강동구</option>
													<option>서울시 강북구</option>
													<option>서울시 강서구</option>
													<option>서울시 관악구</option>
													<option>서울시 광진구</option>
													<option>서울시 구로구</option>
													<option>서울시 금천구</option>
													<option>서울시 노원구</option>
													<option>서울시 도봉구</option>
													<option>서울시 동대문구</option>
													<option>서울시 동작구</option>
													<option>서울시 마포구</option>
													<option>서울시 서대문구</option>
													<option>서울시 서초구</option>
													<option>서울시 성동구</option>													
													<option>서울시 성북구</option>
													<option>서울시 송파구</option>
													<option>서울시 양천구</option>
													<option>서울시 영등포구</option>
													<option>서울시 용산구</option>
													<option>서울시 은평구</option>
													<option>서울시 종로구</option>
													<option>서울시 중구</option>
													<option>서울시 중랑구</option>
													<option>경기도 고양시</option>
													<option>경기도 과천시</option>
													<option>경기도 광명시</option>
													<option>경기도 광주시</option>													
													<option>경기도 구리시</option>
													<option>경기도 군포시</option>
													<option>경기도 김포시</option>													
													<option>경기도 남양주시</option>
													<option>경기도 동두천시</option>
													<option>경기도 부천시</option>
													<option>경기도 성남시</option>
													<option>경기도 수원시</option>
													<option>경기도 시흥시</option>
													<option>경기도 안산시</option>
													<option>경기도 안성시</option>
													<option>경기도 안양시</option>
													<option>경기도 양주시</option>
													<option>경기도 여주시</option>
													<option>경기도 오산시</option>
													<option>경기도 용인시</option>
													<option>경기도 의왕시</option>
													<option>경기도 의정부시</option>
													<option>경기도 이천시</option>
													<option>경기도 파주시</option>
													<option>경기도 평택시</option>
													<option>경기도 포천시</option>
													<option>경기도 하남시</option>
													<option>경기도 화성시</option>
													<option>인천광역시</option>
													<option>전라남도 강진군</option>
													<option>경상남도 거제시</option>
													<option>경상남도 거창군</option>
													<option>경상북도 경산시</option>
													<option>경상북도 경주시</option>
													<option>충청남도 계룡시</option>
													<option>경상북도 고령군</option>
													<option>경상남도 고성군</option>
													<option>전라북도 고창군</option>
													<option>전라남도 고흥군</option>
													<option>전라남도 곡성군</option>
													<option>충청남도 공주시</option>
													<option>전라남도 광양시</option>
													<option>광주광역시 광주시</option>
													<option>충청북도 괴산군</option>
													<option>전라남도 구례군</option>
													<option>경상북도 구미시</option>
													<option>전라북도 군산시</option>
													<option>경상북도 군위군</option>
													<option>충청남도 금산군</option>
													<option>기타지역</option>
													<option>전라북도 김제시</option>
													<option>경상북도 김천시</option>
													<option>경상남도 김해시</option>
													<option>전라남도 나주시</option>
													<option>전라북도 남원시</option>
													<option>경상남도 남해군</option>
													<option>충청남도 논산시</option>
													<option>충청북도 단양군</option>
													<option>전라남도 담양군</option>
													<option>충청남도 당진시</option>
													<option>대구광역시 대구시</option>
													<option>대전광역시 대전시</option>
													<option>전라남도 목포시</option>
													<option>전라남도 무안군</option>
													<option>전라북도 무주군</option>													
													<option>경상북도 문경시</option>
													<option>경상남도 밀양시</option>
													<option>충청남도 보령시</option>
													<option>전라남도 보성군</option>
													<option>충청북도 보은군</option>
													<option>경상북도 봉화군</option>
													<option>부산광역시 부산시</option>
													<option>전라북도 부안군</option>
													<option>충청남도 부여군</option>
													<option>경상남도 사천시</option>
													<option>경상남도 산청군</option>
													<option>경상북도 상주시</option>
													<option>제주도 서귀포시</option>
													<option>충청남도 서산시</option>													
													<option>충청남도 서천군</option>
													<option>경상북도 성주군</option>
													<option>세종특별자치시 세종시</option>
													<option>전라북도 순창군</option>
													<option>전라남도 순천시</option>
													<option>전라남도 신안군</option>
													<option>충청남도 아산시</option>
													<option>경상북도 안동시</option>
													<option>경상남도 양산시</option>
													<option>전라남도 여수시</option>
													<option>전라남도 영광군</option>
													<option>경상북도 영덕군</option>
													<option>충청북도 영동군</option>
													<option>전라남도 영암군</option>													
													<option>경상북도 영양군</option>
													<option>경상북도 영주시</option>
													<option>경상북도 영천시</option>
													<option>충청남도 예산군</option>
													<option>경상북도 예천군</option>
													<option>충청북도 옥천군</option>
													<option>전라남도 완도군</option>
													<option>전라북도 완주군</option>
													<option>경상북도 울릉군</option>
													<option>울산광역시 울산시</option>
													<option>경상북도 울진군</option>
													<option>충청북도 음성군</option>
													<option>경상남도 의령군</option>
													<option>경상북도 의성군</option>													
													<option>전라북도 익산시</option>
													<option>전라북도 임실군</option>
													<option>전라남도 장성군</option>
													<option>전라북도 장수군</option>
													<option>전라남도 장흥군</option>
													<option>전라북도 전주시</option>
													<option>전라북도 정읍시</option>
													<option>제주도 제주시</option>
													<option>충청북도 제천시</option>
													<option>충청북도 증평군</option>
													<option>전라남도 진도군</option>
													<option>전라북도 진안군</option>
													<option>경상남도 진주시</option>
													<option>충청북도 진천군</option>													
													<option>경상남도 창녕군</option>
													<option>경상남도 창원시</option>
													<option>충청남도 천안시</option>
													<option>경상북도 청도군</option>
													<option>경상북도 청송군</option>
													<option>충청남도 청양군</option>
													<option>충청북도 청주시</option>
													<option>충청북도 충주시</option>
													<option>경상북도 칠곡군</option>
													<option>충청남도 태안군</option>
													<option>경상남도 통영시</option>
													<option>경상북도 포항시</option>
													<option>경상남도 하동군</option>
													<option>경상남도 함안군</option>													
													<option>경상남도 함양군</option>
													<option>전라남도 함평군</option>
													<option>경상남도 합천군</option>
													<option>전라남도 해남군</option>
													<option>충청남도 홍성군</option>
													<option>전라남도 화순군</option>
											</select>
								 	</div>
									 <!-- 지역선택 end -->	
								 	<div class="col-5">
											<label for="teamfoundyear">창단 년도</label>
											<select name="teamfoundyear" id="teamfoundyear">
														<option value="non_select">- 창단 년도  -</option>
														<option value="2021">2021</option>
														<option value="2020">2020</option>
														<option value="2019">2019</option>
														<option value="2018">2018</option>
														<option value="2017">2017</option>
														<option value="2016">2016</option>
														<option value="2015">2015</option>
														<option value="2014">2014</option>
														<option value="2013">2013</option>
														<option value="2012">2012</option>
														<option value="2011">2011</option>
														<option value="2010">2010</option>
														<option value="2009">2009</option>
														<option value="2008">2008</option>
														<option value="2007">2007</option>
														<option value="2006">2006</option>
														<option value="2005">2005</option>
														<option value="2004">2004</option>
														<option value="2003">2003</option>
														<option value="2002">2002</option>
														<option value="2001">2001</option>
														<option value="2000">2000</option>
														<option value="1999">1999</option>
														<option value="1998">1998</option>
														<option value="1997">1997</option>
														<option value="1996">1996</option>
														<option value="1995">1995</option>
														<option value="1994">1994</option>
														<option value="1993">1993</option>
														<option value="1992">1992</option>
														<option value="1991">1991</option>
														<option value="1990">1990</option>
														<option value="1989">1989</option>
														<option value="1988">1988</option>
														<option value="1987">1987</option>
														<option value="1986">1986</option>
														<option value="1985">1985</option>
														<option value="1984">1984</option>
														<option value="1983">1983</option>
														<option value="1982">1982</option>
														<option value="1981">1981</option>
														<option value="1980">1980</option>
														<option value="1979">1979</option>
														<option value="1978">1978</option>
														<option value="1977">1977</option>
														<option value="1976">1976</option>
														<option value="1975">1975</option>
														<option value="1974">1974</option>
														<option value="1973">1973</option>
														<option value="1972">1972</option>
														<option value="1971">1971</option>
														<option value="1970">1970</option>
														<option value="1969">1969</option>
														<option value="1968">1968</option>
														<option value="1967">1967</option>
														<option value="1966">1966</option>
														<option value="1965">1965</option>
														<option value="1964">1964</option>
														<option value="1963">1963</option>
														<option value="1962">1962</option>
														<option value="1961">1961</option>
											</select>
									</div>
									<!-- 창단년도 end -->
									<div class="col-12">
											<label for="teamlevel" style="float: left;">실력</label>
											<p class="help-block" style="float: left;">재미있는 경기를 위해 정직하게 입력해주세요.</p>
												<select name="teamlevel" id="teamlevel">
													<option value="non_select">- 실력 선택 -</option>
													<option>상</option>
													<option>중상</option>
													<option>중</option>
													<option>중하</option>
													<option>하</option>
												</select>
	  								</div>
									<!-- 실력 end -->
									<div class="col-xs-offset-2 col-xs-4">
											<label for="startage">나이(부터)</label>
											<select name="startage" id="startage">
												<option value="non_select">- 나이 선택 -</option>
												<option>10대 초반</option>
												<option>10대 중반</option>
										 		<option>10대 후반</option>
												<option>20대 초반</option>
												<option>20대 중반</option>
												<option>20대 후반</option>
												<option>30대 초반</option>
												<option>30대 중반</option>
												<option>30대 후반</option>
												<option>40대 초반</option>
												<option>40대 중반</option>
												<option>40대 후반</option>
												<option>50대 초반</option>
												<option>50대 중반</option>
											</select>
									</div>
									<!-- 나이(부터) end -->
									<div class="col-xs-offset-2 col-xs-4">
											<label for="stopage">나이(까지)</label>
											<select name="stopage" id="stopage">
												<option value="non_select">- 나이 선택 -</option>
												<option>10대 초반</option>
												<option>10대 중반</option>
										 		<option>10대 후반</option>
												<option>20대 초반</option>
												<option>20대 중반</option>
												<option>20대 후반</option>
												<option>30대 초반</option>
												<option>30대 중반</option>
												<option>30대 후반</option>
												<option>40대 초반</option>
												<option>40대 중반</option>
												<option>40대 후반</option>
												<option>50대 초반</option>
												<option>50대 중반</option>
											</select>
									</div>
									<!-- 나이(까지) end -->  
									<div class="col-6 col-12-xsmal">
											<label for="uniformcolor">유니폼색</label>
											<input type="text" name="uniformcolor" id="uniformcolor" placeholder="ex) 파란색 상의"/>	
									</div>
									<!-- 유니폼색 end -->	
									<div class="col-6 col-12-xsmal">
											<label for="uniformaway">색 어웨이</label>
											<input type="text" name="uniformaway" id="uniformaway" placeholder="ex) 노란 줄무늬"/>	
									</div>
									<!-- 색 어웨이 end -->
									<div class="col-6 col-12-xsmal">
											<label for="controllabel">팀 유형</label>
											<input type="text" name="controllabel" id="controllabel" placeholder="ex) 동아리 풋살팀"/>	
									</div>
									<div class="col-6 col-12-xsmal">
											<label for="teamlogo">팀 로고</label>
											<div class="filebox"> 
												<input class="upload-name" value="파일선택" disabled="disabled">
												<label for="ex_filename">업로드</label>
												<input type="file" id="ex_filename" class="upload-hidden">
											</div>
											<!-- filebox end -->
									</div>
									<!-- 팀 유형 end -->
 									<div class="col-12">
											<ul class="actions">
												<li><input type="button" value="생성" class="primary" onclick="javascript:sendIt();"/></li>
												<li><input type="reset" value="초기화"/></li>
											</ul>
 									</div>
									<!-- 전송 end -->
	  							</form>	
	  							<!-- jointeam end  -->
  							</div>
  							<!-- row gtr-uniform end -->
						</div>
						<!-- content end -->

<!-- Sidebar -->
						<div class="sidebar">

<!-- 							<section>
								<h3>Magna Feugiat</h3>
								<p>Sed tristique purus vitae volutpat commodo suscipit amet sed nibh. Proin a ullamcorper sed blandit. Sed tristique purus vitae volutpat commodo suscipit ullamcorper commodo suscipit amet sed nibh. Proin a ullamcorper sed blandit..</p>
								<footer>
									<ul class="actions">
									</ul>
								</footer>
							</section>
							<hr />
							<section>
								<a href="#" class="image fit"><img src="images/pic01.jpg" alt="" /></a>
								<h3>Amet Lorem Tempus</h3>
								<p>Sed tristique purus vitae volutpat commodo suscipit amet sed nibh. Proin a ullamcorper sed blandit. Sed tristique purus vitae volutpat commodo suscipit ullamcorper sed blandit lorem ipsum dolore.</p>
								<footer>
									<ul class="actions">
									</ul>
								</footer>
							</section> 
						</div>-->
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