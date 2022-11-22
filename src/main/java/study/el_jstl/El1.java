package study.el_jstl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/study/el_jstl/El1")
public class El1 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ElJstlVO vo = new ElJstlVO();
		
		String atom = request.getParameter("atom")==null ? "" : request.getParameter("atom");
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		String su1 = request.getParameter("su1")==null ? "0" : request.getParameter("su1");
		String su2 = request.getParameter("su2")==null ? "0" : request.getParameter("su2");
		
		
		vo.setAtom(request.getParameter("atom"));
		vo.setName(request.getParameter("name"));
		vo.setSu1(Integer.parseInt(su1));
		vo.setSu2(Integer.parseInt(su2));
		
		request.setAttribute("vo", vo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/study/1121_EL_JSTL/el1.jsp");
		dispatcher.forward(request, response);
				
	}
}
