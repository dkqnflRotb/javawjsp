package admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AdMemDeleteOkCommandCommand implements AdminInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idx = request.getParameter("idx") == null ? -1 : Integer.parseInt(request.getParameter("idx")) ;
		System.out.println("idx = "+ idx);
		AdminDAO dao = new AdminDAO();
		
		dao.setMemberDelOK(idx);
		
		response.getWriter().write(idx);
//		request.setAttribute("msg","memberDelOk");
//		request.setAttribute("url",request.getContextPath()+"/memLogout.mem");
		
	}

}
