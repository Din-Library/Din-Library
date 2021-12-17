<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath } "/>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">
<title>Din Library</title>
<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/">

<!-- Bootstrap core CSS -->
<link href="./resources/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
      .form-signin{
      	width: 30%;
      	align: center;
      	margin: 0 auto;
      	margin-top: 20px;
      }
</style>

<script type="text/javascript">
 function check(){

		var f = document.delmem;
		var sbe = f.mem_bebook.value;
		if (Number(sbe)>=1){
			alert("대출 중인 책이 있어 탈퇴 불가합니다.");
			return false;
		}
		
	 	alert("탈퇴가 완료되었습니다.");
		f.submit();
}
		
 </script>
<!-- Custom styles for this template 
<link href="signin.css" rel="stylesheet"> -->



</head>
<body class="text-center">
	<section>
		<main class="form-signin">
  			<form action="memdelete" method="post" name="delmem">
    			<img class="mb-4" src="./image/bicon.png" alt="" width="72" height="57">
    			<h1 class="h3 mb-3 fw-normal">Leave</h1>
<c:forEach items="${dellist }" var="mlist">
    			<div class="form-floating">
      				<input type="text" class="form-control" name="mem_id" placeholder="ID" readonly="readonly" value="${mlist.mem_id }">
      				<input type="hidden" name="mem_no"value="${mlist.mem_no }">
      				<label for="floatingInput">ID</label>
    			</div>
    			<br>
				<div class="form-floating">
      				<input type="text" class="form-control" name="mem_bebook" placeholder="Borrow Book" readonly="readonly" value="${mlist.mem_bebook }">
					<label for="floatingInput">Borrow Book</label>
    			</div>
    			<br>
    			<button class="w-25 btn btn-lg btn-primary" type="submit" onclick="return check()">Leave</button>
    			<button class="w-25 btn btn-lg btn-primary" type="button" onclick="location.href='book'">Home</button>
</c:forEach>
    		</form>
		</main>
	</section>
</body>
</html>