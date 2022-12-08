<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시간확인</title>
</head>
<body>
<%--
<%
String what = request.getParameter("what");

if(what.equals("time")){
	//현재 시간
	Date date = new Date();

	// 포맷 정의하기
	SimpleDateFormat time = new SimpleDateFormat("HH시 mm분 ss초");
	
	// 포맷 정의하기
	String formatedNow = time.format(date);

	%><h1>현재시간은 <b><%=formatedNow %></b> 입니다.</h1>
	<%
}else if(what.equals("date")){
	//현재 날짜 구하기
	LocalDate now = LocalDate.now();

	// 포맷 정의
	DateTimeFormatter date = DateTimeFormatter.ofPattern("yyyy년 MM월 dd일");

	// 포맷 적용
	String formatedNow = now.format(date);
	%><h1>오늘은 <b><%=formatedNow %></b> 입니다.</h1><%
}
%>
 --%>
 
 <!-- 쌤풀이 -->

<%
String what = request.getParameter("what");

//현재 시간
Date now = new Date();
SimpleDateFormat sdf = null;

if(what.equals("time")){
	// 포맷 정의하기
	sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");
	// 포맷 정의하기
	String formatedNow = sdf.format(now);
}else if(what.equals("date")){
	// 포맷 정의
	sdf = new SimpleDateFormat("오늘의 날짜는 yyyy년 MM월 dd일 입니다.");
}
	
	String formatedNow = sdf.format(now);
%>
<h1><%=formatedNow %></h1>
	
</body>
</html>