package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conn.SecurityUtil;

public class MemPwdCheckOkCommand implements MemberInterFace {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
		int sw = request.getParameter("sw")==null ? -1 : Integer.parseInt(request.getParameter("sw"));
		
		SecurityUtil security = new SecurityUtil();
		pwd = security.encryptSHA256(pwd);
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getLoginCheck(mid);//mid로 DB에서 정보를 가지고온다
		System.out.println("sw=" + sw);
		if(sw==0) {
			if(!vo.getPwd().equals(pwd)) {  //비밀번호랑 DB비밀번호 비교한다 
				request.setAttribute("msg","passwordNo");
				request.setAttribute("url",request.getContextPath()+"/memPwdCheck.mem");
			}
			else {
				request.setAttribute("msg","passwordYes");
				request.setAttribute("url",request.getContextPath()+"/memUpdate.mem");
			}
		}
		else if(sw==1) {
			if(!vo.getPwd().equals(pwd)) {  //비밀번호랑 DB비밀번호 비교한다 
				request.setAttribute("msg","passwordOutNo");
				request.setAttribute("url",request.getContextPath()+"/memOutPwdCheck.mem");
			}
			else {
				request.setAttribute("msg","passwordOutYes");
				request.setAttribute("url",request.getContextPath()+"/memDelete.mem");
			}
		}
	}

}