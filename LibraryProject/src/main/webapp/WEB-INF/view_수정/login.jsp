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
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Din Library</title>
<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/">

<!-- Bootstrap core CSS -->
<link href="./resources/css/styles.css" rel="stylesheet" />
<link href="./resources/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
.form-signin{
	width: 30%;
	align: center;
	margin: 0 auto;
}
</style>

<c:choose>
	<c:when test="${result=='loginFailed' }">
		<script type="text/javascript">
			window.onload=function(){
				alert("아이디 혹은 비밀번호가 틀립니다. 다시 로그인 하세요");
			}
		</script>
	</c:when>
</c:choose>
</head>
<body class="text-center" style="overflow-x: visible; width:1903px; overflow-y:scroll;">
	<section>
		<main class="form-signin">
  			<form action="login_act" method="post">
    			<img class="mb-4" src="./image/Din_Logo-005.png" alt="logo" width="500" height="200">
    			<h1 class="h3 mb-3 fw-normal">LOGIN</h1>
    			<div class="form-floating">
      				<input type="text" class="form-control" name="mem_id" placeholder="ID">
      				<label for="floatingInput">ID</label>
    			</div>
    			<div class="form-floating">
      				<input type="password" class="form-control" name="mem_pw" placeholder="Password">
      				<label for="floatingPassword">Password</label>
    			</div>
    			<br>
    			<button class="w-100 btn btn-lg btn-primary" type="submit">LOGIN</button>
    		</form>
		</main>
	</section>
</body>
</html>