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
<script type="text/javascript">
	function selChange(){
		var sel = document.getElementById('cntPerPage').value;
		location.href="notice?nowPage=${paging.nowPage}&cntPerPage="+sel;
	}
</script>
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
		<c:forEach items="${viewAll }" var="n">
			<tr>
				<td>${n.notice_no }</td>
				<td><a id="notice_detail" href="notice_detail?notice_no=${n.notice_no}">${n.title }</a></td>
				<td>${n.writer }</td>
				<td>${n.writeday }</td>
				<td>${n.readcnt }</td>
			</tr>
		</c:forEach>
			<tr>		
				<td colspan="5">
				<c:if test="${paging.startPage != 1 }">
					<a id="notice_detail" href="notice?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
				</c:if>
				<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
					<c:choose>
						<c:when test="${p == paging.nowPage }">
							<b>${p }</b>
						</c:when>
						<c:when test="${p != paging.nowPage }">
							<a id="notice_detail" href="notice?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
						</c:when>
					</c:choose>
				</c:forEach>
				<c:if test="${paging.endPage != paging.lastPage}">
					<a id="notice_detail" href="notice?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
				</c:if>
				</td>
			</tr>
		<c:choose>
			<c:when test="${isLogOn == true && member.mem_id == 'admin' && member.mem_no == 1}">
			<tr>
				<td colspan="5" align="right"><button class="w-15 btn btn-sm btn-success" onclick="location.href='notice_write'">글작성</button></td>
			</tr>
			</c:when>
		</c:choose>
	</tbody>
</table>
</body>
</html>