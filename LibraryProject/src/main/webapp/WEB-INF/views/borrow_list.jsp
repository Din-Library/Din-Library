<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
        <title>대출중인 도서</title>        
</head>
<body>
   <section>
	<main class="form-join">
    <form action="" method="post" name="fmem">
	<table class="table" style="width:90%;" align="center">
	<tr><td colspan="90%"><h1 class="h1 mb-3 fw-normal" align="center">List</h1></td></tr>
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
	<td>${bolist.mem_id }</td>
	
	<td>${bolist.book_isbn }</td> 
	
	<td>${bolist.book_title }</td>
	
	<td>${bolist.be_date }</td>
	
	<td>${bolist.be_return }</td> 
	
	<td>${bolist.be_status}&nbsp;&nbsp;
	<button class="w-25 btn btn-sm btn-primary" type="submit" onclick="return check()">반납</button></td> </tr>

	</c:forEach>

</table>   
<%--              
			<div align="center">
             <button class="w-25 btn btn-lg btn-primary" type="submit" onclick="return check()">Edit</button> 
             <button class="btn btn-lg btn-primary" width="43px" type="button" onclick="location.href='borrow_list?mem_no=${plist.mem_no }">Borrow list</button>
             <button class="w-25 btn btn-lg btn-primary" type="button" onclick="location.href='my_delete?mem_no=${plist.mem_no }'">Leave</button>
             </div> 
             --%>
          </form>
      </main>
   </section>
</body>
</html>