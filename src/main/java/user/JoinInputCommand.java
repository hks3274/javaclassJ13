package user;

import java.io.IOException;
import java.net.http.HttpResponse;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class JoinInputCommand implements UserInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name")==null? "" : request.getParameter("name");
		int studentId = request.getParameter("studentId")==null? 0: Integer.parseInt(request.getParameter("studentId"));
		int pwd = request.getParameter("pwd")==null? 0: Integer.parseInt(request.getParameter("pwd"));
		int department = request.getParameter("department")==null? 0: Integer.parseInt(request.getParameter("department"));
		String phoneNum = request.getParameter("phoneNumAll")==null? "" : request.getParameter("phoneNumAll");
		String expCheck = request.getParameter("expCheck")==null? "" : request.getParameter("expCheck");
		int expTime = request.getParameter("expTime")==null? 0: Integer.parseInt(request.getParameter("expTime"));
		String expOk = request.getParameter("expOk")==null? "" : request.getParameter("expOk");
		
		String departmentCheck = "";
		switch (department) {
			case 20:departmentCheck="기계공학부";break;
			case 40:departmentCheck="메카트로닉스공학부";break;
			case 61:departmentCheck="전기ㆍ전자ㆍ통신공학부";break;
			case 36:departmentCheck="컴퓨터공학부";break;
			case 51:departmentCheck="디자인공학전공";break;
			case 72:departmentCheck="건축공학전공";break;
			case 74:departmentCheck="에너지ㆍ신소재ㆍ화학공학부";break;
			case 80:departmentCheck="산업경영학부";break;	
			case 85:departmentCheck="고용서비스정책학과";break;	
		}
		
		UserVO vo = new UserVO();
		UserDAO dao = new UserDAO();
		
		vo.setName(name);
		vo.setStudentId(studentId);
		vo.setPwd(pwd);
		vo.setDepartment(departmentCheck);
		vo.setPhoneNum(phoneNum);
		vo.setExpCheck(expCheck);
		vo.setExpOk(expOk);
		vo.setExpTime(expTime);
		
		int res = dao.setInputUserInfo(vo);
		
		if(res != 0) {
			
      request.setAttribute("message", "가입이 신청되었습니다. 승인이 될 때까지 기다려 주시면 감사하겠습니다");
 			request.setAttribute("url", request.getContextPath()+"/Main");

		} else {
			request.setAttribute("message", "가입 신청이 실패했습니다.");
			request.setAttribute("url", "Login.user");
		}
		

	}

}
