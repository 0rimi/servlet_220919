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

@WebServlet("/lesson04/ex01")
public class Ex01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect(); //실직적인 DB연결 (꼭 넣어야함)
		
		// DB insert
		String insertQuery = "insert into `used_goods`"
				+ "(`sellerId`, `title`, `description`, `price`, `pictureUrl`)"
				+ "values"
				+ "(2,'강아지 간식 팝니다.','수제 간식인데 저희집 다롱이는 안먹네용..ㅠㅠ',20000,'http://image.bom.co.kr/product/detail/AOF/2006190209138993/_600.jpg')";
		try {
			ms.update(insertQuery);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		// DB select & 결과출력
		PrintWriter out = response.getWriter();
		String selectQuery = "select * from `used_goods`";
		try {
			ResultSet rs = ms.select(selectQuery);
			//결과 출력
			while (rs.next()) {	//결과행이 있는동안 실행
				out.println(rs.getInt("id"));
				out.println(rs.getString("title"));
				out.println(rs.getInt("price"));
				out.println(rs.getString("description"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
	}

}
