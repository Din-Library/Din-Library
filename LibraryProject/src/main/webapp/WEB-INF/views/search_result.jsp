<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Din Library</title>
<link href="./resources/css/styles.css" rel="stylesheet" />
<link href="http://fonts.googleapis.com/earlyaccess/jejugothic.css" rel="stylesheet">
<style type="text/css">
	td{
		padding: 10px;
		margin: 10px;
	}
	#bebook:link, #bebook:visited{
		color: black;
	}
	p.item-italic{
		font-style: italic;
  		font-family: 'Pretendard-Regular';
	}
	.section-heading{
		font-family: 'Jeju Gothic', sans-serif;
	}
</style>
</head>
<body>
	<%-- 도서검색 결과 --%>
	<section>
	<div class="container">
		<div class="text-center">
        	<h2 class="section-heading">"${search_value }"의 검색 결과</h2>
        	<hr style="margin-bottom: 6.25rem;">
        </div>
        
        <!-- 검색 도서 목록 -->
        <div class="search_result">
        <form action="bebook_confirm" method="post">
	        <table>
	        	<tr>
	        		<c:set var="title0" value="${title[0] }" />
	        		<c:if test="${not empty title0}">
		        		<td width="5%"><h1>1</h1></td>
		        		<td width="15%"><img class="img-fluid" src="${cover[0] }" alt="..." width="200px" height="200px"/></td>
		        		<td>
		        			<h3>${title[0] }</h3>
		        			<p class="item-italic text-muted">${author[0] } | ${publisher[0] }</p>
		        			${description[0] }
		        		</td>
		        		<c:choose>
		        			<c:when test="${isLogOn == true && member != null }">
		        				<td width="10%">
		        					<input type="hidden" name="isbn" value="${isbn[0] }">
		        					<input type="hidden" name="title" value="${title[0] }">
		        					<input type="hidden" name="author" value="${author[0] }">
		        					<input type="hidden" name="cover" value="${cover[0] }">
		        					<input type="hidden" name="description" value="${description[0] }">
		        					<input type="hidden" name="mem_no" value="${member.mem_no }">
		        					<input type="hidden" name="mem_id" value="${member.mem_id }">
		        					<button class="w-100 btn-dark btn-primary" type="submit">대출하기</button>
		        				</td>
		        			</c:when>
		        			<c:otherwise>
		        				<td width="10%"><a id="bebook" href="login">로그인하기</a></td>
		        			</c:otherwise>
		        		</c:choose>
	        		</c:if>
	        	</tr>
	        </table>
		</form>
	    
	    <form action="bebook_confirm" method="post">
	        <table>
	        	<tr>
	        		<c:set var="title1" value="${title[1] }" />
	        		<c:if test="${not empty title1}">
		        		<td width="5%"><h1>2</h1></td>
		        		<td width="15%"><img class="img-fluid" src="${cover[1] }" alt="..." width="200px" height="200px"/></td>
		        		<td>
		        			<h3>${title[1] }</h3>
		        			<p class="item-italic text-muted">${author[1] } | ${publisher[1] }</p>
		        			${description[1] }
		        		</td>
		        		<c:choose>
		        			<c:when test="${isLogOn == true && member != null }">
		        				<td width="10%">
		        					<input type="hidden" name="isbn" value="${isbn[1] }">
		        					<input type="hidden" name="title" value="${title[1] }">
		        					<input type="hidden" name="author" value="${author[1] }">
		        					<input type="hidden" name="cover" value="${cover[1] }">
		        					<input type="hidden" name="description" value="${description[1] }">
		        					<input type="hidden" name="mem_no" value="${member.mem_no }">
		        					<input type="hidden" name="mem_id" value="${member.mem_id }">
		        					<button class="w-100 btn-dark btn-primary" type="submit">대출하기</button>
		        				</td>
		        			</c:when>
		        			<c:otherwise>
		        				<td width="10%"><a id="bebook" href="login">로그인하기</a></td>
		        			</c:otherwise>
		        		</c:choose>
		        	</c:if>
	        	</tr>
	        </table>
		</form>
		
		<form action="bebook_confirm" method="post">
	        <table>
	        	<tr>
	        		<c:set var="title2" value="${title[2] }" />
	        		<c:if test="${not empty title2}">
		        		<td width="5%"><h1>3</h1></td>
		        		<td width="15%"><img class="img-fluid" src="${cover[2] }" alt="..." width="200px" height="200px"/></td>
		        		<td>
		        			<h3>${title[2] }</h3>
		        			<p class="item-italic text-muted">${author[2] } | ${publisher[2] }</p>
		        			${description[2] }
		        		</td>
		        		<c:choose>
		        			<c:when test="${isLogOn == true && member != null }">
		        				<td width="10%">
		        					<input type="hidden" name="isbn" value="${isbn[2] }">
		        					<input type="hidden" name="title" value="${title[2] }">
		        					<input type="hidden" name="author" value="${author[2] }">
		        					<input type="hidden" name="cover" value="${cover[2] }">
		        					<input type="hidden" name="description" value="${description[2] }">
		        					<input type="hidden" name="mem_no" value="${member.mem_no }">
		        					<input type="hidden" name="mem_id" value="${member.mem_id }">
		        					<button class="w-100 btn-dark btn-primary" type="submit">대출하기</button>
		        				</td>
		        			</c:when>
		        			<c:otherwise>
		        				<td width="10%"><a id="bebook" href="login">로그인하기</a></td>
		        			</c:otherwise>
		        		</c:choose>
	        		</c:if>
	        	</tr>
	        </table>
		</form>
		
		<form action="bebook_confirm" method="post">
	        <table>
	        	<tr>
	        		<c:set var="title3" value="${title[3] }" />
	        		<c:if test="${not empty title3}">
		        		<td width="5%"><h1>4</h1></td>
		        		<td width="15%"><img class="img-fluid" src="${cover[3] }" alt="..." width="200px" height="200px"/></td>
		        		<td>
		        			<h3>${title[3] }</h3>
		        			<p class="item-italic text-muted">${author[3] } | ${publisher[3] }</p>
		        			${description[3] }
		        		</td>
		        		<c:choose>
		        			<c:when test="${isLogOn == true && member != null }">
		        				<td width="10%">
		        					<input type="hidden" name="isbn" value="${isbn[3] }">
		        					<input type="hidden" name="title" value="${title[3] }">
		        					<input type="hidden" name="author" value="${author[3] }">
		        					<input type="hidden" name="cover" value="${cover[3] }">
		        					<input type="hidden" name="description" value="${description[3] }">
		        					<input type="hidden" name="mem_no" value="${member.mem_no }">
		        					<input type="hidden" name="mem_id" value="${member.mem_id }">
		        					<button class="w-100 btn-dark btn-primary" type="submit">대출하기</button>
		        				</td>
		        			</c:when>
		        			<c:otherwise>
		        				<td width="10%"><a id="bebook" href="login">로그인하기</a></td>
		        			</c:otherwise>
		        		</c:choose>
	        		</c:if>
	        	</tr>
	        </table>
		</form>
		
		<form action="bebook_confirm" method="post">
	        <table>
	        	<tr>
	        		<c:set var="title4" value="${title[4] }" />
	        		<c:if test="${not empty title4}">
		        		<td width="5%"><h1>5</h1></td>
		        		<td width="15%"><img class="img-fluid" src="${cover[4] }" alt="..." width="200px" height="200px"/></td>
		        		<td>
		        			<h3>${title[4] }</h3>
		        			<p class="item-italic text-muted">${author[4] } | ${publisher[4] }</p>
		        			${description[4] }
		        		</td>
		        		<c:choose>
		        			<c:when test="${isLogOn == true && member != null }">
		        				<td width="10%">
		        					<input type="hidden" name="isbn" value="${isbn[4] }">
		        					<input type="hidden" name="title" value="${title[4] }">
		        					<input type="hidden" name="author" value="${author[4] }">
		        					<input type="hidden" name="cover" value="${cover[4] }">
		        					<input type="hidden" name="description" value="${description[4] }">
		        					<input type="hidden" name="mem_no" value="${member.mem_no }">
		        					<input type="hidden" name="mem_id" value="${member.mem_id }">
		        					<button class="w-100 btn-dark btn-primary" type="submit">대출하기</button>
		        				</td>
		        			</c:when>
		        			<c:otherwise>
		        				<td width="10%"><a id="bebook" href="login">로그인하기</a></td>
		        			</c:otherwise>
		        		</c:choose>
		        	</c:if>
	        	</tr>
	        </table>
		</form>
		
		<form action="bebook_confirm" method="post">
	        <table>
	        	<tr>
	        		<c:set var="title5" value="${title[5] }" />
	        		<c:if test="${not empty title5}">
		        		<td width="5%"><h1>6</h1></td>
		        		<td width="15%"><img class="img-fluid" src="${cover[5] }" alt="..." width="200px" height="200px"/></td>
		        		<td>
		        			<h3>${title[5] }</h3>
		        			<p class="item-italic text-muted">${author[5] } | ${publisher[5] }</p>
		        			${description[5] }
		        		</td>
		        		<c:choose>
		        			<c:when test="${isLogOn == true && member != null }">
		        				<td width="10%">
		        					<input type="hidden" name="isbn" value="${isbn[5] }">
		        					<input type="hidden" name="title" value="${title[5] }">
		        					<input type="hidden" name="author" value="${author[5] }">
		        					<input type="hidden" name="cover" value="${cover[5] }">
		        					<input type="hidden" name="description" value="${description[5] }">
		        					<input type="hidden" name="mem_no" value="${member.mem_no }">
		        					<input type="hidden" name="mem_id" value="${member.mem_id }">
		        					<button class="w-100 btn-dark btn-primary" type="submit">대출하기</button>
		        				</td>
		        			</c:when>
		        			<c:otherwise>
		        				<td width="10%"><a id="bebook" href="login">로그인하기</a></td>
		        			</c:otherwise>
		        		</c:choose>
		        	</c:if>
	        	</tr>
	        </table>
		</form>
		
		<form action="bebook_confirm" method="post">
	        <table>
	        	<tr>
	        		<c:set var="title6" value="${title[6] }" />
	        		<c:if test="${not empty title6}">
		        		<td width="5%"><h1>7</h1></td>
		        		<td width="15%"><img class="img-fluid" src="${cover[6] }" alt="..." width="200px" height="200px"/></td>
		        		<td>
		        			<h3>${title[6] }</h3>
		        			<p class="item-italic text-muted">${author[6] } | ${publisher[6] }</p>
		        			${description[6] }
		        		</td>
		        		<c:choose>
		        			<c:when test="${isLogOn == true && member != null }">
		        				<td width="10%">
		        					<input type="hidden" name="isbn" value="${isbn[6] }">
		        					<input type="hidden" name="title" value="${title[6] }">
		        					<input type="hidden" name="author" value="${author[6] }">
		        					<input type="hidden" name="cover" value="${cover[6] }">
		        					<input type="hidden" name="description" value="${description[6] }">
		        					<input type="hidden" name="mem_no" value="${member.mem_no }">
		        					<input type="hidden" name="mem_id" value="${member.mem_id }">
		        					<button class="w-100 btn-dark btn-primary" type="submit">대출하기</button>
		        				</td>
		        			</c:when>
		        			<c:otherwise>
		        				<td width="10%"><a id="bebook" href="login">로그인하기</a></td>
		        			</c:otherwise>
		        		</c:choose>
		        	</c:if>
	        	</tr>
	        </table>
		</form>
		
		<form action="bebook_confirm" method="post">
	        <table>
	        	<tr>
	        		<c:set var="title7" value="${title[7] }" />
	        		<c:if test="${not empty title7}">
		        		<td width="5%"><h1>8</h1></td>
		        		<td width="15%"><img class="img-fluid" src="${cover[7] }" alt="..." width="200px" height="200px"/></td>
		        		<td>
		        			<h3>${title[7] }</h3>
		        			<p class="item-italic text-muted">${author[7] } | ${publisher[7] }</p>
		        			${description[7] }
		        		</td>
		        		<c:choose>
		        			<c:when test="${isLogOn == true && member != null }">
		        				<td width="10%">
		        					<input type="hidden" name="isbn" value="${isbn[7] }">
		        					<input type="hidden" name="title" value="${title[7] }">
		        					<input type="hidden" name="author" value="${author[7] }">
		        					<input type="hidden" name="cover" value="${cover[7] }">
		        					<input type="hidden" name="description" value="${description[7] }">
		        					<input type="hidden" name="mem_no" value="${member.mem_no }">
		        					<input type="hidden" name="mem_id" value="${member.mem_id }">
		        					<button class="w-100 btn-dark btn-primary" type="submit">대출하기</button>
		        				</td>
		        			</c:when>
		        			<c:otherwise>
		        				<td width="10%"><a id="bebook" href="login">로그인하기</a></td>
		        			</c:otherwise>
		        		</c:choose>
		        	</c:if>
	        	</tr>
	        </table>
		</form>
		
		<form action="bebook_confirm" method="post">
	        <table>
	        	<tr>
	        		<c:set var="title8" value="${title[8] }" />
	        		<c:if test="${not empty title8}">
		        		<td width="5%"><h1>9</h1></td>
		        		<td width="15%"><img class="img-fluid" src="${cover[8] }" alt="..." width="200px" height="200px"/></td>
		        		<td>
		        			<h3>${title[8] }</h3>
		        			<p class="item-italic text-muted">${author[8] } | ${publisher[8] }</p>
		        			${description[8] }
		        		</td>
		        		<c:choose>
		        			<c:when test="${isLogOn == true && member != null }">
		        				<td width="10%">
		        					<input type="hidden" name="isbn" value="${isbn[8] }">
		        					<input type="hidden" name="title" value="${title[8] }">
		        					<input type="hidden" name="author" value="${author[8] }">
		        					<input type="hidden" name="cover" value="${cover[8] }">
		        					<input type="hidden" name="description" value="${description[8] }">
		        					<input type="hidden" name="mem_no" value="${member.mem_no }">
		        					<input type="hidden" name="mem_id" value="${member.mem_id }">
		        					<button class="w-100 btn-dark btn-primary" type="submit">대출하기</button>
		        				</td>
		        			</c:when>
		        			<c:otherwise>
		        				<td width="10%"><a id="bebook" href="login">로그인하기</a></td>
		        			</c:otherwise>
		        		</c:choose>
		        	</c:if>
	        	</tr>
	        </table>
		</form>
		
		<form action="bebook_confirm" method="post">
	        <table>
	        	<tr>
	        		<c:set var="title9" value="${title[9] }" />
	        		<c:if test="${not empty title9}">
		        		<td width="5%"><h1>10</h1></td>
		        		<td width="15%"><img class="img-fluid" src="${cover[9] }" alt="..." width="200px" height="200px"/></td>
		        		<td>
		        			<h3>${title[9] }</h3>
		        			<p class="item-italic text-muted">${author[9] } | ${publisher[9] }</p>
		        			${description[9] }
		        		</td>
		        		<c:choose>
		        			<c:when test="${isLogOn == true && member != null }">
		        				<td width="10%">
		        					<input type="hidden" name="isbn" value="${isbn[9] }">
		        					<input type="hidden" name="title" value="${title[9] }">
		        					<input type="hidden" name="author" value="${author[9] }">
		        					<input type="hidden" name="cover" value="${cover[9] }">
		        					<input type="hidden" name="description" value="${description[9] }">
		        					<input type="hidden" name="mem_no" value="${member.mem_no }">
		        					<input type="hidden" name="mem_id" value="${member.mem_id }">
		        					<button class="w-100 btn-dark btn-primary" type="submit">대출하기</button>
		        				</td>
		        			</c:when>
		        			<c:otherwise>
		        				<td width="10%"><a id="bebook" href="login">로그인하기</a></td>
		        			</c:otherwise>
		        		</c:choose>
		        	</c:if>
	        	</tr>
	        </table>
		</form>    	
        </div>

	</div>
	</section>
</body>
</html>