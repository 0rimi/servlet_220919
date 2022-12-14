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
<title>Melong - detail</title>
</head>

<style>
	#wrap{min-height: 800px;}
	.container{padding:0px;}
	header{height: 80px;}
	footer{height: 40px;}
	nav{height: 50px;}
	section{min-height: 630px;}
	#songBox table{font-size: 8px;}
	#songBox p{margin:5px 0px;}
</style>

<body>
	<div id="wrap" class="container">
		<!-- header -->
		<jsp:include page="header.jsp"/>
		
		<div>
			<nav class="d-flex align-items-center">
				<ul class="nav nav-fill w-100 font-weight-bold col-6">
					<li class="nav-item"><a href="" class="text-dark nav-link">멜롱챠트</a></li>
					<li class="nav-item"><a href="" class="text-dark nav-link">최신음악</a></li>
					<li class="nav-item"><a href="" class="text-dark nav-link">장르음악</a></li>
					<li class="nav-item"><a href="" class="text-dark nav-link">멜롱DJ</a></li>
					<li class="nav-item"><a href="" class="text-dark nav-link">뮤직어워드</a></li>
				</ul>
			</nav>
			<section>
				<!-- 곡 정보 -->
				<h3 class="mt-3">곡 정보</h3>
				<jsp:include page="songBox.jsp"/>
				
				<div id="lyrics">
					<h3 class="mt-2 mb-2">가사</h3>
					<hr>
					<p>가사정보없음</p>
				</div>
			</section>
		</div>
		<hr>
		<footer>
			<p class="text-secondary ml-1">Copyright 2022.melng All Rights Reserved.</p>
		</footer>
	</div>
</body>
</html>