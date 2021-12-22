<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<style>
.form-join{
	width: 30%;
	align: center;
	margin: 0 auto;
}
</style>
</head>
<body class="text-center" style="overflow-x: visible; width:1903px; overflow-y:scroll;">
	<section>
		<main class="form-join">
			<form action="join_save" method="post">
           		<img class="mb-4" src="./image/Din_Logo-005.png" alt="logo" width="500" height="200">
             	<h1 class="h3 mb-3 fw-normal">JOIN</h1>

				<div class="form-floating">
	             	<input type="text" class="form-control" name="mem_id" placeholder="ID">
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
				<button class="w-100 btn btn-lg btn-primary" type="submit">JOIN</button>
			</form>
		</main>
	</section>
</body>
</html>
