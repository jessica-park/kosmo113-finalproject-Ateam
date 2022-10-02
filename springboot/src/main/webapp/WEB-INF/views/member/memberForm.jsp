<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
section {
background-color: #3478f5;
}
</style>    
<%-- ���� ����  --%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


<section class="h-100">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem; height: 100%;" />
            </div>
            <div class="col-xl-6">
              <div class="card-body p-md-5 text-black">
                <h3 class="mb-5 text-uppercase">Student registration form</h3>

             <form action="addMember" method="post" id="memberForm"  enctype="multipart/form-data">
                <div class="row">
                <input type="hidden" id="ssn" name="ssn" value=""> 
				<input type="hidden" id="tel" name="tel" value=""> 
				<input type="hidden" id="addr" name="addr" value=""> 
				<input type="hidden" id="profimg" name="profimg" value="">
				<input type="hidden" id="pwd" name="pwd" value="">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text"  id="id" name="id" class="form-control form-control-lg" />
                      <label class="form-label" for="id">ID</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                     <button class="btn btn-outline-secondary" type="button" id="id-check" style="margin-left: 19px;">�ߺ�Ȯ��</button>
                   	<p style="margin-top: 2px;"></p>
				<i id="id-check-warn" style="margin-top: 5px; "></i>
                    </div>
                  </div>
                </div>
				<div class="row">
                    <div class="form-outline">
                      <input type="password" id="pwd1" name="pwd1" class="form-control form-control-lg" />
                      <label class="form-label" for="pwd1">��й�ȣ</label>
                    </div>
                  </div>
                  </div>
                <div class="form-outline mb-4">
                  <input type="text" id="name" name="name"class="form-control form-control-lg" />
                  <label class="form-label" for="name">�̸�</label>
                </div>

                <!-- radio 
                <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                  <h6 class="mb-0 me-4">gender: </h6>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="femaleGender"
                      value="option1" />
                    <label class="form-check-label" for="femaleGender">Female</label>
                  </div>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="maleGender"
                      value="option2" />
                    <label class="form-check-label" for="maleGender">Male</label>
                  </div>

                  <div class="form-check form-check-inline mb-0">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="otherGender"
                      value="option3" />
                    <label class="form-check-label" for="otherGender">Other</label>
                  </div>

                </div> -->
                <div class="row">
					<div class="form-outline mb-4">
						<input type="email" class="form-control form-control-lg" id="email" name="email" placeholder="name@example.com"
						required="required">
						<label class="form-label">�̸���</label> 
					</div>
				</div>
				<div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      	<input type="text" id="ssn1" name="ssn1" class="form-control form-control-lg" required placeholder="������� 6�ڸ� �Է�"
							maxlength="6" pattern=".{6,6}" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/> 
                      <label class="form-label" for="ssn1">�ֹε�Ϲ�ȣ</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      	<input type="text" id="ssn2" name="ssn2" oninput="this.value = this.value.replace(/[^1-4.]/g, '').replace(/(\..*)\./g, '$1');"
						class="form-control form-control-lg" maxlength="1"  required/> 
                      <label class="form-label" for="ssn2">�ֹε�Ϲ�ȣ</label>
                      
                    </div>
                  </div>
                </div>
				
			<div class="row">
				<div class="col-md-6">
				<label class="form-label">������ ���� ���</label> 
			<img style="width: 150px; margin-top: 8px;" src="${pageContext.request.contextPath}/resources/image/noimage.jpg" id="imgx">
				<input type="file" class="form-control" id="mfile" name="mfile">
					

			</div>		
				
			  <div class="col-md-6">
			    <label class="form-label">��ȭ��ȣ</label>
			    <input type="tel" class="form-control" id="telv" name="telv" placeholder="-���� �Է�" required 
			    		oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" maxlength="11">
			  </div>
			
                <label class="form-label" style="text-align: justify;" >�ּ�</label>
			<div class="col-md-4">
				<input type="text" class="form-control" id="sample6_postcode" placeholder="�����ȣ">
			</div>
			<div class="col-md-3">
				<input type="button" class="btn btn-outline-secondary" onclick="sample6_execDaumPostcode()" value="�����ȣ ã��"><br>
			</div>
			<div class="col-md-8">
				<input type="text" class="form-control" id="addr1" name="addr1" placeholder="�ּ�"><br>
			</div>
			<div class="col-md-4">
				<input type="text" class="form-control" id="addr2" name="addr2" placeholder="���ּ�">
			</div>
			<div class="form-group text-center">
				
			</div>
			</div>
			
                  <div class="d-flex justify-content-end pt-3">
                  <button type="submit" id="join-submit" class="btn btn-primary btn-space" >
					ȸ������<i class="fa fa-check spaceLeft"></i>
				</button>

				<button type="button" class="btn btn-danger"
					onClick="location.href='/ateamfinal/main'">
					���<i class="fa fa-check spaceLeft"></i>
				</button>
                  
                </div>
				</form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>



 <!--
<article >
<div class="page-header">
		<center>
			<h1>
				<a onclick="return false; location.reload()"
					style="cursor: pointer;"><b>ȸ������</b></a>
			</h1>
		</center>
		<div class="col-md-6 col-md-offset-3"></div>
	</div>

	
<form action="addMember" method="post" id="memberForm"  enctype="multipart/form-data">
		<input type="hidden" id="ssn" name="ssn" value=""> 
		<input type="hidden" id="tel" name="tel" value=""> 
		<input type="hidden" id="addr" name="addr" value=""> 
		<div class="row g-3 needs-validation ">
			<div class="col-md-7" style="width: 64%;">
					<label for="id" class="form-label">���̵�</label> 
			<div class="input-group" >
					<input type="text" class="form-control" id="id" name="id" placeholder="INPUT YOUR ID"
					 required="required" pattern=".{2,10}" >
					<button class="btn btn-outline-secondary" type="button" id="id-check" style="margin-left: 19px;">�ߺ�Ȯ��</button>
			</div>
			</div>
			<div class="col-md-4">
				<p style="margin-top: 42px;"> </p>
				<i id="id-check-warn" style="margin-top: 5px; "></i>
			</div>
			<div class="col-md-6">
				<label for="mnum" class="form-label">��й�ȣ</label> 
				<input type="password"
					class="form-control" id="pwd" name="pwd" placeholder="YOUR PASSWORD"
					 required="required" pattern=".{2,20}">
			</div>
			<div class="col-md-6">
				<label for="mnum" class="form-label">��й�ȣȮ��</label> 
				<input type="password"
					class="form-control" id="pwd2" name="pwd2" placeholder="PASSWORD CHECK"
					required="required" pattern=".{2,20}"><i class="fa" id="confpwd"></i>
			</div>	
			 <div class="col-md-4">
			    <label for="mname" class="form-label">�̸�</label>
			    <input type="text" class="form-control" id="name" name="name" placeholder="�̸��� �Է��ϼ���" required>
			    <div class="valid-feedback">
			    </div>
			    <div class="invalid-feedback">
			       	�̸��� �Է��ϼ���.
			    </div>
			  </div>
			  <div class="col-md-4">
				<div class="form-outline">
						<label class="form-label">�ֹε�Ϲ�ȣ</label>
					<input type="text" id="ssn1" name="ssn1" class="form-control" required placeholder="������� 6�ڸ� �Է�"
							maxlength="6" pattern=".{6,6}" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/> 
				</div>
			</div>
			<div class="col-md-1"
				style="width: 10px; text-align: center;">
				<label style="margin-top: 40px;"><b> - </b></label>
			</div>
			<div class="col-md-1">
				<div class="form-outline">
					<input type="text" id="ssn2" name="ssn2" oninput="this.value = this.value.replace(/[^1-4.]/g, '').replace(/(\..*)\./g, '$1');"
						class="form-control" maxlength="1" style="margin-top: 32.5px;" required/>
				</div>
			</div>
			<div class="col-md-2">
				<label style="margin-top: 42px;  font-size: 25px;" ><strong>* * * * * *</strong></label>
			</div>		
						
			<div class="col-md-6">
				<label class="form-label">�̸���</label> 
					<input type="email" class="form-control" id="email" name="email" placeholder="name@example.com"
					required="required">
				<button class="btn btn-outline-secondary" type="button" id="mail-check">
					<i class="fa fa-search"></i>������ȣ����</button>
			</div>

			<div class="col-md-6">
				<label class="form-label">������ȣ�Է�</label>
				<input type="text" class="form-control" id="certi-input" name="certi-input" 
					placeholder="������ȣ 6�ڸ�" disabled="disabled" maxlength="6"/>
				<span id="mail-check-warn" class="mb-2"></span>
			</div>
			<div class="col-md-6">
				<label class="form-label">������ ���� ���</label> 
				<input type="file" class="form-control" id="mfile" name="mfile">
			<img style="width: 100%; margin-top: 8px;" src="${pageContext.request.contextPath}/resources/image/noimage.jpg" id="imgx">		
			</div>			
			  <div class="col-md-6">
			    <label class="form-label">��ȭ��ȣ</label>
			    <input type="tel" class="form-control" id="telv" name="telv" placeholder="-���� �Է�" required 
			    		oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" maxlength="11">
			  </div>			
			
			
			 <label class="form-label" style="text-align: justify;" >�ּ�</label>
			<div class="col-md-4">
				<input type="text" class="form-control" id="sample6_postcode" placeholder="�����ȣ">
			</div>
			<div class="col-md-3">
				<input type="button" class="btn btn-outline-secondary" onclick="sample6_execDaumPostcode()" value="�����ȣ ã��"><br>
			</div>
			<div class="col-md-8">
				<input type="text" class="form-control" id="addr1" name="addr1" placeholder="�ּ�"><br>
			</div>
			<div class="col-md-4">
				<input type="text" class="form-control" id="addr2" name="addr2" placeholder="���ּ�">
			</div>
			<div class="form-group text-center">
				<button type="submit" id="join-submit" class="btn btn-primary btn-space" disabled="disabled">
					ȸ������<i class="fa fa-check spaceLeft"></i>
				</button>

				<button type="button" class="btn btn-danger"
					onClick="location.href='/ateamfinal/main'">
					���<i class="fa fa-check spaceLeft"></i>
				</button>

			</div>
		</div>
	</form>
 comment end 
    </article> -->
    <script>
	//var $js = jQuery.noConflict()
	
	//Email Ajax
	/*$js('#mail-check').click(function() {
		const eamil = $js('#email').val(); // �̸��� �ּҰ� ������!
		console.log('�ϼ��� �̸��� : ' + eamil); // �̸��� ������ Ȯ��
		const checkInput = $js('#certi-input') // ������ȣ �Է��ϴ°� 
		
		$js.ajax({
			type : 'get',
			url : '${pageContext.request.contextPath}/member/mailCheck?email='+eamil,
			success : function (data) {
				console.log("data : " +  data);
				checkInput.attr('disabled',false);
				code =data;
				alert('������ȣ�� ���۵Ǿ����ϴ�.')
			}
		}); // end ajax
	}); // end send eamil

	// ������ȣ ��
	// blur -> focus�� ��� ��� �߻�
	$js('#certi-input').blur(function() {
		const inputCode = $js(this).val();
		const $resultMsg = $js('#mail-check-warn');
		
		if(inputCode === code){
			$resultMsg.html('������ȣ�� ��ġ�մϴ�.');
			$resultMsg.css('color','green');
			$js('#mail-check').attr('disabled', true);
			$js('#email').attr('readonly', true);
			$js('#certi-input').attr('readonly', true);
			$js('#join-submit').attr('disabled', false);
		}else{
			$resultMsg.html('������ȣ�� ��ġ���� �ʽ��ϴ�. �ٽ� Ȯ�����ּ���!');
			$resultMsg.css('color', 'red');
		}
	});
	*/
	$('#id-check').click(function() {
		let param = $('#id').val();
		$.ajax({
			url: "idcheck?id="+param,
			success:function(data){
				console.log(data);
				if(data == 1){
					$('#id-check-warn').css('color','red').html('�̹� ������� ���̵��Դϴ�.');
				}else{
					$('#id-check-warn').css('color','green').html('��� ������ ���̵��Դϴ�.');
				}
			}
		});
	});
$(function() {
	 
	 
		// �ֹι�ȣ, ��ȭ��ȣ, �ּ�
		
		$('#memberForm').submit(function(event){
			event.preventDefault();
			
			if($('#ssn1').val().length==0 || $('#ssn2').val().length==0 || $('#telv').val().length==0 || 
			   $('#email').val().length==0 || $('#addr1').val().length==0 ){
				alert("�Էµ��� ���� ������ �����մϴ�.");
				return false;
			}
			    const ssn = $('#ssn1').val()+'-'+$('#ssn2').val();
				var telv= $('#telv').val();
				const addr = $('#addr1').val()+" "+$('#addr2').val();
				var prof = $('#mfile').val();
				var pwd = $('#pwd1').val();
				
				$('#addr').val(addr); 
				$('#ssn').val(ssn);	//�ֹι�ȣ ������ �߰�
				$('#tel').val(telv.substring(0,3)+"-"+telv.substring(3,7)+"-"+telv.substring(7)); //��ȭ��ȣ ������ �߰�
				$('#profimg').val(prof);
				$('#pwd').val(pwd);
				
				console.log("addr"+addr);
				// alert($('#ssn').val()+" : "+$('#id').val()+" : "+$('#tel').val());
				alert('ȸ�����Կ� �����ϼ̽��ϴ�.');
				this.submit();
				return true;	
		});	 
	  
	  $('#mfile').change(function() {
		console.log($(this).val());
		readURL(this);
	  });
	});
	// �̹��� �̸�����
	function readURL(input) {
		if (input.files && input.files[0]) {
			// �ڹٽ�ũ��Ʈ I/O 
			var reader = new FileReader();
			//
			reader.onload = function(e) {
				//e.target.result
				console.log("Path :" + e.target.result);
				$('#imgx').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
		}

	
	
	// �ּ� ã�� api
	function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

                // �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
                // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                var addr = ''; // �ּ� ����
                var extraAddr = ''; // �����׸� ����

                //����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
                if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
                    addr = data.roadAddress;
                } else { // ����ڰ� ���� �ּҸ� �������� ���(J)
                    addr = data.jibunAddress;
                }

                // ����ڰ� ������ �ּҰ� ���θ� Ÿ���϶� �����׸��� �����Ѵ�.
                if(data.userSelectedType === 'R'){
                    // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
                    // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
                    if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // ���յ� �����׸��� �ش� �ʵ忡 �ִ´�.
                    //document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    //document.getElementById("sample6_extraAddress").value = '';
                }

                // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("addr1").value = addr;
                // Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
                document.getElementById("addr2").focus();
            }
        }).open();
    }	
</script>
<%-- ���� �� --%>