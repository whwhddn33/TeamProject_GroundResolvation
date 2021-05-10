<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<!--
   Slate by Pixelarity
   pixelarity.com | hello@pixelarity.com
   License: pixelarity.com/license
-->
<html>
<head>
<title>Untitled</title>
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/assets/css/futsal/reservation.css" />
   <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/board/board.css" />
<noscript>
   <link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/futsal/calendar.css" />
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<style type="text/css"></style>
</head>
<body class="is-preload">

   <!-- Header -->
   <header id="header">
      <h1>
         <a href="index.html">Slate <span>by Pixelarity</span></a>
      </h1>
      <nav id="nav">
         <ul>
            <li><a href="index.html">Home</a></li>
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
                     </ul>
                    </li>
               </ul>
            </li>
            
            <li><a href="elements.html">Elements</a></li>
            <li><a href="#" class="button">Sign Up</a></li>
         </ul>
      </nav>
   </header>
   <!-- main -->
    <section id="main" class="wrapper sidebar left">
        
        <div class="inner" id="reservationinner">
        

            <div class="first">
                <div>
                    <img alt="" src="" class="container_img">
                </div>
            </div>
        


        
            <div id = second>
                <div id=groundinfo>
                    <h2>구장이름</h2>
                        <div class = content>성남종합운동장</div>
                    <h2>주소</h2>
                        <div class = content>경기도 성남시 </div>
                    <h2>길찾기</h2>
                        <div class = content>길찾기 api들어갈 자리</div>
                </div>

                <div id = hashtag>
                    해쉬태그 넣을자리
                </div>
            </div>
        


            <div id = third>
                <div class="calander">
                    <div id = calendarForm></div>
                </div>
                <div class="reservation">
                    <table style="text-align: center;">
                            <thead>
                                <tr>
                                	<td>선택</td>
                                    <td>시간대</td>
                                    <td>대관요금</td>
                                    <td>대관상태</td>
                                </tr>
                            </thead>
                            <tbody>
                	
                                <tr>
                                    <td ><input type="checkbox" class="reservation_time" style=""> </td>
                                    <td>00:00~02:00</td>
                                    <td>95000</td>
                                    <td>예약가능</td>
                                </tr>
                            </tbody>
                    </table>
                </div>
            </div>
            <div class="last">
            	<div class="point">
            			 <div class="p_point">풋살장 이용객을 위한 혜택</div>
            			<div id = mile style="display: flex; width: 100%;">
                    	<i class="fas fa-donate" style="font-size: 2em; margin-right: 10px;"></i>
                    	<div style="width: 70%; ">적립금</div> 
                    	<div style="width: 30%; text-align: right;">100원</div>
                	</div>
            	</div>
            		<div id = reservebtn> 
                <button type="button"><a href="#" class="reservationbtn">예약하기<a></button> 
            </div>
            
            
            
            
            
            </div>
            	
            
            
			
					 
			<div class="review wrapper">
				<header class="major">
					<h2>REVIEW</h2>
					<p>다양한 후기로 더 꼼꼼히</p>
				</header>

				<!-- Content -->
				<div class="contents">
					<table border="1">
						<thead>
							<tr>
								<td>이미지</td>
								<td>닉네임</td>
								<td>제목</td>
								<td>날짜</td>
								<td>조회</td>
							</tr>
						</thead>
						<tbody>
							<tr onclick="location.href='/app/board/view.jsp'">
								<td><img src="/images/review1.jpg" class="img"></td>
								<td>PLAYER1</td>
								<td>TITLE</td>
								<td>2021-02-21</td>
								<td>0회</td>
							</tr>
							<tr onclick="location.href='/app/board/view.jsp'">
								<td><img src="/images/review2.jpg" class="img"></td>
								<td>PLAYER1</td>
								<td>TITLE</td>
								<td>2021-03-05</td>
								<td>0회</td>
							</tr>
							<tr onclick="location.href='/app/board/view.jsp'">
								<td><img src="/images/review3.jpg" class="img"></td>
								<td>PLAYER1</td>
								<td>TITLE</td>
								<td>2021-03-07</td>
								<td>0회</td>
							</tr>
						</tbody>
					</table>
					<a href="/board/boardWrite.bo" class="small btn1">글쓰기</a>
				</div>
			</div>
        </div>
        
	
    </section>


</body>
<script src="${pageContext.request.contextPath}/assets/js/futsal/calenderMaker.js"></script>
<script>
/*   */


</script>
</html>
