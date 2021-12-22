<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Din Library</title>
<!-- Bootstrap core CSS -->
<link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

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
    
	#notice_detail:link, #notice_detail:visited{
		color: black;
	}
	#notice_detail:hover{
		color: #FF8200;
	}
</style>
<jsp:include page="tos-side.jsp"/>
</head>
<body>
	<%-- 공지사항 --%>
	<table class="table table-hover" style="width:70%; margin: auto; margin-bottom: 10%; align:center">
		<thead>
		<br><br>
			<tr>
				<th colspan="5">
					<h1 class="mb-5 fw-bold" align="center">Notice</h1>
				</th>
			</tr>
			<tr>
				<th scope="col" class="text-center">글번호</th>
				<th scope="col" class="text-center">제목</th>
				<th scope="col" class="text-center">작성자</th>
				<th scope="col" class="text-center">작성일</th>
				<th scope="col" class="text-center">조회수</th>
			</tr>
		</thead>
		<tbody class="text-center">
		<c:forEach items="${nlist }" var="n">
			<tr>
				<td>${n.notice_no }</td>
				<td><a id="notice_detail" href="notice_detail?notice_no=${n.notice_no}">${n.title }</a></td>
				<td>${n.writer }</td>
				<td>${n.writeday }</td>
				<td>${n.readcnt }</td>
			</tr>
		</c:forEach>
		<c:choose>
			<c:when test="${isLogOn == true && member.mem_id == 'admin' && member.mem_no == 1}">
			<tr>
				<td colspan="5" align="right"><button class="w-15 btn btn-sm btn-success" onclick="location.href='notice_write'">글작성</button></td>
			</tr>
			</c:when>
		</c:choose>
	<%-- 
	<tr>
		<td colspan="5">
			<input type="button" name="1" value="1">
			<input type="button" name="2" value="2">
			<input type="button" name="3" value="3">
			<input type="button" name="4" value="4">
			<input type="button" name="5" value="5">
		</td>
	</tr>
	--%>
	</tbody>
</table>
</body>
</html>