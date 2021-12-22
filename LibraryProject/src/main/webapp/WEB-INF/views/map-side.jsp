<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="./resources/css/styles.css" rel="stylesheet" />
<style type="text/css">
	#side-table{
		color: #000000;
		/* 	background-color: #FAFAFA; */
		/* 	margin-top: 30px; */
		margin-right: 100px;
		vertical-align: center;
	}
	font{
		font-size: 14px;
		color: #000000;
	}
	#map1{
	align: right;
	margin-top: 10px;
	margin-right: 200px;
	background-color: #FAFAFA;
	}
	
	#map{
		margin-left: 8.5px;
	}
</style>


<meta charset="utf-8">
<title></title>
</head>
<body>
<%-- 지도 --%>
<table id="map1">
	<tr>
		<td>
			<div id="map"></div>
		</td>
	</tr>
</table >
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=15ba5d3a27484a9454fd70669306b887"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.2674391,127.0009568),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script>
</body>
</html>