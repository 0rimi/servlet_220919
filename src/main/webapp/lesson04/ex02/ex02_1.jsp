<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
</head>
<body>
<%
	// DB연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	// DB select query
	String select = "select * from `new_user`";
	ResultSet rs = ms.select(select);
%>
	<h1>회원 목록</h1>
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>자기소개</th>
				<th>이메일</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<%
			while(rs.next()){
		%>
			<tr>
				<td><%=rs.getInt("id") %></td>
				<td><%=rs.getString("name") %></td>
				<td><%=rs.getString("yyyymmdd") %></td>
				<td><%=rs.getString("introduce") %></td>
				<td><%=rs.getString("email") %></td>
				<td><a href="/lesson04/ex02_delete?id=<%=rs.getInt("id") %>">삭제</a></td>
			</tr>
		<%}%>
		</tbody>
	</table>
<%
	// DB 연결 해제
	ms.disconnect();
%>	
</body>
</html>