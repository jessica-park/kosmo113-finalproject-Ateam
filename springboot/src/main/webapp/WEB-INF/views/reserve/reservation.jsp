<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>




<!-- �ش� ������ �� ���� ���� ���� ����  -->

<!DOCTYPE html>
<html lang="UTF-8">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>���� �ۼ� ��</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<style>
body {
	background-image: url('img/ha2.jpg');
	background-size: cover;
}

.input-form {
	max-width: 700px;
	margin-top: 100px;
	padding: 40px;
	background: #fff;
	-webkit-border-radius: 20px;
	-moz-border-radius: 20px;
	border-radius: 20px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
</style>
</head>

<body>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<center>
					<h4 class="mb-3">�ش� ���׵��� �ۼ����ּ���</h4>
				</center>
				<form class="validation-form" id="reserveForm" method="post" action="">
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="name">�̸�</label> <input type="text"
								class="form-control" id="name" placeholder=""
								value="${mvo.name }" readonly="readonly">
							<div class="invalid-feedback"></div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="nickname">����</label> <input type="text"
								class="form-control" id="age" placeholder="" value="${mvo.age }"
								readonly="readonly">
							<div class="invalid-feedback"></div>
						</div>
					</div>
					<div class="form-group">
						<label for="doc">�ǻ� ���� </label><br> <input type="text"
							class="form-control" id="dname" name="dname"
							value="${dvo.dname}"><br> <input type="hidden"
							id="dnum" name="dnum" value="${dvo.dnum }" readonly="readonly">
						<!--         <button class="btn btn-info" type="submit" onclick="location.herf='Doc_list_Test1.jsp';" >����</button> -->
						<!--         <button class="btn btn-success" type="submit" onclick="location.herf='Doc_list_Test1.jsp';" style="margin-right: 15px;">�缱��</button> -->
					</div>
					
					<div class="form-group">
						<label for="symptom"><span style="color: red;">*</span>����
							</label> <input type="text" class="form-control" id="symptom"
							name="symptom" maxlength="20" value="">
					</div>

					<div class="mb-3">
						<label for="email">���� ��</label>
						<textarea class="form-control" id="symptomComm" name="symptomComm"
							value=""></textarea>
						<div class="invalid-feedback"></div>
					</div>

					<div class="form-group">
						<label><span style="color: red;">*</span>���� �ð� :</label> 
						<input	type="text" name="rdate" id="rdate" value="${rd}" readonly="readonly">  
						<select	name="rtime" id="rtime" required="required">
							<option value="">���� �ð��� �������ּ���</option>
							<option value="11:00:00">11:00</option>
							<option value="12:00:00">12:00</option>
							<option disabled="disabled">13:00 ~
								14:00 ���ɽð� �Դϴ�</option>
							<option value="14:00:00">14:00</option>
							<option value="15:00:00">15:00</option>
							<option value="16:00:00">16:00</option>
							<option value="17:00:00">17:00</option>
						</select>
					</div>

					<div class="form-group"
						style="text-align: right; margin-top: 10px;">
						<button type="button" id="resBtn" class="btn btn-secondary"
							>���</button>
						<button type="button" id="backBtn" class="btn btn-warning"
							onclick="location.href='doctorCalendar?dnum=${dvo.dnum }'">���ư���</button>
					</div>
				</form>
			</div>
		</div>
	</div>
<script>
var doc_rtime =[];
var rdate = $('#rdate').val()
var j = 0;
		
	$(function(){
		
		$.ajax({
			url:'checkDate?dnum='+${dvo.dnum}+'&rdate='+rdate,
			type:'GET',
			success:function(data){
				
					//console.log('data = ' ,data)
					//console.log('data = ' ,data[2].rtime)
					for(var i=0;i< data.length; i++){
					console.log('data = ' ,data[i].rtime)
					doc_rtime.push(data[i].rtime)
				} 
				for(var step=0;step <doc_rtime.length;step++){
					$("select option[value*='"+doc_rtime[step]+"']").prop('disabled',true);
						console.log('�ɷ���')
					}
				}
			
		})
		$('#resBtn').click(function(){
			//rdate = $('#rdate').val()
			//rtime = $('#rtime').val()
			console.log('dnum = ' ,${dvo.dnum});
			console.log('rdate = ' ,rdate);
			console.log('dnum = ' ,typeof(${dvo.dnum}));
			console.log('rdate = ' ,typeof(rdate));
			$('#reserveForm').attr('action','addReserve').submit();
		})
	})
</script>