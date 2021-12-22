<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<link href="./resources/css/styles.css" rel="stylesheet" />
<script type="text/javascript">
	function check(){

		var f = document.fmem;
//비밀번호 공백불가--------------------------------
		var spw = f.mem_pw.value;
		if (spw==""){
			alert("패스워드 입력이 누락되었습니다.")
			f.mem_pw.select();
			return false;
		}
//비밀번호 길이 제한 --------------------------------
	    if(spw.length<2 || spw.length>20) {
	       alert("패스워드의 길이는 20자 이내로 입력하세요.");
	       f.mem_pw.select();
	       return false;
	    }
		/*
//비밀번호 영문+숫자조합--------------------------------		
		var rpw = /^[a-z0-9]{6,15}$/; //>영어 소문자, 숫자 6~15자
		if (!rpw.test(spw)){
			alert("패스워드는 영어 소문자, 숫자 6~15자로 조합해주시기 바랍니다.")
			f.mem_pw.select();
			return false;
		}
		*/
//전화번호 공백불가--------------------------------
		var stel = f.mem_tel.value;
		if (stel==""){
			alert("휴대폰번호 입력이 누락되었습니다.")
			f.mem_tel.select();
			return false;
		}
		
//전화번호 형식--------------------------------
		var rtel = /^[0-1]{3}-[0-9]{4}-[0-9]{4}$/; 

		if (!rtel.test(stel)){
			alert("휴대폰번호 입력 형식을 확인해 주세요.")
			f.mem_tel.select();
			return false;
		}		
	
				
//이메일 공백불가--------------------------------
		var smail = f.mem_email.value;
		if (smail==""){
			alert("이메일주소 입력이 누락되었습니다.")
			f.mem_email.select();
			return false;
		}
        //email 형식 --------------
        
        if(!remail.test(semail)) {
           alert("email의 형식이 올바르지 않습니다.");
           f.mem_email.select();
           return false;
        }
		
		
		
//주소 공백불가--------------------------------
		var sadd = f.mem_addr.value;
		if (sadd==""){
			alert("주소 입력이 누락되었습니다.")
			f.mem_addr.select();
			return false;
		}
//주소 길이 제한 ------------------------------
	    if(saddr.length<2 || saddr.length>16) {
	       alert("주소의 길이는 15자 이내로 입력하세요.");
	       f.mem_addr.select();
	       return false;
	    }
		
		alert("수정이 완료되었습니다.");
		f.submit();
	}
	
</script>
<meta charset="UTF-8">
        <title>Din Library</title>
        <!-- Favicon-->
        
        <link rel="icon" type="image/x-icon" href="./resources/assets/favicon.ico" />
        
        <!-- Font Awesome icons (free version)-->
        
		<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
        
        <!-- Google fonts-->
        
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />

  <!-- Bootstrap core CSS -->
		<link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- Favicons -->
    
	<link rel="apple-touch-icon" href="/docs/5.0/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
	<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
	<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
	<link rel="manifest" href="/docs/5.0/assets/img/favicons/manifest.json">
	<link rel="mask-icon" href="/docs/5.0/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
	<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon.ico">
	<meta name="theme-color" content="#7952b3">

<style>
   .bd-placeholder-img {
      font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      .form-join{
         width: 30%;
         align: center;
         margin: 0 auto;
         margin-top: 20px;
      }
     button{
     	text-align: center;
     }
</style>

</head>
<body>
	<%-- 마이페이지 --%>
   <section>
	<main class="form-join">
           <form action="mymmodify" method="post" name="fmem">
             <h1 align="center" class="h3 mb-3 fw-normal">My Page</h1>
             
			<c:forEach items="${pagelist }" var="plist">
			<div class="form-floating">
             	  <input type="hidden" class="form-control" name="mem_no" placeholder="No" readonly="readonly" value="${plist.mem_no }">
  <!--                 <label>ID</label> -->
  			
             </div>
             <div class="form-floating">
             	  <input type="text" class="form-control" name="mem_id" placeholder="ID" readonly="readonly" value="${plist.mem_id }">
                  <label>ID</label>
             </div>
             <br>
             <div class="form-floating">
                  <input type="password" class="form-control" name="mem_pw" placeholder="Password" value="${plist.mem_pw }">
                  <label for="floatingPassword">Password</label>
             </div>
             <br>
             <div class="form-floating">
                  <input type="text" class="form-control" name="mem_name" placeholder="Name" readonly="readonly" value="${plist.mem_name }">
                  <label for="floatingName">Name</label>
             </div>
             <br>
             <div class="form-floating">
                  <input type="date" class="form-control" name="mem_birth" placeholder="Birth" value="${plist.mem_birth }">
                  <label for="floatingBirth">Birth</label>
             </div>
             <br>
             <div class="form-floating">
                  <input type="text" class="form-control" name="mem_tel" placeholder="Tel" value="${plist.mem_tel }">
                  <label for="floatingTel">Tel</label>
             </div>
             <br>
             <div class="form-floating">
                  <input type="text" class="form-control" name="mem_email" placeholder="Email" value="${plist.mem_email }">
                  <label for="floatingEmail">Email</label>
             </div>
             <br>
             <div class="form-floating">
                  <input type="text" class="form-control" name="mem_addr" placeholder="Addr" value="${plist.mem_addr }">
                  <label for="floatingAddr">Address</label>
             </div>
			<!-- 히든 유효성검사용 -->             
             <div class="form-floating">
                  <input type="hidden" class="form-control" name="mem_bebook" placeholder="mem_bebook" value="${plist.mem_bebook }">
             </div>
             
			

             <br>
     
             <div align="center">
             <button class="w-25 btn btn-lg btn-primary" type="submit" onclick="return check()">Edit</button>
             <button class="w-25 btn btn-lg btn-primary" type="button" onclick="location.href='my_delete?mem_id=${plist.mem_id }'">Leave</button>
             </div>
             </c:forEach>
          </form>
      </main>
   </section>
</body>
</html>

<%-- onclick="location.href='memdelete?mem_id=${plist.mem_id}'" --%>