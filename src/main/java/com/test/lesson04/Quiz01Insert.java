package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01/quiz01_insert")
public class Quiz01Insert extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// db연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// insert
		String insert = "insert into `site`"
				+ "(`name`,`url`)"
				+ "values"
				+ "('"+name+"','"+url+"')";
		try {
			ms.update(insert);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// db해제
		ms.disconnect();
		
		// 리다이렉트
		response.sendRedirect("/lesson04/quiz01/quiz01.jsp");
	}

}
