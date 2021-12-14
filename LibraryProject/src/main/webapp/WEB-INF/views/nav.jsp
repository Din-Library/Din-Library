<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Din Lib</title>
</head>
<body>
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container" >
                <a class="navbar-brand" href="#page-top"><!--<img class="logo" src="./image/Din_Logo-003.png" alt="..." />-->Din Library</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ms-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#services">도서관 소개</a></li>
                        <li class="nav-item"><a class="nav-link" href="search">도서 검색</a></li>
                        <li class="nav-item"><a class="nav-link" href="#team">대출/반납</a></li>
                    <c:choose>
                        <c:when test="${isLogOn == true && member != null }">
                        <li class="nav-item"><a class="nav-link" href="mypage?mem_no=${member.mem_no }">마이페이지</a></li>
                        </c:when>
                    </c:choose>
                    </ul>
                </div>
            </div>
        </nav>
</body>
</html>



<!--  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-5">
                <a class="navbar-brand" href="index">도서관리 프로그램</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">도서관 소개</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">도서 목록</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">도서 검색</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">대출/반납</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">예약도서</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">마이페이지</a></li>
                    </ul>
                </div>
            </div>
        </nav> -->
