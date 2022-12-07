package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz06")
public class GetMethodQuiz06 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		//request에서 request parameter를 꺼낸다
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		//사칙연산을 한다
		//json으로 구성한다
		PrintWriter out = response.getWriter();
		//{"addtion": 1570,"subtraction": 1430,"multiplication": 105000,"division": 21}
		out.print("{\"addtion\":"+(num1+num2)+",\"subtraction\":"
				+(num1-num2)+",\"multiplication\":"+(num1*num2)+
				",\"division\":"+(num1/num2)+"}");
		
	}

}
