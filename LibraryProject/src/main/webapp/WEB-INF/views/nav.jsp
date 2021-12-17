<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Core theme CSS (includes Bootstrap)-->
	<link href="./resources/css/styles.css" rel="stylesheet" />
<meta charset="UTF-8">
<title>Din Lib</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container" >
			<a class="navbar-brand" href="book">Din Library</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				Menu
				<i class="fas fa-bars ms-1"></i>
			</button>
	
			
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">

					<li class="nav-item"><a class="nav-link" href="introduce">도서관 소개</a></li>
					<li class="nav-item"><a class="nav-link" href="information">이용 안내</a></li>

					<c:choose>
                        <c:when test="${isLogOn == true && member != null }">
                        <li class="nav-item"><a class="nav-link" href="borrow_list?mem_no=${member.mem_no }">대출현황</a></li>
                        <li class="nav-item"><a class="nav-link" href="mypage?mem_no=${member.mem_no }">마이페이지</a></li>
                        </c:when>
                    </c:choose>
				</ul>
			</div>
		</div>
	</nav>

   <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="./resources/js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
