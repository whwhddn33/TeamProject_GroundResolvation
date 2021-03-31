var tryCount = 1;
var tags = '';
var lastContent = 0;


function ajaxlist(year,month){
	var selectDay = $('.select_day').text();
	selectDay = selectDay<10?'0'+selectDay:selectDay;
	var selectMonth = month<10?'0'+month:month;
	var selectYear = year;
	var selectDate = ''.concat(selectYear,selectMonth,selectDay);
	
	var ctx = window.location.pathname.substring(0, window.location.pathname.indexOf("/",2));// 스크립트
																								// contextPath	
		$.ajax({
			url : ctx+"/futsalFrontController/futsallistLoad.fu",
			type: "GET",
			data: {"selectDate":selectDate , "tryCount" : tryCount},
			dataType:"JSON",
			})
			
		.done(function(data){

			console.log("통신성공");
					console.log(data);
					tagsStack(data);
			})
		
		.fail(function(xhr,error){
			console.log("통신성공");
			$(".content").text(".fail");
			console.log("code:"+xhr.status+"\n"+"message:"+xhr.responseText+"\n"+"error:"+error);
			})

			function tagsStack(data) {
			for(i = 0; i <data.json.length; i++){
				tags += '<div id = '+((tryCount*6-5)+i)+' style=\"background-color : aqua\" \"color : black\">';
				tags += "content"+((tryCount*6-5)+i)+"<br>";
				tags += "번호 : "+data.json[i].groundnum+"<br>";
				tags += "구장이름 : "+data.json[i].groundname+"<br>";
				tags += "주소 : "+data.json[i].groundlocation+"<br>";
				tags += "가격 : "+data.json[i].groundfee+"<br>";
				tags += "<input type = button value = 예약하기 style = \"color : black\"></input>";
				tags += "</div>"+"<br>";
				$(".content").html(data.date.date+tags);
				lastContent = (tryCount*6-5)+i
			}
			tryCount++;
			console.log(tryCount);
		}
}
$(window).scroll(function(){
	var scrollBottom = $(document).height() - $(window).height() - $(window).scrollTop();
	if(scrollBottom <30){
		ajaxlist();
	}
})

