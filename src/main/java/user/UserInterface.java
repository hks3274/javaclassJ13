package user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface UserInterface {
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
