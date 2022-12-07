package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		//한글깨짐방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		PrintWriter out = response.getWriter();
				
		//request parameter 꺼내기
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		Integer number = Integer.valueOf(request.getParameter("number"));
//		out.println("userId : "+userId);
//		out.println("name : "+name);
//		out.println("number : "+number);
		
		//Json(Javascript Object Notation) : String으로 response 구성하기
		//{"user_id":"sunwoo", "name":"김선우","number":19}
		out.print("{\"user_id\":\""+userId+"\",\"name\":\""+name
					+"\",\"number\":"+number+"}");
		
	}

}
