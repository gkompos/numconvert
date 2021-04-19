package net.codeproject;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public Logout() {
		super();
	}


		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	       HttpSession session = request.getSession(false);
	        if (session != null) {
	        	session.removeAttribute("userLoggedIn");
	            session.removeAttribute("user");
	            session.invalidate();
	            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
	            dispatcher.forward(request, response);
	            return;
	        }
		}


//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//
//		response.setContentType("text/html");
//		PrintWriter out = response.getWriter();
//		out.println("thanq you!!, Your session was destroyed successfully!!");
//		HttpSession session = request.getSession(false);
//		// session.setAttribute("user", null);
//		session.removeAttribute("userr");
//		session.getMaxInactiveInterval();
//
//
//				doGet(request, response);
//	}

}
