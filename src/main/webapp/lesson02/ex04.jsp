<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex04 - 제어문 사용</title>
</head>
<body>
	<%
		// Map을 테이블로 구성하기
		// {"korean"=88, "english"=93, "math"=25, "science"=19}
		Map<String,Integer> scoreMap = new HashMap<>();
		
		scoreMap.put("korean", 88);
		scoreMap.put("english", 93);
		scoreMap.put("math", 25);
		scoreMap.put("science", 19);
	%>
	
	<table border="1">
		<%
			Set<String> keys = scoreMap.keySet(); //iterator, 향상된 for문
			Iterator<String> iter = keys.iterator();
			while(iter.hasNext()){
				String sub = iter.next();
		%>		
		<tr>
			<th><%-- <%=sub %> --%>
				<%
					if(sub.equals("korean")){
						out.print("국어");
					}else if(sub.equals("english")){
						out.print("영어");
					}else if(sub.equals("math")){
						out.print("수학");
					}else if(sub.equals("science")){
						out.print("과학");
					}
				%>
			</th>
			<td><%=scoreMap.get(sub) %></td>
		</tr>
		<% } %>
	</table>
</body>
</html>