<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#table1{
		margin-left: 350px;
		margin-top: 5px;
		margin-right: 100px;
	}
	
	#table2{
		border-collapse: collapse;
		border-color: #F2F2F2;
		background-color: #F2F2F2;
		margin-left: 350px;
		margin-right: 100px;
	}
	#table3{
		border-collapse: collapse;
		border-color: #F2F2F2;
		background-color: #F2F2F2;
		margin-left: 350px;
		margin-right: 100px;
		margin-bottom: 120px;
	}
	
	
	#agree{
		font-size: 15px;
		margin: 15px;
	}
	#sub_navi{
		font-size: 12px;
	}
	ul{
    list-style:none;
    list-style-type:none;
   	} 
   	#smenu_tit{
   	padding-top: 20px;
   	margin-left: 0px;

   	}
   	#title02{
	font-size: 20px;
   	}
   	ul{
   	list-style:none;
    list-style-type:none;
   	}
	</style>
<jsp:include page="tos-side.jsp"/>
<jsp:include page="map-side.jsp"/>
<meta charset="UTF-8">
<title>Din Lib</title>
</head>
<body>
<table id="table1">
		    	<tr><td><div id="sub_navi">HOME > 찾아오시는 길</div></td></tr>
				<tr><td></td></tr>
		    	<tr><td></td></tr>
		    	<tr><td><div id="sub_tit"><h2>찾아오시는 길</h2></div>
		        </td></tr>
</table>
<table id="table2" width="500px">
<tr><th colspan="2">본관주소</th></tr>
<tr><td>도로명 주소</td><td>경기 수원시 팔달구 덕영대로 899</td></tr>
<tr><td>지번 주소</td><td>경기 수원시 팔달구 매산로1가 11-9 우편번호)16455</td></tr>
</table>
<br>
<table id="table3" width="500px">
<tr><th colspan="2">별관주소</th></tr>
<tr><td>도로명 주소</td><td>경기 수원시 팔달구 향교로 2</td></tr>
<tr><td>지번 주소</td><td>경기 수원시 팔달구 매산로1가 60-3 우편번호)16455</td></tr>
</table>
</body>
</html>