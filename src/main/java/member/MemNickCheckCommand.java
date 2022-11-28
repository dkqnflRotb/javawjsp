package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemNickCheckCommand implements MemberInterFace {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nickName = request.getParameter("nickName")==null ? "" : request.getParameter("nickName");
	
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getNickCheck(nickName);
		
		if(vo == null) { //사용 가능한 아이디
			request.setAttribute("resN",1);
		}
		else {
			request.setAttribute("resN",0);
		}
		request.setAttribute("nickName",nickName);
	}
}