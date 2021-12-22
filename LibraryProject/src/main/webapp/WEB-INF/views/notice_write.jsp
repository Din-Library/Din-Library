<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Din Library</title>
<style>
	table{
		width: 50%;
		margin: auto
	}
	td{
		padding: 3px;
	}
	
</style>
<script type="text/javascript">
function check(){
	var f = document.fmem;
	// 제목 공백 불가 -----------------
	var stitle = f.title.value;
	if (stitle==""){
		alert("제목 입력이 누락되었습니다.")
		f.title.select();
		return false;
	}
	// 제목 길이 제한 -----------------
    if(stitle.length<2 || saddr.length>150) {
       alert("제목의 길이는 150자 이내로 입력하세요.");
       f.title.select();
       return false;
    }
 	// 내용 공백 불가 -----------------
	var scontent = f.content.value;
	if (scontent==""){
		alert("내용 입력이 누락되었습니다.")
		f.content.select();
		return false;
	}
	// 내용 길이 제한 -----------------
    if(scontent.length<2 || saddr.length>1000) {
       alert("내용의 길이는 1000자 이내로 입력하세요.");
       f.content.select();
       return false;
    }
	f.submit();
}
</script>
</head>
<body class="text-center">
	<%-- 공지사항 글 작성 --%>
	<section>
		<main class="form-notice_write">
			<form action="notice_input" method="post" name="fmem">
				<h1 class="h3 mb-3 fw-normal">Notice</h1>
				<table>
					<tr>
						<td>제목</td>
						<td><input class="form-control" type="text" name="title"></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><input class="form-control" type="text" name="writer" value="관리자" readonly></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea name="content" rows="10" cols="100"></textarea></td>
					</tr>
				</table>
				<button class="w-15 btn btn-md btn-success" type="submit" onclick="return check()">등록하기</button>
			</form>
		</main>
	</section>
</body>
</html>