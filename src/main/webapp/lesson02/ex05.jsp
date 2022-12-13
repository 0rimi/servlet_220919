<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex05 - Calendar</title>
</head>
<body>
<%
	//Date now = new Date();
	Calendar today = Calendar.getInstance();
	//out.println(today);
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
	out.println(sdf.format(today.getTime())+"<br>");//object(calendar)가 아닌 date로 받아서 출력
	
	
	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년 MM월 dd일");
	Calendar yesterday = Calendar.getInstance();
	//어제날짜
	yesterday.add(Calendar.DATE, -1);	
	//이전달
	//yesterday.add(Calendar.MONTH,-1);
	//일년전
	//yesterday.add(Calendar.YEAR,-1);
	out.println(sdf2.format(yesterday.getTime())+"<br>");
	
	//두 날짜 비교
	//compareTo
	//1 0 -1
	//기준값(앞)이 크면 1, 같으면 0, 기준값(앞)이 작으면 1
	int result = today.compareTo(yesterday);
	if(result > 0){
		out.println("today가 더 크다");
	}else if(result == 0){
		out.println("두 날짜는 같다");
	}else{
		out.println("today가 더 작다");
	}
%>
</body>
</html>