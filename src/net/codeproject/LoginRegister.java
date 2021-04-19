package net.codeproject;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/home")
public class LoginRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginRegister() {
		super();

	}

	//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//
	//
	//	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserDAO cd=new UserDAOImpl();
		String firstname = request.getParameter("firstName");
		String lastname = request.getParameter("lastName");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		String submitType=request.getParameter("submit");

		User user=new User();
		user=cd.getUser(username, password); // For Valid User
		String checkUsername=cd.checkUserName(username);
		String checkEmail=cd.checkEmail(email);

		String destPage = "login.jsp";
		String userAgent = request.getHeader("User-Agent");



		HttpSession session = request.getSession();


		if(submitType.equals("login")) {
			if(user!=null && user.getUsername()!=null) {
				session.setAttribute("userLoggedIn", true);
				session.setAttribute("user", user.getUsername());
				session.setAttribute("firstname", user.getFirstname());
				session.setAttribute("lastname", user.getLastname());
				session.setAttribute("email", user.getEmail());
				session.setAttribute("password", user.getPassword());
				session.setAttribute("webbrowser", userAgent);
				destPage="main.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(destPage+"?sid="+session.getId());
				dispatcher.forward(request, response);
			}
			else if(checkUsername.equals("Exist")) {
				request.setAttribute("message","Invalid Password. " );
				request.getRequestDispatcher(destPage).forward(request, response);
			}
			else if(checkUsername.equals("Not")){
				request.setAttribute("message","You are not registered, click on New Here?" );
				request.getRequestDispatcher(destPage).forward(request, response);
			}
		}
		else if(submitType.equals("register")) {
			if(checkUsername.equals("Exist")) {
				destPage="register.jsp";
				request.setAttribute("message","Username already exists. " );
				request.getRequestDispatcher(destPage).forward(request, response);
			}
			else if(checkEmail.equals("Exist")){
				destPage="register.jsp";
				request.setAttribute("message","Email already exists. " );
				request.getRequestDispatcher(destPage).forward(request, response);
			}
			else {
				user.setFirstname(firstname);
				user.setLastname(lastname);
				user.setUsername(username);
				user.setEmail(email);
				user.setPassword(password);
				cd.insertUser(user);
				session.setAttribute("userLoggedIn", true);
				session.setAttribute("user", user.getUsername());
				session.setAttribute("firstname", user.getFirstname());
				session.setAttribute("lastname", user.getLastname());
				session.setAttribute("email", user.getEmail());
				session.setAttribute("password", user.getPassword());
				session.setAttribute("webbrowser", userAgent);
				destPage="main.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(destPage+"?sid="+session.getId());
				dispatcher.forward(request, response);	
			}				
		}
		//		doGet(request, response);
	}
}






