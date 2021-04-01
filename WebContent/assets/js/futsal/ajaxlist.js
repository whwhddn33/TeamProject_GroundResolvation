var tryCount = 1;// 함수호출횟수
var tags = '';
var lastsign = 0;
console.log(tryCount);

$(document).ready(function(){
	callAjax();
	$(".custom_calendar_table").on("click", "td", function () {
		tryCount = 1;
		console.log();
		tags = '';
		lastsign = 0;
		if (lastsign ===0)callAjax();
	});
	$(window).scroll(function(){
		var scrollBottom = $(document).height() - $(window).height() - $(window).scrollTop();
		console.log(scrollBottom);
		if(scrollBottom ==0){
			console.log("0입니다 : "+scrollBottom);
			if (lastsign ===0)callAjax();
			console.log("스크롤시 : "+tryCount);
		}
	})
});

	function callAjax(){
		//연월
		var year = new Date().getFullYear(),
			month = new Date().getMonth() + 1;
		
		//선택된 날짜의 연월일
		var selectDay = $('.select_day').text();
			selectDay = selectDay<10?'0'+selectDay:selectDay;
		//
		var selectMonth = month<10?'0'+month:month;
			selectYear = year,
			selectDate = ''.concat(selectYear,selectMonth,selectDay);

		// 스크립트 contextPath
		var ctx = window.location.pathname.substring(0, window.location.pathname.indexOf("/",2));
		
		$.ajax({
			url : ctx+"/futsalFrontController/futsallistLoad.fu",
			type: "GET",
			data: {"selectDate":selectDate , "tryCount" : tryCount},
			dataType:"JSON",
		})
		.done(function(data){
			console.log(tryCount);
			console.log("통신성공");
			console.log(data);
			tagsStack(data,tags);
			tryCount++;
			console.log("통신성공시 "+tryCount);
			console.log("json 로그 : " + data.json.length);
			if(data.json.length == 0 && lastsign ===0){
				tags += "끝까지 다봤어요!<a href=\"#\">[맨위로]</a>"
				lastsign ++;
				$(".content").html(tags);
			}
		})
		.fail(function(xhr,error){
			console.log(tryCount);
			console.log("통신실패");
			$(".content").text(".fail");
			console.log("code:"+xhr.status+"\n"+"message:"+xhr.responseText+"\n"+"error:"+error);
		})
	}
	function tagsStack(data) {
		for(i = 0; i <data.json.length; i++){
			tags += '<div id = '+((tryCount*6-5)+i)+' style=\"background-color : aqua\" \"color : black\">';
			tags += "content"+((tryCount*10-9)+i)+"<br>";
			tags += "번호 : "+data.json[i].groundnum+"<br>";
			tags += "구장이름 : "+data.json[i].groundname+"<br>";
			tags += "주소 : "+data.json[i].groundlocation+"<br>";
			tags += "가격 : "+data.json[i].groundfee+"<br>";
			tags += "<input type = button value = 예약하기 style = \"color : black\"></input>";
			tags += "</div>"+"<br>";
			$(".content").html(data.date.date+tags);
		}
		console.log("stacktag : "+ tryCount);
	}
