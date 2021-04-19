package net.codeproject;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Convertor")
public class Convertor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Convertor() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DataDAO dd=new DataDAOImpl();

		String submitType=request.getParameter("submit");
		HttpSession session = request.getSession();
		String num=request.getParameter("convnum");
		String uname=(String) session.getAttribute("user");		
		String result=" ";
		String msg1=" ",msg2=" ",a=" ",b=" ",c=" ";
		
		if(submitType.equals("convert-dec-to-oct&hex")) {
			result=dd.decocthex(num, uname);	
			if(result.contains("error")) {
				msg1="PLEASE ENTER A VALID NUMBER";
				msg2="THREE(3) DIGITS MAXIMUM";
				request.setAttribute("error1",msg1);
				request.setAttribute("error2",msg2);
				request.getRequestDispatcher("dec-to-oct&hex.jsp").forward(request, response);
			}
			else {
				String[] arrOfStr = result.split("@", -2);
				a=arrOfStr[0];
				b=arrOfStr[1];
				c=arrOfStr[2];
				request.setAttribute("convert11",a);
				request.setAttribute("convert12",b);
				request.setAttribute("convert13",c);
				request.getRequestDispatcher("dec-to-oct&hex.jsp").forward(request, response);
			}
			
			    
		}
		
	}

}



