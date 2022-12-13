package chat;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/chatList")
public class ChatListController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String listType = request.getParameter("listType");
		if(listType == null || listType.equals("")) {
			response.getWriter().write("");
		}
		else if(listType.equals("ten")) {
			response.getWriter().write(getTen());
		}
		else {
			response.getWriter().write(getListIdx(listType));
		}
	}
	
	// 2번째 이후부터 메세지 내용을 출력처리하는 구간
	private String getListIdx(String idx) {
		ChatDAO dao = new ChatDAO();
		ArrayList<ChatVO> vos = dao.getChatList(Integer.parseInt(idx)); // 마지막 자료를 기준으로 처리
		ChatVO vo = new ChatVO();
		
		StringBuffer res = new StringBuffer();
		res.append("{\"res\":[");
		for(int i=0; i<vos.size(); i++ ) {
			vo = vos.get(i);
			res.append("[{\"value\":\""+vo.getIdx()+"\"},");
			res.append("{\"value\":\""+vo.getNickName()+"\"},");
			res.append("{\"value\":\""+vo.getContent()+"\"},");
			res.append("{\"value\":\""+vo.getcDate()+"\"},");
			res.append("{\"value\":\""+vo.getAvatar()+"\"}]");
			if(i != (vos.size()-1)) res.append(",");
		}
		if(vos.size()!=0) {
			res.append("],\"last\":\""+vos.get(vos.size()-1).getIdx()+"\"}");
		}
		else {
			res.append("],\"last\":\""+idx+"\"}");
		}
		return res.toString();
	}

	//최초 접속시 최근 메세지 10개의 자료만 보여주기위한 처리
	private String getTen() {
		ChatDAO dao = new ChatDAO();
		ArrayList<ChatVO> vos = dao.getChatList(10); // 최초 10개의 메세지 보기
		ChatVO vo = new ChatVO();
		
		StringBuffer res = new StringBuffer();
		res.append("{\"res\":[");
		for(int i=0; i<vos.size(); i++ ) {
			vo = vos.get(i);
			res.append("[{\"value\":\""+vo.getIdx()+"\"},");
			res.append("{\"value\":\""+vo.getNickName()+"\"},");
			res.append("{\"value\":\""+vo.getContent()+"\"},");
			res.append("{\"value\":\""+vo.getcDate()+"\"},");
			res.append("{\"value\":\""+vo.getAvatar()+"\"}]");
			if(i != (vos.size()-1)) res.append(",");
		}
		res.append("],\"last\":\""+vos.get(vos.size()-1).getIdx()+"\"}");
		return res.toString();
	}
	
}
