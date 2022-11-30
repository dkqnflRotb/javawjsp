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

@WebServlet("/idSearchTest2")
public class IdSearchTest2 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getLoginCheck(mid);
		
//		PrintWriter out = response.getWriter();
		
		// 세션이 끊겼다면 작업의 진행을 중지시키고 홈으로 전송시켜준다.
		HttpSession session = request.getSession();
		int level = session.getAttribute("sLevel")==null ? 99 : (int) session.getAttribute("sLevel");
		
		if(level >=4 ) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/"); // ("/")홈으로 보내준다
			dispatcher.forward(request, response);
		}
		
		String name = "";
		if(vo == null) {
			name = "찾는 자료가 없습니다.";
		}
		else {
			name = vo.getName();
		}
		response.getWriter().write(name);
	}

}
