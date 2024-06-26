package user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@SuppressWarnings("serial")
@WebServlet("*.user")
public class UserControll extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserInterface command = null;
		String viewPage = "/WEB-INF/user";
		
		String com = request.getRequestURI();
		com = com.substring(com.lastIndexOf("/"), com.lastIndexOf("."));
		

		if(com.equals("/Login")) {
			viewPage += "/login.jsp";
		}
		else if(com.equals("/Join")) {
			viewPage += "/join.jsp";
		}
		else if(com.equals("/LoginCheck")) {
			command = new LoginCheckCommand();
			command.execute(request, response);
			viewPage = "include/message.jsp";
		}
		else if(com.equals("/JoinInput")) {
			command = new JoinInputCommand();
			command.execute(request, response);
			viewPage = "include/message.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);	
	}
}
