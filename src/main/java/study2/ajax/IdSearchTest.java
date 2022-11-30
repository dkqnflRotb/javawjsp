package study2.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.MemberDAO;
import member.MemberVO;

@WebServlet("/idSearchTest")
public class IdSearchTest extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getLoginCheck(mid);
		
		PrintWriter out = response.getWriter();
		
		// 세션이 끊겼다면 작업의 진행을 중지시키고 홈으로 전송시켜준다.
		HttpSession session = request.getSession();
		int level = session.getAttribute("sLevel")==null ? 99 : (int) session.getAttribute("sLevel");
		
		if(level >=4 ) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/");
			dispatcher.forward(request, response);
		}
		
		if(vo == null) {
			out.println("<script>");
			out.println("alert('찾고자 하는 회원이 없습니다.');");
			out.println("location.href='"+request.getContextPath()+"/ajax1.st';");
			out.println("</script>");
		}
		else {
			out.println("<script>");
			out.println("alert('검색된 회원은 "+vo.getName()+" 입니다.');");
			out.println("location.href='"+request.getContextPath()+"/ajax1.st';");
			out.println("</script>");
		}
		
	}

}
