package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		//한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		out.println("Best We THE BOYZ 안녕하세요 더보이즈입니다.");
		
		Date now = new Date();
		//out.println(now);
		
		//formatter :모양이쁘게
		//2022.11.24 오후 09:13
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd a hh:mm");
		out.println(sdf.format(now));
	}

}
