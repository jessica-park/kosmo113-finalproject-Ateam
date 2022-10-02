<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>

</style>
<jsp:include page="./sidebar/sidebar_header.jsp" flush="true"></jsp:include>

<input type="hidden" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" id="reservation">
<!-- modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">진료</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        진료 하시겠습니까?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/medInq/medical'">예</button>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니오</button>
      </div>
    </div>
  </div>
</div>
<!-- 본문 -->
<div class="container py-4"
	style="width: 60%;  margin: auto; padding: 10px 5px;">
	<h1 class="display-5 fw-bold">의사 스케줄</h1>
	<div id='calendar'></div>
</div>


<jsp:include page="./sidebar/sidebar_footer.jsp" flush="true"></jsp:include>
<link
	href='https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css'
	rel='stylesheet'>
<link
	href='https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css'
	rel='stylesheet'>
<link href='/taejin/fullcalendar/lib/main.css' rel='stylesheet' />
<script src='/taejin/fullcalendar/lib/main.js'></script>
<script>
   var today = new Date();

   var res;
   var ref;
   var name;
   var sta;
   var arr = [];
   var arrt = [];
   var arrc = [];
   var dict = {};
   var calendar;
   
   document.addEventListener('DOMContentLoaded', function() {
	    var calendarEl = document.getElementById('calendar');
    			// 예약이 있을경우
	    	$.ajax({
	    		url:'doctorReserveList',
	    		success:function(data){
	    			if(data.length != 0){
	    				console.log(data)
	    			console.log(data[0].reserveVO[0].rdate)
	    			console.log(data[0].reserveVO[0].memberVO.name)
	    			var datas = data[0].reserveVO;
	    			for(var i of datas){
	    				f = new Date(i.rdate)
	    				if(f < today){
	    					arr.push({'start' : i.rdate+'T'+i.rtime,
	    	    				'title' : ' '+i.memberVO.num+' - '+ i.memberVO.name, 'color' : "#FF0000"
	    	    			});
	    				}else{
	    					arr.push({'start' : i.rdate+'T'+i.rtime,
	    	    				'title' : ' '+i.memberVO.num+'. '+ i.memberVO.name,
	    	    			});
	    				}
	    			}
	    			console.log('나온arr',arr)
		    
		     calendar = new FullCalendar.Calendar(calendarEl, {
		      headerToolbar: {
		        left: 'prev,next today',
		        center: 'title',
		        right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
		      },
		      themeSystem: 'bootstrap5',
		      initialDate: dateFormat(today),
		      navLinks: true, // can click day/week names to navigate views
		      businessHours: true, // display business hours
		      editable: true,
		      selectable: true,
		      eventClick: function(info) {
				console.log('클릭이벤트! ' + info.event.title)
				var num = info.event.title.substr(1,1);
				console.log(num)
				$('#reservation').click()
				
		      },
		      dateClick: function(info){
		    	  res = info.dateStr
		    	  console.log('날짜 클릭! = '+res)
		      },
		      events:arr
		    	  
		      });
		    // calendar - 끝
		    calendar.render();
		 	// 예약이 없을경우
	    			}else{
	    				console.log('예약없음!!')
	    		
			     calendar = new FullCalendar.Calendar(calendarEl,{
			      headerToolbar: {
			        left: 'prev,next today',
			        center: 'title',
			        right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
			      },
			      themeSystem: 'bootstrap5',
			      initialDate: dateFormat(today),
			      navLinks: true, // can click day/week names to navigate views
			      businessHours: true, // display business hours
			      editable: true,
			      selectable: true,
			      eventClick: function(info) {
			    	  
			    	  $('#reservation').click()
			      },
			      dateClick: function(info){
			    	  res = info.dateStr
			    	  console.log('날짜 클릭! = '+res)
			      }
		     });
			    // calendar - 끝
		    calendar.render();
    	    	}
	    	}// success - 끝
	    });// ajax - 끝
   });
   //날짜 변환 function
   function dateFormat(res){		
		var date = new Date(res);
   console.log('date => ' +date)
		var yyyy = date.getFullYear();
		var mm = ('0' + (date.getMonth() + 1)).slice(-2);
		var dd = ('0' + date.getDate()).slice(-2);
		return yyyy+'-'+mm+'-'+dd;
	}
</script>
