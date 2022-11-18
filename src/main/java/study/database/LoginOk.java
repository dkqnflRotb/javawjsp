package study.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/database/LoginOk")
public class LoginOk extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null? "": request.getParameter("mid");
		String pwd = request.getParameter("pwd")==null? "": request.getParameter("pwd");
		PrintWriter out = response.getWriter();
		
		JusorokDAO dao = new JusorokDAO();
		
		String name = dao.loginCheck(mid,pwd);
		
		HttpSession session = request.getSession();
		
		if(!name.equals("")) {
  		// 회원 인증후 처리
  		session.setAttribute("sMid", mid);
  		session.setAttribute("sName", name);
  		out.println("<script>");
  		out.println("alert('"+name+"님 로그인 되었습니다.');");
  		out.println("location.href='"+request.getContextPath()+"/study/1120_Database/member.jsp';");
  		out.println("</script>");
  	}
		else {
			// 회원 인증 실패시 처리
			out.println("<script>");
			out.println("<alert('로그인 실패!!');");
			out.println("location.href='"+request.getContextPath()+"/study/1120_Database/login.jsp';");
			out.println("</script>");
		}
		
		
	}
}
