package com.ohgiraffers.gson;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.google.gson.Gson;
import com.ohgiraffers.model.dto.MemberDTO;

@WebServlet("/gson/test1")
public class GsonTestServlet1 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	MemberDTO member = new MemberDTO("M01", "다람쥐", '여', 900);
	
	Gson gson = new Gson();
	
	// toJson() : java 객체를 json 문자열로 변환
	String jsonString = gson.toJson(member);
	System.out.println(jsonString);
	
	MemberDTO jsonMember = gson.fromJson(jsonString, MemberDTO.class);
	System.out.println(jsonMember);
		
	response.setContentType("application/json; charset=UTF-8");
	PrintWriter out = response.getWriter();
	
	out.print(jsonString);
	out.close();
	
	
		
	}

}
