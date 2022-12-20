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
<title>HongDang</title>

<style>
html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}

.container{padding: 0;}
#wrap{min-height: 780px; width: 1000px}
header{height: 80px; background-color: rgb(233, 106, 51); font-size: 40px;}
nav{height: 50px; background-color: rgb(233, 106, 51);}
section{min-height: 650px; flex-wrap: wrap}
#itemBox{width: 320px;
		 height: 300px;
		 border: 3px solid rgb(233, 106, 51);
		 margin: 20px 5px;
		 padding: 8px;}
#itemBox:hover{transform: scale(1.2); background-color: #dddd;}	
#itemBox{transition: all 0.2s linear;}	 
#itemBox img{width: 298px; height: 210px;}
#itemBox #dis h1{font-weight: bold; margin-bottom:2px;}
#itemBox #dis #userName {color: rgb(233, 106, 51);}
footer{height: 50px;}
</style>

</head>
<body>
	<div id="wrap" class="container">
		<header>
			<jsp:include page="header.jsp"/>
		</header>
		
		<nav class="d-flex align-items-center">
			<jsp:include page="nav.jsp"/>
		</nav>
		
		<section>
			<!-- 상품리스트 -->
			<jsp:include page="list_page.jsp"/>
			
		</section>
		
		<footer class="d-flex justify-content-center align-items-center">
			<div class="text-secondary">Copyright 2022. HONG All Rights Reserved.</div>
		</footer>
	</div>
</body>
</html>