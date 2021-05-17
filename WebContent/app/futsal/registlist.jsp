<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Untitled</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/user/groundregist.css" />
</head>
<body class="is-preload">
	<!-- header -->
	<jsp:include page="/header.jsp"></jsp:include>

	<section id="main" class="wrapper sidebar left">
		<div id="registlistinner" class="inner">
			<div id=mainStringwrapper>
				<div id=mainString>등록구장목록</div>
				<a href="${pageContext.request.contextPath}/futsalFrontController/registlistLoad.fu?epuserid=whwhddn">리스트</a>
			</div>
				<div class=contents></div>
		</div>
	</section>



</body>
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
<script>
$(document).ready(function() {
	var epuserid = "${login_session.getEpuserid()}"
	var tags = '';
	var lastsign = 0;
		$.ajax({
			url : "${request.pageContext.contextPath}/futsalFrontController/registlistLoad.fu",
			type : "POST",
			contentType : "application/json",
			data : {"epuserid" : epuserid},
			dataType : "text"
		})
		.done(function(data) {
			data = JSON.parse(data);
			console.log("통신성공");
			console.log(data);
			tagsStack(data, tags);
		}).fail(function(xhr, error) {
			console.log("통신실패");
			$(".contents").text(".fail");
			console.log("code:" + xhr.status
					+ "\n" + "message:"
					+ xhr.responseText + "\n"
					+ "error:" + error);
		})
	function tagsStack(data) {
		console.log(data.json.length)
		tags += "<table><tr><th>번호</th><th>이미지</th><th>구장이름</th><th>주소</th><th>구장면적</th><th>해시태그</th><th>수정</th></tr>"
		for (i = 0; i < data.json.length; i++) {
			tags +="<tr>"
			tags +="<td>번호 : " +i+ "</td>"
			tags +="<td><img alt='이미지' src=''></td>"
			tags +="<td>구장이름 : "+ data.json[i].groundname + "</td>"
			tags +="<td>주소 : " + data.json[i].useraddr+ "</td>"
			tags +="<td>구장면적 : "+ data.json[i].groundarea + "</td>"
			tags +="<td>" + data.json[i].hashTag+ "</td>"
			tags +="<td><button id = 'modifybtn' type = button>수정</button><button id = 'deletebtn' type = button>삭제</button></td>"
			tags +="</tr>"
		}
		tags +="</table>";
		$(".contents").html(tags);
	}
});
</script>

</html>