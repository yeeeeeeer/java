package com.ohgiraffers.jsp.menu.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/menu/order")
public class MenuOrderServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		/* 서블릿 역할 */
		/*1. 요청 받기*/
		String menuName = request.getParameter("menuName");
		int amount = Integer.parseInt(request.getParameter("amount"));
						
		/*2. 비즈니스 로직(service) 처리하기*/
		int orderPrice = 0;
		
		switch(menuName) {
		case "hamburger" : 
			menuName = "햄버거"; 
			orderPrice = 11000 * amount;
			break;
		case "zzambbong" : 
			menuName = "짬뽕"; 
			orderPrice = 8000 * amount;
			break;
		case "dongas" : 
			menuName = "돈까스"; 
			orderPrice = 9500 * amount;
			break;
		case "gimbap" : 
			menuName = "김밥"; 
			orderPrice = 4000 * amount;
			break;
		}
		
		/*3. 응답 반환하기*/
		request.setAttribute("menuName", menuName);
		request.setAttribute("amount", amount);
		request.setAttribute("orderPrice", orderPrice);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/5_response.jsp");
		rd.forward(request, response);
		
	}

}
