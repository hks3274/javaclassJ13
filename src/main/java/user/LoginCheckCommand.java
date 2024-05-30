package user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginCheckCommand implements UserInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int studentId = request.getParameter("studentId")==null? 0 : Integer.parseInt(request.getParameter("studentId"));
		int pwd = request.getParameter("pwd")==null? 0 : Integer.parseInt(request.getParameter("pwd"));
		
		UserDAO dao = new UserDAO();
		UserVO vo = dao.userLoginInfo(studentId,pwd);
		
		if(vo.getName() == null ) {
			request.setAttribute("message", "입력하신 회원의 정보가 없습니다. \\n다시 입력해주세요..");
			request.setAttribute("url", "Login.user");
			return;
		}
		
		//쿠키설정
		String strStudentId = studentId +"";
		String remember = request.getParameter("remember")==null ? "off" : "on";
		Cookie cookieSId = new Cookie("cStudentId", strStudentId);
		cookieSId.setPath("/");
		if(remember.equals("on")) {
			cookieSId.setMaxAge(60*60*24*7);	// 쿠키의 만료시간은 1주일로 한다.
		}
		else {
			cookieSId.setMaxAge(0);
		}
		response.addCookie(cookieSId);
		
		
	  //세션에 저장 
	  HttpSession session = request.getSession();
	  session.setAttribute("sStudentId", studentId); 
	  session.setAttribute("sName", vo.getName()); 
	  session.setAttribute("sJoinCheck", vo.getJoinCheck()); 
		
	  
	  request.setAttribute("message", "로그인되었습니다.감사합니다");
	  request.setAttribute("url", request.getContextPath()+"/Main");
 		  
	}	
}

