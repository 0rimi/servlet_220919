package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class UrlMappingQuiz05 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		//한글깨짐방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		int number = Integer.valueOf(request.getParameter("number"));
		
		out.println("<html><head><title>구구단</title></head><body><ul>");
		for(int i=1; i<= 9; i++) {
			out.println("<li>"+number+"X"+i+"="+(number*i)+"</li>");
		}
		out.println("</ul></body></html>");
		
		
		//주석추가
		
		
	}

}
