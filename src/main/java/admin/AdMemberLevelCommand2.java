package admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdMemberLevelCommand2 implements AdminInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idx =Integer.parseInt(request.getParameter("idx"));
		int level =Integer.parseInt(request.getParameter("level"));
		System.out.println("idx = "+ idx);
		System.out.println("level = "+ level);
		
		AdminDAO dao = new AdminDAO();
		
		dao.setLevelCheck(idx,level);
		
		response.getWriter().write(level);
//		request.setAttribute("msg","levelCheckOk");
//  	request.setAttribute("url",request.getContextPath()+"/adMemList.ad");
	}

}
