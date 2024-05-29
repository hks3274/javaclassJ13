package user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInputCommand implements UserInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name")==null? "" : request.getParameter("name");
		int studentId = request.getParameter("studentId")==null? 0: Integer.parseInt(request.getParameter("studentId"));
		
		System.out.println(name +" "+ studentId );
	}	
}

