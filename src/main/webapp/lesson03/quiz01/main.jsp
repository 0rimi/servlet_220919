<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<!-- bootstrap CDN link -->
 	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

 	 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 	 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
 	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>채널 안내</title>
	<style>
		#wrap{width: 1000px}
		header{height: 70px}
		nav{height: 50px}
		.container{padding:0px}
	</style>
</head>
<body>
	<div id="wrap" class="container">
		<header class="d-flex justify-content-center align-items-center">
			<h1 class="text-danger">SK Broadband IPTV</h1>
		</header>
		<div id="cont">
			<nav class="bg-danger d-flex align-items-center">
				<ul class="nav nav-fill w-100 font-weight-bold">
					<li class="nav-item"><a href="main.jsp?page=content-all" class="text-white nav-link">전체</a></li>
					<li class="nav-item"><a href="main.jsp?page=content-terr" class="text-white nav-link">지상파</a></li>
					<li class="nav-item"><a href="main.jsp?page=content-drama" class="text-white nav-link">드라마</a></li>
					<li class="nav-item"><a href="main.jsp?page=content-var" class="text-white nav-link">예능</a></li>
					<li class="nav-item"><a href="main.jsp?page=content-movie" class="text-white nav-link">영화</a></li>
					<li class="nav-item"><a href="main.jsp?page=content-sports" class="text-white nav-link">스포츠</a></li>
				</ul>
			</nav>
			<%
				String cate = request.getParameter("page")+".jsp";
				//out.print(cate);
			%>
			<%if(cate.equals("null.jsp")){%>
				<jsp:include page="content-all.jsp"/>
			<% }else{%>
				<jsp:include page="<%=cate %>"/>
			<%}%>
			
			
		</div>
		<footer class="text-center text-secondary">
			Copyright 2022. SK All right Reserved.
		</footer>
	</div>
</body>
</html>