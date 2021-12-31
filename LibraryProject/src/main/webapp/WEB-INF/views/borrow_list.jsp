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
    
		<table class="table" style="width:90%;" align="center">
			<tr><td colspan="90%"><h1 class="h1 mb-3 fw-normal" align="center">LIST</h1></td></tr>
			<tr>
				<th scope="col" class="text-center">회원 ID</th>
				<th scope="col" class="text-center">책 번호</th>
				<th scope="col" class="text-center" width="50%">책 제목</th>
				<th scope="col" class="text-center">대출일</th>
				<th scope="col" class="text-center">반납예정일</th>
				<th scope="col" class="text-center">대출상태</th>
			</tr>
		</table>
		
		<form action="checkin" method="post" name="fmem">
			<table class="table" style="width:90%;" align="center">
				<tr align="center"> 
				<c:set var="isbn0" value="${book_isbn[0] }" />
				<c:if test="${not empty isbn0}">
					<td>${mem_id }
						<input type="hidden" name="mem_no" value="${mem_no }">
						<input type="hidden" name="book_isbn" value="${book_isbn[0] }">
					</td>
					<td>${book_isbn[0] }</td> 
					<td width="50%">${book_title[0] }</td>
					<td>${be_date[0] }</td>
					<td>${be_return[0] }</td> 
					<td>
						<button class="btn btn-sm btn-primary" type="submit" onclick="return check()">반납하기</button>
					</td>
					</c:if>
				</tr>
			 </table>
		</form>
		
		<form action="checkin" method="post" name="fmem">
			<table class="table" style="width:90%;" align="center">
				<tr align="center"> 
				<c:set var="isbn1" value="${book_isbn[1] }" />
				<c:if test="${not empty isbn1}">
					<td>${mem_id }
						<input type="hidden" name="mem_no" value="${mem_no }">
						<input type="hidden" name="book_isbn" value="${book_isbn[1] }">
					</td>
					<td>${book_isbn[1] }</td> 
					<td width="50%">${book_title[1] }</td>
					<td>${be_date[1] }</td>
					<td>${be_return[1] }</td> 
					<td>
						<button class="btn btn-sm btn-primary" type="submit" onclick="return check()">반납하기</button>
					</td>
					</c:if>
				</tr>
			 </table>
		</form>
		
		<form action="checkin" method="post" name="fmem">
			<table class="table" style="width:90%;" align="center">
				<tr align="center"> 
				<c:set var="isbn2" value="${book_isbn[2] }" />
				<c:if test="${not empty isbn2}">
					<td>${mem_id }
						<input type="hidden" name="mem_no" value="${mem_no }">
						<input type="hidden" name="book_isbn" value="${book_isbn[2] }">
					</td>
					<td>${book_isbn[2] }</td> 
					<td width="50%">${book_title[2] }</td>
					<td>${be_date[2] }</td>
					<td>${be_return[2] }</td> 
					<td>
						<button class="btn btn-sm btn-primary" type="submit" onclick="return check()">반납하기</button>
					</td>
					</c:if>
				</tr>
			 </table>
		</form>
		
		<form action="checkin" method="post" name="fmem">
			<table class="table" style="width:90%;" align="center">
				<tr align="center"> 
				<c:set var="isbn3" value="${book_isbn[3] }" />
				<c:if test="${not empty isbn3}">
					<td>${mem_id }
						<input type="hidden" name="mem_no" value="${mem_no }">
						<input type="hidden" name="book_isbn" value="${book_isbn[3] }">
					</td>
					<td>${book_isbn[3] }</td> 
					<td width="50%">${book_title[3] }</td>
					<td>${be_date[3] }</td>
					<td>${be_return[3] }</td> 
					<td>
						<button class="btn btn-sm btn-primary" type="submit" onclick="return check()">반납하기</button>
					</td>
					</c:if>
				</tr>
			 </table>
		</form>
		
		<form action="checkin" method="post" name="fmem">
			<table class="table" style="width:90%;" align="center">
				<tr align="center"> 
				<c:set var="isbn4" value="${book_isbn[4] }" />
				<c:if test="${not empty isbn4}">
					<td>${mem_id }
						<input type="hidden" name="mem_no" value="${mem_no }">
						<input type="hidden" name="book_isbn" value="${book_isbn[4] }">
					</td>
					<td>${book_isbn[4] }</td> 
					<td width="50%">${book_title[4] }</td>
					<td>${be_date[4] }</td>
					<td>${be_return[4] }</td> 
					<td>
						<button class="btn btn-sm btn-primary" type="submit" onclick="return check()">반납하기</button>
					</td>
					</c:if>
				</tr>
			 </table>
		</form>
		
		<form action="checkin" method="post" name="fmem">
			<table class="table" style="width:90%;" align="center">
				<tr align="center"> 
				<c:set var="isbn5" value="${book_isbn[5] }" />
				<c:if test="${not empty isbn5}">
					<td>${mem_id }
						<input type="hidden" name="mem_no" value="${mem_no }">
						<input type="hidden" name="book_isbn" value="${book_isbn[5] }">
					</td>
					<td>${book_isbn[5] }</td> 
					<td width="50%">${book_title[5] }</td>
					<td>${be_date[5] }</td>
					<td>${be_return[5] }</td> 
					<td>
						<button class="btn btn-sm btn-primary" type="submit" onclick="return check()">반납하기</button>
					</td>
					</c:if>
				</tr>
			 </table>
		</form>
		
		<form action="checkin" method="post" name="fmem">
			<table class="table" style="width:90%;" align="center">
				<tr align="center"> 
				<c:set var="isbn6" value="${book_isbn[6] }" />
				<c:if test="${not empty isbn6}">
					<td>${mem_id }
						<input type="hidden" name="mem_no" value="${mem_no }">
						<input type="hidden" name="book_isbn" value="${book_isbn[6] }">
					</td>
					<td>${book_isbn[6] }</td> 
					<td width="50%">${book_title[6] }</td>
					<td>${be_date[6] }</td>
					<td>${be_return[6] }</td> 
					<td>
						<button class="btn btn-sm btn-primary" type="submit" onclick="return check()">반납하기</button>
					</td>
					</c:if>
				</tr>
			 </table>
		</form>
		
		<form action="checkin" method="post" name="fmem">
			<table class="table" style="width:90%;" align="center">
				<tr align="center"> 
				<c:set var="isbn7" value="${book_isbn[7] }" />
				<c:if test="${not empty isbn7}">
					<td>${mem_id }
						<input type="hidden" name="mem_no" value="${mem_no }">
						<input type="hidden" name="book_isbn" value="${book_isbn[7] }">
					</td>
					<td>${book_isbn[7] }</td> 
					<td width="50%">${book_title[7] }</td>
					<td>${be_date[7] }</td>
					<td>${be_return[7] }</td> 
					<td>
						<button class="btn btn-sm btn-primary" type="submit" onclick="return check()">반납하기</button>
					</td>
					</c:if>
				</tr>
			 </table>
		</form>
		
		<form action="checkin" method="post" name="fmem">
			<table class="table" style="width:90%;" align="center">
				<tr align="center"> 
				<c:set var="isbn8" value="${book_isbn[8] }" />
				<c:if test="${not empty isbn8}">
					<td>${mem_id }
						<input type="hidden" name="mem_no" value="${mem_no }">
						<input type="hidden" name="book_isbn" value="${book_isbn[8] }">
					</td>
					<td>${book_isbn[8] }</td> 
					<td width="50%">${book_title[8] }</td>
					<td>${be_date[8] }</td>
					<td>${be_return[8] }</td> 
					<td>
						<button class="btn btn-sm btn-primary" type="submit" onclick="return check()">반납하기</button>
					</td>
					</c:if>
				</tr>
			 </table>
		</form>
		
		<form action="checkin" method="post" name="fmem">
			<table class="table" style="width:90%;" align="center">
				<tr align="center"> 
				<c:set var="isbn9" value="${book_isbn[9] }" />
				<c:if test="${not empty isbn9}">
					<td>${mem_id }
						<input type="hidden" name="mem_no" value="${mem_no }">
						<input type="hidden" name="book_isbn" value="${book_isbn[9] }">
					</td>
					<td>${book_isbn[9] }</td> 
					<td width="50%">${book_title[9] }</td>
					<td>${be_date[9] }</td>
					<td>${be_return[9] }</td> 
					<td>
						<button class="btn btn-sm btn-primary" type="submit" onclick="return check()">반납하기</button>
					</td>
					</c:if>
				</tr>
			 </table>
		</form>
		
		
			<%-- 
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
	--%>
	</main>
	</section>
</body>
</html>