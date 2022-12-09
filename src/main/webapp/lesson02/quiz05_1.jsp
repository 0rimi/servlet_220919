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
<title>Quiz05_1</title>
</head>
<body>
	<%
		int num = Integer.parseInt((request.getParameter("num")));
		
		//checkbox, 여러 값 getParameterValues()
		String[] units = request.getParameterValues("unit");
		
	%>
	
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%=num %><span>cm</span></h3>
		<hr>
		<h2>
			<% 
				if(units != null){
					for(String unit : units){
						if(unit.equals("inch")){
							double inch = num * 0.393701;
							out.print(inch + " in<br>");
						}else if(unit.equals("yard")){
							double yard = num * 0.0109361;
							out.print(yard + " yd<br>");
						}else if(unit.equals("feet")){
							double feet = num * 0.0328084;
							out.print(feet + " ft<br>");
						}else if(unit.equals("meter")){
							double meter = num * 0.01;
							out.print(meter + " m<br>");
						}
					}	
				}
				
			%>
		</h2>
	</div>
</body>
</html>