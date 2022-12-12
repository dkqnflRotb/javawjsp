package study2.pdstest;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import study2.StudyInterface;
import study2.ajax.UserDAO;
import study2.ajax.UserVO;

public class UserDelCommand implements StudyInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		PrintWriter out = response.getWriter();
		
		// 세션이 끊겼다면 작업의 진행을 중지시키고 홈으로 전송시켜준다.
		HttpSession session = request.getSession();
		int level = session.getAttribute("sLevel")==null ? 99 : (int) session.getAttribute("sLevel");
		
		if(level >=4 ) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/"); // ("/")홈으로 보내준다
			dispatcher.forward(request, response);
		}
		
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		
		UserDAO dao = new UserDAO();
		
		String res = dao.setUserDel(mid);
		
		
		response.getWriter().write(res);  //비동기식으로 일하고 값만 보내준다.
	}
}
