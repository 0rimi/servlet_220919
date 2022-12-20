<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	// 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	// 출력문
	String select = "select ug.*, s.nickname
					from `used_goods` as ug
					inner join `seller` as s
					on ug.sellerId = s.id
					order by `id` desc";
	ResultSet rs = ms.select(select);
%>
	
<div class="d-flex w-100 justify-content-between">
	<div id="itemBox" class="">
		<div>
			<img alt="상품이미지"
				src="https://www.itworld.co.kr/files/itworld/ITW_202207_01/14-inch-macbook-pro-2-100912448-orig-1-jpg.webp">
		</div>
		<div id="dis">
			<h1><%=rs.getString("title") %></h1>
			<p class="text-secondary"><%=rs.getString("price") %>원</p>
			<p id="userName"><%=rs.getString("name") %></p>
		</div>
	</div>
</div>