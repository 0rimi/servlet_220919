<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	// 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	// 출력문
	String select = "select ug.*, s.nickname from `used_goods` as ug inner join `seller` as s on ug.sellerId = s.id order by `id` desc";
	ResultSet rs = ms.select(select);
%>
	
<div class="d-flex justify-content-space-around">

	<%
	while(rs.next()){
	%>
	<div id="itemBox" class="">
		<div>
			<img alt="상품이미지"
				<%if(rs.getString("pictureUrl") != null){%>
					src="<%=rs.getString("pictureUrl") %>"	
				<% }else{%>
					src="https://3.bp.blogspot.com/-ZKBbW7TmQD4/U6P_DTbE2MI/AAAAAAAADjg/wdhBRyLv5e8/s1600/noimg.gif"
				<% }%> >
		</div>
		<div id="dis">
			<h1><%=rs.getString("title") %></h1>
			<p class="text-secondary"><%=rs.getString("price") %>원</p>
			<p id="userName"><%=rs.getString("nickname") %></p>
		</div>
	</div>
	<%}%>
</div>