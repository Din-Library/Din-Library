<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Din Library</title>
<style>
.form-join{
	width: 30%;
	align: center;
	margin: 0 auto;
}
.id_input_re_1{
	color: green;
	display: none;
}
.id_input_re_2{
	color: red;
	display: none;
}
</style>
<script type="text/javascript">
	function check(){
		var f = document.fmem;
		
		//id 공백불가 --------
		var rid = /^[a-zA-z0-9]{4,10}$/; 
		var sid = f.mem_id.value;
		if (sid==""){
			alert("아이디 입력이 누락되었습니다.")
			f.mem_id.select();
			return false;
		}
		//id 형식 --------------
		if(!rid.test(sid)) {
		       alert("ID는 숫자, 영문자 조합으로 4~10자를 입력하세요.");
		       f.mem_id.select();
		       return false;
		}
		
		//pw 공백불가----------------
	    var spw= f.mem_pw.value;
	    if (spw==""){
	       alert("패스워드 입력이 누락되었습니다.")
	       f.mem_pw.select();
	       return false;
	    }
	    
	  	//pw 길이 제한 -------
	    if(spw.length<2 || spw.length>20) {
	       alert("패스워드의 길이는 20자 이내로 입력하세요.");
	       f.mem_pw.select();
	       return false;
	    }
	  
	  	//이름 공백불가----------------
	    var rname = /^[가-힣]{2,4}$/;
	    var sname= f.mem_name.value;
	    if (sname==""){
	       alert("이름 입력이 누락되었습니다.")
	       f.mem_name.select();
	       return false;
	    }
	    
	  	//이름 형식 --------------
	    if(!rname.test(sname)) {
	       alert("이름은 한글로, 4자 이내로 입력하세요.");
	       f.mem_name.select();
	       return false;
	    }
	  	
	    //생년월일 공백불가----------------
	    var sbirth= f.mem_birth.value;
	    if (sbirth==""){
	       alert("생년월일 입력이 누락되었습니다.")
	       f.mem_birth.select();
	       return false;
	    }
	    
	  	//전화번호 공백불가----------------
	    var rtel = /^[0-1]{3}-[0-9]{4}-[0-9]{4}$/; 
	    var stel= f.mem_tel.value;
	    if (stel==""){
	       alert("전화번호 입력이 누락되었습니다.")
	       f.mem_tel.select();
	       return false;
	    }
	    
	    //전화번호 형식 --------------   
	    if(!rtel.test(stel)) {
	       alert("전화번호의 형식이 올바르지 않습니다.");
	       f.mem_tel.select();
	       return false;
	    }
	    
	  	//이메일 공백불가----------------
	    var remail = /^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}$/;
	    var semail= f.mem_email.value;
	    if (semail==""){
	       alert("이메일 입력이 누락되었습니다.")
	       f.mem_email.select();
	       return false;
	    }
	    
	  	//email 형식 --------------
	    if(!remail.test(semail)) {
	       alert("email의 형식이 올바르지 않습니다.");
	       f.mem_email.select();
	       return false;
	    }
	  	
	    //주소 공백불가----------------
	    var saddr= f.mem_addr.value;
	    if (saddr==""){
	       alert("주소 입력이 누락되었습니다.")
	       f.mem_addr.select();
	       return false;
	    }
	    //주소 길이 제한 -------
	    if(saddr.length<2 || saddr.length>16) {
	       alert("주소의 길이는 15자 이내로 입력하세요.");
	       f.mem_addr.select();
	       return false;
	    }
	    
	    // 중복확인 체크
	    var idChkVal = $("#idChk").val();
	    if(idChkVal == "N"){
	    	alert("아이디 중복확인 버튼을 눌러주세요");
	    	return false;
	    }
	    
	    alert("회원가입이 완료되었습니다.");
	    f.submit();
	}
	
	function fn_idChk(){
		$.ajax({
			url : "idChk",
			type : "post",
			dataType : "json",
			data : {"mem_id" : $("#mem_id").val()},
			success : function(data){
				if(data == 1){
					alert("중복된 아이디입니다.");
				}else if(data == 0){
					$("#idChk").attr("value", "Y");
					alert("사용가능한 아이디입니다.");
				}
			},
			error : function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

			}
		})
	}
</script>
</head>
<body class="text-center" style="overflow-x: visible; width:1903px; overflow-y:scroll;">
	<%-- 회원가입 --%>
	<section>
		<main class="form-join">
			<form action="join_save" method="post" name="fmem">
           		<img class="mb-4" src="./image/Din_Logo-005.png" alt="logo" width="500" height="200">
             	<h1 class="h3 mb-3 fw-normal">JOIN</h1>

				<div class="form-floating">
				<button class="idChk btn btn-lg btn-primary" type="button" id="idChk" onclick="fn_idChk();" style="width: 100px; font-size: 15px; float: right; height: 3.8em" value="N">중복확인</button>
	             	<input type="text" class="form-control" id="mem_id" name="mem_id" placeholder="ID" style="width:77%;">
	             	<label for="floatingInput">ID</label>
	            </div>
	            <br>
				<div class="form-floating">
					<input type="password" class="form-control" name="mem_pw" placeholder="Password">
					<label for="floatingPassword">Password</label>
				</div>
				<br>
				<div class="form-floating">
					<input type="text" class="form-control" name="mem_name" placeholder="Name">
					<label for="floatingName">Name</label>
				</div>
				<br>
				<div class="form-floating">
					<input type="date" class="form-control" name="mem_birth" placeholder="Birth">
					<label for="floatingBirth"></label>
				</div>
				<br>
				<div class="form-floating">
					<input type="text" class="form-control" name="mem_tel" placeholder="Tel">
					<label for="floatingTel">Tel</label>
				</div>
				<br>
				<div class="form-floating">
					<input type="text" class="form-control" name="mem_email" placeholder="Email">
					<label for="floatingEmail">Email</label>
				</div>
				<br>
				<div class="form-floating">
					<input type="text" class="form-control" name="mem_addr" placeholder="Addr">
					<label for="floatingAddr">Address</label>
				</div>
				<br>
				<button class="w-100 btn btn-lg btn-primary" type="submit" onclick="return check()">JOIN</button>
			</form>
		</main>
	</section>
</body>
</html>
