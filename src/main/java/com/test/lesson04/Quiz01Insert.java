package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01/quiz01_delete")
public class Quiz01Insert extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		// db연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// delete
		String delete = "delete from `site`"
				+ "where `id` = "+id+"";
		try {
			ms.update(delete);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// db해제
		ms.disconnect();
		
		// 리다이렉트
		response.sendRedirect("/lesson04/quiz01/quiz01.jsp");
	}

}
