<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Din Library</title>   
<script type="text/javascript">
	function check(){
		if (!confirm("반납하시겠습니까?")) {
			history.go(0);
			return false;
		}else{
			alert("반납이 완료되었습니다");
		}
	}
</script>
</head>
<body>
	<%-- 대출현황 --%>
   <section>
	<main class="form-join">
    <form action="checkin" method="post" name="fmem">
		<table class="table" style="width:90%;" align="center">
			<tr><td colspan="90%"><h1 class="h1 mb-3 fw-normal" align="center">LIST</h1></td></tr>
			<tr>
				<th scope="col" class="text-center">회원 ID</th>
				<th scope="col" class="text-center">책 번호</th>
				<th scope="col" class="text-center">책 제목</th>
				<th scope="col" class="text-center">대출일</th>
				<th scope="col" class="text-center">반납예정일</th>
				<th scope="col" class="text-center">대출상태</th>
			</tr>

			<c:forEach items="${bo_list }" var="bolist">

				<tr align="center"> 
					<td>${bolist.mem_id }
						<input type="hidden" name="mem_no" value="${bolist.mem_no }">
						<input type="hidden" name="book_isbn" value="${bolist.book_isbn }">
					</td>
					<td>${bolist.book_isbn }</td> 
					<td width="50%">${bolist.book_title }</td>
					<td>${bolist.be_date }</td>
					<td>${bolist.be_return }</td> 
					<td>
						<button class="btn btn-sm btn-primary" type="submit" onclick="return check()">반납하기</button>
					</td> 
				</tr>
			</c:forEach>

		</table>
	</form>
	</main>
	</section>
</body>
</html>