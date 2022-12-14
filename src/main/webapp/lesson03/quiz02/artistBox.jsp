<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// 아티스트 정보 
Map<String, Object> artistInfo = new HashMap<>();
artistInfo.put("name", "더보이즈");
artistInfo.put("debute", 2017);
artistInfo.put("agency", "IST엔터테인먼트");
artistInfo.put("photo", "https://w.namu.la/s/e80bb063cb1faa7f1d4fd178bba15153efb03874be41af803ac00495de5cdfe1ae7a63944c966cd2c74294434b95cefbfce80891b93c4c253c436765e781b9e633f336da9654596d82f5613f47fa308e3610fe8839100d3ed38ff197a54040c9e48e6f3e9e0a277be9ff4111dc7f82fa");

String name = (String) artistInfo.get("name");
int debute = (int) artistInfo.get("debute");
String agency = (String) artistInfo.get("agency");
String photo = (String) artistInfo.get("photo");
%>

<div id="artistBox" class="d-flex border border-success p-3">
	<div>
		<img class="" src="<%=photo%>" alt="가수 이미지" width="170px">
	</div>
	<div class="ml-3">
		<h2 class="font-weight-bold"><%=name%></h2>		
		<div><%=agency%></div>
		<div><%=debute%>데뷔</div>
	</div>
</div>