<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
        <title>공지사항</title>
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
      
</style>
</head>

<!-- 테이블 시작 -->
<table class="table table-hover" style="width:80%;" align="center">
	<thead>
	<br><br>
	<tr><th colspan="5"><h1 class="mb-5 fw-bold" align="center">Notice</h1></th></tr>
		<tr>
			<th scope="col" class="text-center">목록</th>
			<th scope="col" class="text-center">제목</th>
			<th scope="col" class="text-center">글쓴이</th>
			<th scope="col" class="text-center">작성일</th>
			<th scope="col" class="text-center">조회수</th>
		</tr>
	</thead>
	<tbody class="text-center">
	<tr> <td>[공지사항]</td><td>도서관 &#039;방역패스 의무적용 시설&#039; 지정에 따른 운영 변경</td> <td>도서관</td> <td>2021.12.03</td> <td>100</td> </tr>
	<tr> <td>[공지사항]</td><td>단계적 일상 회복을 위한 도서관 이용 공지</td> <td>도서관</td> <td>2021.12.01</td> <td>97</td> </tr>
	<tr> <td>[공지사항]</td><td>아시아 전문도서관 국제컨퍼런스(ICoASL 2021) 온라인 개최 및 참여 안내</td> <td>도서관</td> <td>2021.11.28</td> <td>87</td> </tr>
	<tr> <td>[공지사항]</td><td>본관 및 디지털관 인테리어 공사 알림</td> <td>도서관</td> <td>2021.11.10</td> <td>102</td> </tr>
	<tr> <td>[공지사항]</td><td>2021년 구입예정 국내 미소장자료 목록 공개</td> <td>도서관</td> <td>2021.11.02</td> <td>110</td> </tr>
	<tr> <td>[공지사항]</td><td>[2021 겨울독서교실] 운영 안내</td> <td>도서관</td> <td>2021.10.26</td> <td>203</td> </tr>
	<tr> <td>[공지사항]</td><td>부모교육 <그림책과 함께하는 자녀 진로코칭>운영 안내</td> <td>도서관</td> <td>2021.10.19</td> <td>216</td> </tr>
	<tr> <td>[공지사항]</td><td>2021년 희망도서 서비스 신청 종료 안내</td> <td>도서관</td> <td>2021.10.13</td> <td>222</td> </tr>
	<tr> <td>[공지사항]</td><td>11월 마음에 온(On)책 도서전시 <우리 모두, 힐링></td> <td>도서관</td> <td>2021.09.29</td> <td>198</td> </tr>
	<tr><td colspan="5">
						<input type="button" name="1" value="1">
						<input type="button" name="2" value="2">
						<input type="button" name="3" value="3">
						<input type="button" name="4" value="4">
						<input type="button" name="5" value="5">
	</td></tr>
	</tbody>
</table>
</body>
</html>