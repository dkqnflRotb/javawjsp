package board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoContentCommand implements BoardInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idx = request.getParameter("idx")==null ? 0 : Integer.parseInt(request.getParameter("idx"));
		int pag = request.getParameter("pag")==null ? 1 : Integer.parseInt(request.getParameter("pag"));
		int pagSize = request.getParameter("pagSize") == null ? 0 : Integer.parseInt(request.getParameter("pagSize"));
		
		BoardDAO dao = new BoardDAO();
		
		// 조회수 증가시키기
		dao.setReadNumPlus(idx);
		
		BoardVO vo = dao.getBoContentSearch(idx);
				
		request.setAttribute("vo", vo);
		request.setAttribute("pag", pag);
		request.setAttribute("pagSize", pagSize);
	}

}
