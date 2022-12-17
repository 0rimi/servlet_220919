package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex02_delete")
public class Ex02Delete extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// request parameter
		int id = Integer.parseInt(request.getParameter("id"));
		
		// DB연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// 데이터 삭제 쿼리
		String delete = "delete from `new_user` where `id` = "+id+"";
		try {
			ms.update(delete);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
		
		// 리다이렉트
		response.sendRedirect("/lesson04/ex02/ex02_1.jsp");
	}
	
}
