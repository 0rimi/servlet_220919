package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		//한글깨짐방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		//requestParam 꺼내오기
		String keyword = request.getParameter("keyword");
		
		//List를 순회
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		PrintWriter out = response.getWriter();
		
		//HTML문서로 응답 표현
		Iterator<String> iter = list.iterator();
		
		while(iter.hasNext()) {
			String line = iter.next();
			
			//검색어가 있을때 문장출력
//			if(line.contains(keyword)) {
//				out.println(line);
//			}
			
			//풀이1) 단어 자체로 split
//			if(line.contains(keyword)) {
//				String[] words = line.split(keyword);
//				out.print(words[0] + "<b>"+keyword+"</b>" + words[1]+"<br>"); //[0]강남역 최고 [1]소개합니다
//			}
			
			//풀이2) keyword를 <b>태그 붙인걸로 교체 replace
			if(line.contains(keyword)) {
				line = line.replace(keyword, "<b>"+keyword+"</b>");
				out.print(line+"<br>");
			}
		}
		
	}
	
}
