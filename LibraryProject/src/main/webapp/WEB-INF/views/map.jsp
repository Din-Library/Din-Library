<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	#table1{
		margin-left: 350px;
		margin-top: 10px;
		margin-right: 100px;
	}
	#table2{
		border-collapse: collapse;
		border-color: #F2F2F2;
		background-color: #F2F2F2;
		margin-left: 350px;
		margin-right: 150px;
	}
	#table3{
		border-collapse: collapse;
		border-color: #F2F2F2;
		background-color: #F2F2F2;
		margin-left: 350px;
		margin-right: 150px;
		margin-bottom: 250px;
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
   	
   	#map1{
	margin-right: 200px;
	margin-top: 10px;
	background-color: #FAFAFA;
	width:570px;
	height: 425px;

	}
	#map{
		margin-left: 8.5px;
	}
</style>
<jsp:include page="tos-side.jsp"/>
<%-- <jsp:include page="map-side.jsp"/> --%>
<meta charset="UTF-8">
<title>Din Lib</title>
</head>
<body>
<table align="right" id="map1">
	<tr><td>
	<div id="map" style="width:550px;height:400px;"/>
	</tr></td>
</table>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=15ba5d3a27484a9454fd70669306b887"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.2674391,127.0009568),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
</script>
	<table id="table1">
		<tr>
			<td>
				<div id="sub_navi">HOME > 찾아오시는 길</div>
			</td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td>
				<div id="sub_tit"><h2>찾아오시는 길</h2></div>
		    </td>
		</tr>
	</table>
	
	<table id="table2" width="500px">
		<tr>
			<th colspan="2">본관주소</th>
		</tr>
		<tr>
			<td>도로명 주소</td><td>경기 수원시 팔달구 덕영대로 899</td>
		</tr>
		<tr>
			<td>지번 주소</td><td>경기 수원시 팔달구 매산로1가 11-9 우편번호)16455</td>
		</tr>
	</table>
	
	<br>
	
	<table id="table3" width="500px">
		<tr>
			<th colspan="2">별관주소</th>
		</tr>
		<tr>
			<td>도로명 주소</td><td>경기 수원시 팔달구 향교로 2</td>
		</tr>
		<tr>
			<td>지번 주소</td><td>경기 수원시 팔달구 매산로1가 60-3 우편번호)16455</td>
		</tr>
	</table>
</body>
</html>