package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01")
public class Quiz01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect(); //실직적인 DB연결 (꼭 넣어야함)
		
		// DB insert
		String insertQuery = "insert into `real_estate` (`realtorId`,`address`,`area`,`type`,`price`,`rentPrice`) values (3,'헤라펠리스 101동 5305호',350,'매매',1500000,NULL)";
		try {
			ms.update(insertQuery);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		// DB select & 결과출력
		PrintWriter out = response.getWriter();
		String selectQuery = "select `address`,`area`,`type` from `real_estate` order by `id` desc limit 10";
		try {
			ResultSet rs = ms.select(selectQuery);
			//결과 출력
			while (rs.next()) {	//결과행이 있는동안 실행
				out.println("매물 주소: "+rs.getString("address")+", 면적:"+
						rs.getInt("area")+", 타입:"+rs.getString("type"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
		
		
	}
	
}
