<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
.testImg {
	background-color: white;
	height: 500px;
	border-radius: 16px;
}

.testImg2 {
	position: relative;
	background-color: white;
	height: 500px;
	border-radius: 16px;
}

.testImg4 {
	padding: 0 15px;
	margin: 0 15px;
	height: 500px;
	background-color: white;
	border-radius: 16px;
	margin: 0 15px;
}

.ctext {
	position: absolute;
	top: 50%;
	left: 35%;
	color: white;
	transform: translate(-90%, -50%);
}

.mainImg {
	position: absolute;
	top: 50%;
	left: 40%;
	transform: translate(-60%, -50%);
}

.mainText {
	min-width: 240px;
	position: absolute;
	left: 70%;
	top: 50%;
	transform: translate(-30%, -50%);
	text-align: right;
}

.mainBtn {
	margin-top: 40px;
	padding: 16px;
	border: solid 1px #232323;
	border-radius: 4px;
	background-color: white;
	width: 80%;
}

.mainImg2 {
	position: absolute;
	top: 50%;
	left: 30%;
	transform: translate(-50%, -50%);
}

.mainText2 {
	min-width: 240px;
	position: absolute;
	left: 70%;
	top: 50%;
	transform: translate(-30%, -50%);
	text-align: right;
}

.mainBtn2 {
	margin-top: 40px;
	padding: 16px;
	border: solid 1px #232323;
	border-radius: 4px;
	background-color: white;
	width: 80%;
}

.sideDiv {
	background-color: #f1f9fa;
	border-radius: 16px;
	height: 500px;
	position: relative;
}

.sideImg {
	position: absolute;
	bottom: 0%;
	left: 60%;
	transform: translate(-50%, 0%);
}

.sideText {
	position: absolute;
	top: 30%;
	left: 45%;
	transform: translate(-60%, -50%);
}

.sideBtn {
	border: solid 1px #3478f5;
	color: #3478f5;
}

.cbtn {
	border: solid 1px;
}

.reviewScore {
	font-size: 14px;
	background-color: #3478f5;
	padding: 4px 12px;
	border-radius: 16px;
	color: white;
}

.cardLink {
	background: rgba(0, 0, 0, 0.5);
	backdrop-filter: blur(10px);
}
</style>


<div class="container-fluid ">

<div class="meditok">
	<div id="chat-circle" class="btn btn-raised chatbot d-flex justify-content-center align-items-center bg-white">
		<div id="chat-overlay"></div>
		<img alt="??????" src="/img/bot.png">
	</div>

	<div class="chat-box" style="z-index: 100;">
		<div class="chat-box-header">
			ChatBot <span class="chat-box-toggle"><i
				class="material-icons">close</i></span>
		</div>
		<div class="chat-box-body">
			<div class="chat-box-overlay"></div>
			<div class="chat-logs"></div>
			<!--chat-log -->
		</div>
		<div class="chat-input">
			<form>
				<input type="text" id="chat-input" placeholder="Send a message..." />
				<button type="submit" class="chat-submit" id="chat-submit">
					<i class="material-icons">send</i>
				</button>
			</form>
		</div>
	</div>

</div>


	
	<!-- ?????? ????????? / ?????????????????? -->
	<div class="row mt-3 mb-3">
		<!-- ----?????????---- -->
		<div class="col-md-8 mb-5">
			<div id="carouselExampleIndicators"
				class="carousel slide carousel-fade carousel-dark"
				data-bs-ride="carousel">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide-to="0" class="active cbtn" aria-current="true"
						aria-label="Slide 1"></button>
					<button type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide-to="1" class="cbtn" aria-label="Slide 2"></button>
					<button type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide-to="2" class="cbtn" aria-label="Slide 3"></button>
				</div>
				<div class="carousel-inner">
					<!-- 1 -->
					<div class="carousel-item active ">
						<img src="https://ifh.cc/g/xf0gMX.jpg"
							class="d-block testImg w-100" alt="...">
						<div class="ctext">
							<img src="/img/logo_white.png" alt="logo" style="width: 200px;">
							<p class="nanum">
								<br> ????????? ?????? ?????? ?????? ?????????<br>????????? ????????? ??????????????????.
							</p>
						</div>
					</div>
					<!-- 2 -->
					<div class="carousel-item">
						<div class="d-block w-100 testImg2">
							<img src="/img/coronaVirus.png" alt="?????????????????????" class="mainImg">
							<div class="mainText">
								<h2 class="hanna" style="color: #232323; text-align: right;">?????????
									???????????? ?????????</h2>
								<p class="hanna"
									style="color: #565656; font-size: 16px; text-align: right;">
									???????????? ?????? ?????? ??????????????? <br>????????? ??????????????? ?????? ?????? ??? ????????????.
									<button class="mainBtn w-100" onclick="location='/member/COVIDcheck'">???????????? ?????? ??????</button>
							</div>

						</div>
					</div>
					<!-- 3 -->
					<div class="carousel-item">
						<div class="d-block w-100 testImg2">
							<img src="/img/drugs.png" alt="?????????????????????" class="mainImg2">
							<div class="mainText2">
								<h2 class="hanna" style="color: #232323; text-align: right;">???
									?????? ?????? ?????????</h2>
								<p class="hanna"
									style="color: #565656; font-size: 16px; text-align: right;">
									?????? ????????? ?????? ?????? ?????? ?????? ????????? <br>?????????????????????.

									<button class="mainBtn w-100" onclick="location='${mycontext}/drugSearchShape'">??? ?????? ??????</button>
							</div>

						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- ----------  -->

		<!-- ????????? ?????? -->
		<div class="col-12 col-md-4">
			<div class="sideDiv">
				<img src="/img/mockup.png" alt="mockuphand" class="sideImg">
				<div class="sideText mt-5">
					<h3 class="hanna" style="color: #3478f5">?????? ????????? ?????? ?????????</h3>
					<p class="hanna" style="color: #565656; font-size: 19.5px;">
						????????? ????????? ??????????????? ????????? <br> <span class="nanum"
							style="color: #ababab; font-size: 12px;">?????????????????? ???????????????.</span> <br>
						<a href="http://localhost:3000/" target='_blank'>
							<button class="btn sideBtn mt-5">???????????? ??????</button>
						</a>
					</p>
				</div>
			</div>
		</div>
		<!-- --------- -->


	</div>




	<article class="row justify-content-center mb-5">
		<div class="col-md-2">
			<h4 class="text-white hanna" style="height: 400px">
				HeyDr. <br>??????????????????
				<br>
				<br>
				<a href="${mycontext}/reviewboard/reviewboardlist" class="hanna"
				style="text-decoration: none; color: white; font-size:16px;"> ???????????? >> </a>
			</h4>
			
		</div>
		<div class="col-md-9 pe-3">
			<div class="row row-cols-1 row-cols-md-3 g-4">
				<c:forEach var="i" items="${re}" begin="0" end="5">
				<div class="col">
					<div class="card" style="width: 18rem;">
						<div class="card-body">
							<div class="row">
								<div class="col-3">
									<img src="/taejin/img/doc2.svg" alt="???????????????"
										style="width: 40px;">
								</div>
								<div class="col-8 d-flex flex-column">
									<h6
										style="color: #232323; font-size: 16px; line-height: 0.5rem; margin-top: 8px;"'>
										${i.id}</h6>
									<small
										style="color: #898989; font-size: 12px; line-height: 1rem;">${fn:substring(i.udate,0 , 10)}</small>
								</div>
							</div>
							<p class="card-text mt-3 nanum"
								style="color: #232323; font-size: 16px; font-weight: 300;">
								<a href="${mycontext}/reviewboard/reviewboardlist" class="hanna"
								style="text-decoration: none; color: rgb(0, 0, 0); font-size:16px;" >${fn:substring(i.cont,0 , 50)}...<p></a>
								<span class="reviewScore mt-2">????????? ???  ${i.likes}</span>
								
							</p>
							
						</div>
					</div>
				</div>
				</c:forEach>	
				
				<!-- ?????? -->

			</div>
			<div style="position: absolute; right: 20%; bottom: 40px;"></div>

		</div>
	</article>
	<div class="row justify-content-center">
		<div class="col-md-5 testImg4 overflow-auto">
			<h4 class="hanna text-center m-3 ">????????????</h4>
			<table class=" table table1">
				<thead class="hanna">
					<tr>
						<th scope="col">?????????</th>
						<th scope="col">??????</th>
					</tr>
				</thead>
				<tbody>

				</tbody>
			</table>
			<div style="position: absolute; right: 24px; bottom: 24px;">
				<a href="#" class="hanna" style="text-decoration: none"> ???????????? >>
				</a>
			</div>
		</div>
		
<!-- 		??????????????? - ????????? ?????? ?????? Dr.??????  -->
		<div class="col-md-6 testImg4">
			<h4 class="hanna text-center m-3">Dr.??????</h4>
			<div class="card qacard mb-3" style="width: 90%; margin: auto;">
				<h5 class="card-header">
					<span class="hanna" style="color: #3478f5; font-size: 32px;">Q</span>
					${vo.qtitle }
				</h5>
				<div class="card-body col-10 ">
					<p class="card-text">${vo.qcont }</p>
				</div>
<%-- 			<c:forEach var="e" items="${ansList}"> --%>
				<h5 class="card-header">
					<span class="hanna" style="color: #3478f5; font-size: 32px;">A</span>
				</h5>
				<div class="card-body row">
					<div class="col-10">
						<h5 class="card-title">Dr. ${avo.dnum}</h5>
						<p class="card-text">
							${avo.acont}
						</p>
					</div>

					<div class="col-2">
						<img src="/taejin/img/doc3.svg">
					</div>

				</div>
<%-- 			</c:forEach> --%>
			</div>
			<div style="position: absolute; right: 24px; bottom: 24px;">
				<a href="${mycontext}/quesboard/qbList" class="hanna" style="text-decoration: none"> ???????????? >>
				</a>
			</div>
		</div>
	</div>
</div>
<script>
var box = "";
$(function(){
	
$.ajax({
	url:'notice/basicPage',
	success:function(data){
		console.log(data)
		var i=0;
		data.forEach(e=>{
			if(i<6){
			box+="<tr><td>"+e.subject.substring(0,14)+"..."+"</td><td><small>"+e.ndate.substring(0,10)+"</small></td></tr>";	
			}
			i++;
		})
		console.log("box"+box);
		$('.table1 > tbody').html(box);
		}
});
	
})
</script>

<%-- <style>
/* ?????? ??? */
body {
	margin: 0;
}

.outer {
	height: 100vh;
	overflow-y: auto;
}

.outer::-webkit-scrollbar {
	display: none;
}

.inner {
	height: 100vh;
	position: relative;
	background-color: #3478f5;
}

.innerImg {
	height: 100%;
}

.mainImg {
	width:100%;
}

/* ??? ????????????  */
.textMain1 {
	position: absolute;
	top: 40%;
	left: 10%;
	width: 100%;
	color: white;
}

.btnMain1 {
	width: 10%;
	height: 10%;
	margin-top: 40px;
	padding: 10px;
	color: white;
	border: solid 1px #ffffff;
	border-radius: 20px;
	background-color: #80a7ce;
}

.btnMain1:hover {
	background-color: white;
	color: #80a7ce;
	border: solid 1px #ffffff;
	border-radius: 20px;
}

/* ????????? ???????????? */
.btnGroupMain2 {
	position: absolute;
	top: 22%;
	left: 50%;
	transform: translate(-50%, 0%);
}

.btnMain2 {
	width: 200px;
	height: 64px;
	color: #3478f5;
	font-weight: bolder;
	border: solid 1px #3478f5;
	margin: 0 16px;
	border-radius: 20px;
	background-color: white;
}

/* ????????? ???????????? */
.textMain3 {
	position: absolute;
	top: 30%;
	left: 40%;
	transform: translate(-50%, 0%);
	color: white;
}

.btnMain3 {
	width: 200px;
	height: 48px;
	margin-top: 40px;
	padding: 10px;
	color: white;
	border: solid 1px #ffffff;
	border-radius: 20px;
	background-color: #3478f5;
}
</style>
	<div class="inner">
		<div class="innerImg">
			<img src="https://ifh.cc/g/RXBz7C.jpg" class="mainImg" />
		</div>
		<div class="textMain1">
			<h2>HeyDr.</h2>
			<br></br> <span> ????????? ?????? ?????? ??? ????????? <br> ?????? ?????? ??????????????? ????????? ?????????
				?????????.
			</span> <br></br>
			<button class="btnMain1">??????????????? ??????</button>
		</div>
	</div>
	<div class="inner">
		<div class="innerImg">
			<img src=https://ifh.cc/g/tzoLJK.jpg class="mainImg" />
		</div>
		<div class="btnGroupMain2">
			<button type="button" class="btnMain2">App Store</button>
			<button type="button" class=" btnMain2">Google Play</button>
		</div>
	</div>
	<div class="inner">
        <div class="innerImg">
          <img src="https://ifh.cc/g/zTr63k.jpg" class="mainImg" />
        </div>
        <div class="textMain3">
          <h2>HeyDr.</h2>
          <br></br>
          <span>????????? ?????? ??? ??? ????????? ?????????.</span>
          <br></br>
            <button class="btnMain3">?????????????????????</button>
    
        </div>
      </div>
?????? ??? --%>