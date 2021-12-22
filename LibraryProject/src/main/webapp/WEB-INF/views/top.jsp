<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Din Lib</title>
</head>
<!-- top -->
<header class="bg-dark py-5">
	<div class="container px-5">
		<div class="row gx-5 justify-content-center">
			<div class="col-lg-6">
				<div class="text-center my-5">
 					<h1 class="display-5 fw-bolder text-yellow mb-2"><img class="logo" src="./image/Din_Logo-003.png" alt="..." width="300" height="100"/></h1>
					
                            <div class="d-grid gap-3 d-sm-flex justify-content-sm-center">
                                <c:choose>
                                	<c:when test="${isLogOn == true && member != null }">
                                		<p class="p-2 me-sm-2 text-white">환영합니다. ${member.mem_name }님!&emsp; </p>
                                		<a class="btn btn-outline-light btn-sm p-3 me-sm-3" href="logout">로그아웃</a>
                                	</c:when>
                                	<c:otherwise>
                                		<a class="btn btn-outline-light btn-sm p-3 me-sm-3" href="join">회원가입</a>
                                		<a class="btn btn-outline-light btn-sm p-3 me-sm-3" href="login">로그인</a>
                                	</c:otherwise>
                                </c:choose>
                               <a class="btn btn-outline-light btn-sm p-3" href="book">홈</a>
                            </div>
				</div>
			</div>
		</div>
	</div>
</header>
</html>