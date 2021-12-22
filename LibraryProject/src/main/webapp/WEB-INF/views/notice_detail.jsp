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

<script type="text/javascript">
function check(){
	if (!confirm("삭제하시겠습니까?")) {
		history.go(0);
		return false;
	}else{
		alert("삭제가 완료되었습니다");
	}
}
</script>
</head>
<body>
<%-- 공지사항 글 자세히 보기 --%>
<form action="notice_delete" method="post">
	<table class="table table-hover" style="width:80%; margin: auto; align:center">
		<tr><th colspan="5"><h1 class="mb-5 fw-bold" align="center">Notice</h1></th></tr>
		<c:forEach items="${nlist }" var="n">
		<tr>
			<th scope="col" class="text-center">글번호</th>
			<td>${n.notice_no }<input type="hidden" name="notice_no" value="${n.notice_no }"></td>
		</tr>
		<tr>
			<th scope="col" class="text-center">제목</th>
			<td>${n.title }</td>
		</tr>
		<tr>
			<th scope="col" class="text-center">작성자</th>
			<td>${n.writer }</td>
		</tr>
		<tr>
			<th scope="col" class="text-center">작성일</th>
			<td>${n.writeday }</td>
		</tr>
		<tr>
			<th scope="col" class="text-center">조회수</th>
			<td>${n.readcnt }</td>
		</tr>
		<tr>
			<th scope="col" class="text-center">내용</th>
			<td>${n.content }</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
			<button class="w-15 btn btn-md btn-primary" type="button" onclick="location.href='notice'">목록</button>
		<c:choose>
			<c:when test="${isLogOn == true && member.mem_id == 'admin' && member.mem_no == 1}">
				<button class="w-15 btn btn-md btn-danger" type="submit" onclick="return check()">삭제</button>
			</c:when>
		</c:choose>
			</td>
		</tr>
		</c:forEach>
	</table>
</form>
</body>
</html>