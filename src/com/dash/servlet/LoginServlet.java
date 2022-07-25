package com.dash.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		request.getRequestDispatcher("LoginPage.jsp").include(request, response);

		String name = request.getParameter("name");
		String email=request.getParameter("email");
		String password = request.getParameter("password");

		if (password.equals("1234")) {
			out.print("Welcome, " + email);
			
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
		
			response.sendRedirect("AdminDashboard.jsp");
			
		} else {
			out.print("Sorry, username or password error!");
//            response.sendRedirect("LoginPage.jsp");
            

		}
		out.close();
	}
}