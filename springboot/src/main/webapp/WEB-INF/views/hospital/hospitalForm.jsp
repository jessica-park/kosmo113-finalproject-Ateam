<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="mycontext" value="${pageContext.request.contextPath}"/>     
<%-- ���� ����  --%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<article >
<div class="page-header">
      <center>
         <h1>
            <a onclick="return false; location.reload()"
               style="cursor: pointer;"><b>����ȸ������</b></a>
         </h1>
      </center>
      <div class="col-md-6 col-md-offset-3"></div>
   </div>

<!-- ������* hname /����ڹ�ȣ* crn /�����ð�* otime ctime /�������* hgrade /�������* hcate/ Ȩ������* hurl/ email* hemail /��ġ* hloc -->   
<form method="post" id="hospitalJoin" >
      <input type="hidden" id="ccate" name="ccate" value="${ccate}"> 
      <div class="row g-3 needs-validation ">
       <div class="col-md-4">
            <div class="form-outline">
                  <label class="form-label">����� ��Ϲ�ȣ(ID���)</label>
               <input type="text" id="crn" name="crn" class="form-control" value="${crn}" readonly="readonly">
            </div>
      </div>
      <div class="col-md-4" >
            <label for="id" class="form-label">������</label> 
      <div class="input-group" >
            <input type="text" class="form-control" id="hna me" name="hname" placeholder="INPUT YOUR HOSPITAL NAME"
             required="required" pattern=".{2,30}" >
      </div>
      </div>      
      <div class="col-md-6">
         <label for="pnum" class="form-label">��й�ȣ</label> 
         <input type="password"
            class="form-control" id="cpwd" name="cpwd" placeholder="YOUR PASSWORD"
             required="required" pattern=".{2,20}">
      </div>
      <div class="col-md-6">
         <label for="pnum2" class="form-label">��й�ȣȮ��</label> 
         <input type="password"
            class="form-control" id="cpwd2" name="cpwd2" placeholder="PASSWORD CHECK"
            required="required" pattern=".{2,20}"><i class="agreeInfo" id="confpwd"></i>
      </div>         
      <div class="col-md-4">
         <label for="snum" class="form-label">openTime</label> 
         <input type="time"
            class="form-control" id="otime" name="otime" placeholder=""
             required="required" style="text-align: center;" >
      </div>
      <div class="col-md-4">
         <label for="snum" class="form-label">closeTime</label> 
         <input type="time"
            class="form-control" id="ctime" name="ctime" placeholder=""
            required="required" style="text-align: center;">
      </div>
      <div class="col-md-4">
         <div class="form-outline">
            <label class="form-label">�������</label>
            <select class="form-select" id="hgrade" name="hgrade" aria-label="Default select example" required="required">
              <option selected>������� ����</option>
              <option value="�����̾�">�����̾�</option>
              <option value="������">������</option>
            </select>
         </div>
      </div>   
       <div class="col-md-4">
          <label for="mname" class="form-label">�������</label>
          <input type="text" class="form-control" id="hcate" name="hcate" placeholder="" required>
          <div class="valid-feedback">
          </div>
          <div class="invalid-feedback">
                ��������� �Է��ϼ���
          </div>
        </div>
        
      
               
         <div class="form-outline">
               <label class="form-label">��ȭ��ȣ</label>
            <input type="text" id="htel" name="htel" class="form-control" /> 
         </div>
      <div class="col-md-5">
         <label class="form-label">URL</label> 
            <input type="text" class="form-control" id="hurl" name="hurl" placeholder="name@example.com"
            required="required">
      </div>

       <label class="form-label" style="text-align: justify;" >�����ּ�</label>
      <div class="col-md-4">
         <input type="text" class="form-control" id="sample6_postcode" placeholder="�����ȣ" required="required">
      </div>
      <div class="col-md-3">
         <input type="button" class="btn btn-outline-secondary" onclick="sample6_execDaumPostcode()" value="�����ȣ ã��"><br>
      </div>
      <div class="col-md-8">
         <input type="text" class="form-control" id="hloc" name="hloc" placeholder="�ּ�" required="required"><br>
      </div>
      <div class="form-group text-center">
         <button type="submit" id="hjBtn" class="btn btn-primary btn-space">
            ���<i class="fa fa-check spaceLeft"></i>
         </button>

         <button type="button" class="btn btn-danger"
            onClick="location.href='/ateamfinal/main'">
            ���<i class="fa fa-check spaceLeft"></i>
         </button>

      </div>
      </div>
   </form>
 <!-- comment end -->
    </article>
<script>
// �ֹι�ȣ, ��ȭ��ȣ, �ּ�
// ������* hname /����ڹ�ȣ* crn /�����ð�* otime ctime /�������* hgrade /�������* hcate/ Ȩ������* hurl/ email* hemail /��ġ* hloc       
      $(function(){
         $('#hjBtn').click(function() {
            if($('#hname').val().length==0 || $('#otime').val().length==0 || $('#ctime').val().length==0 || 
                     $('#hgrade').val().length==0 || $('#hcate').val().length==0 || $('#hurl').val().length==0 ||
                      $('#hloc').val().length==0 ){
                     alert("�Էµ��� ���� ������ �����մϴ�.");
                     return false;
                  }
            
            $('#hospitalJoin').attr("action", 
                           "${mycontext}/hospital/addHospital");
            $('#hospitalJoin').submit(function() {
               alert('��Ͽ� �����ϼ̽��ϴ�.');
               return true;
            });
         });   
      });

      $(function()    {
      // ��й�ȣ ��ġ����
      var pwdchk = false;
        $('#cpwd2').blur(function(){
             if($('#cpwd').val() === $('#cpwd2').val()){
               $('#confpwd').css('color','green').html('�� ��й�ȣ ��ġ�մϴ� ');
               pwdchk = true;
             }else{
               $('#confpwd').css('color','red').html('X ��й�ȣ ��ġ���� �ʽ��ϴ� ');
               pwdchk = false;
             }
           });
        $('#cpwd').blur(function(){
             if($('#cpwd').val() === $('#cpwd2').val()){
               $('#confpwd').css('color','green').html('�� ��й�ȣ ��ġ�մϴ� ');
               pwdchk = true;
             }else{
               $('#confpwd').css('color','red').html('X ��й�ȣ ��ġ���� �ʽ��ϴ� ');
               pwdchk = false;
             }
           });
   });
      
      
      
      /* $('#hospitalForm').submit(function(event){
         event.preventDefault();
         
         if($('#hname').val().length==0 || $('#otime').val().length==0 || $('#ctime').val().length==0 || 
            $('#hgrade').val().length==0 || $('#hcate').val().length==0 || $('#hurl').val().length==0 ||
            $('#hemail').val().length==0 || $('#hloc1').val().length==0 || $('#hloc2').val().length==0){
            alert("�Էµ��� ���� ������ �����մϴ�.");
            return false;
         }
            const hloc = $('#hloc1').val()+$('#hloc2').val();
            $('#hloc').val(hloc); 
            console.log("hloc : "+hloc);
            alert('��Ͽ� �����ϼ̽��ϴ�.');
            this.submit();
            return true;   
      });     */
     

   
   
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
                document.getElementById("hloc").value = addr;
                // Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
            }
        }).open();
    }   
</script>
<%-- ���� �� --%>