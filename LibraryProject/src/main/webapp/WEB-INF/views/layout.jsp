<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Din Library</title>
<link href="./resources/css/styles.css" rel="stylesheet" />
<style type="text/css">
	#container{
		width: 100%;  
	}
	
	#content{
		vertical-align: center;
	}
	
	#section{
		vertical-align: center;
	}
	
	#service{
		text-align: left;
	}
	a:link{color: white; text-decoration: none;}
	a:visited{color: white; text-decoration: none;}
	a:hover{color: blue; text-decoration: none;}
</style>
</head>
<body>
	<div id="container">
		<div id="nav">
			<tiles:insertAttribute name="nav" />
		</div>
		<div id="header">
			<tiles:insertAttribute name="header" />
		</div>
		<div id="content">
			<tiles:insertAttribute name="body" />
		</div>
		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>