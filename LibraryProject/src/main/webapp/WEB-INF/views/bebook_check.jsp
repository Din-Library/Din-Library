<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Din Library</title>
<link href="./resources/css/styles.css" rel="stylesheet" />
<style type="text/css">
	.container{
		text-align: center;
		margin-top: 5%;
	}
	p.item-italic{
		font-style: italic;
  		font-family: 'Pretendard-Regular';
	}
</style>
<script type="text/javascript">
	function confirm(){
		alert("대출이 완료되었습니다");
		document.location.href="redirect:borrow_list";
	}
	function stillout(){
		alert("현재 대출중인 도서입니다");
		history.go(-1);
	}
	function bebookfull(){
		alert("대출 가능한 권수를 초과하여 대출이 불가합니다");
		history.go(-1);
	}
</script>
</head>
<body>
	<%-- 대출 도서 확인 --%>
	<!-- 도서 대출 상태 변수 설정 -->
	<c:set var="still_out" value="${still_out }" />
	<!-- 회원 당 도서 대출 권수 변수 설정 -->
	<c:set var="bebook_cnt" value="${bebook_cnt }" />
	
	<div class="container">
		<form action="bebook" method="post">
        	<div class="row justify-content-center">
            	<div class="col-lg-8">          
                	<h2 class="text-uppercase">${title }</h2>
                    <p class="item-italic text-muted">
                    	${author }<br>
                    	${publisher }
                    </p>
                    <img class="img-fluid" src="${cover } " alt="..." width="200" height="200">
                    <br>
                    <p>${description }</p>
                    
                    	<input type="hidden" name="isbn" value="${isbn }">
                    	<input type="hidden" name="title" value="${title }">
                    	<input type="hidden" name="mem_no" value="${mem_no }">
                    	<input type="hidden" name="mem_id" value="${mem_id }">
                    	
                    <c:choose>
                    	<c:when test="${still_out && bebook_cnt < 10}">
                    		<button class="btn btn-primary btn-xl" type="submit" onclick="return confirm()">
                    			대출하기
                    		</button>
                    	</c:when>
                    	<c:when test="${!still_out && bebook_cnt < 10}">
                    		<button class="btn btn-secondary btn-xl" type="button" onclick="return stillout()">
                    			대출중
                    		</button>
                    	</c:when>
                    	<c:otherwise>
                   			<button class="btn btn-danger btn-xl" type="button" onclick="return bebookfull()">
                    			대출불가
                    		</button>
                    	</c:otherwise>
                    </c:choose>
                </div>
             </div>
		</form>
	</div>
</body>
</html>