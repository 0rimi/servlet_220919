package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")
public class GetMethodQuiz07 extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		//한글깨짐방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		//request parameter 꺼내기
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.parseInt(request.getParameter("price"));
		
		//출력
		PrintWriter out = response.getWriter();
		
		//테이블로 출력
		out.println("<html><head><title>주문 결과</title></head><body>");
		
		//전달받은 주소에 서울시 가 포함되어 있지 않으면, 배달 불가 지역입니다 를 출력하세요.
		//전달 받은 결제 카드가 신한카드인 경우 결제 불가 카드 입니다. 를 출력하세요.
		if(address.contains("서울시") == false) {
			out.println("배달 불가 지역입니다.");
		}else if(card.equals("신한카드")) {
			out.println("결제 불가 카드입니다.");
		}else {
			out.println(address+" <strong>배달 준비 중</strong>");
			out.println("결제금액: "+price+"원");
		}
		
		out.println("</body></html>");
	}
	
}
