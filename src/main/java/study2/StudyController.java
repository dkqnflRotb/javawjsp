package study2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.BoDeleteOkCommand;
import study2.calendar.Calendar1Command;
import study2.calendar.Calendar2Command;
import study2.password.PassOk2Command;
import study2.password.PassOkCommand;
import study2.pdstest.DownLoadCommand;
import study2.pdstest.FileDeleteCommand;
import study2.pdstest.JavaDownCommand;
import study2.pdstest.UpLoad1OkCommand;
import study2.pdstest.UpLoad2OkCommand;
import study2.pdstest.UserDelCommand;
import study2.pdstest.UserInputCommand;
import study2.pdstest.UserListCommand;
import study2.pdstest.UserSearchCommand;
import study2.pdstest.UserUpdateCommand;

@WebServlet("*.st")
public class StudyController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StudyInterface command = null;
		String viewPage = "/WEB-INF/study2";
		
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/"),uri.lastIndexOf("."));
		
		// 세션이 끊겼다면 작업의 진행을 중지시키고 홈으로 전송시켜준다.
		HttpSession session = request.getSession();
		int level = session.getAttribute("sLevel")==null ? 99 : (int) session.getAttribute("sLevel");
		
		if(level >=4 ) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/");
			dispatcher.forward(request, response);
		}
		
		if(com.equals("/pass")) {
			viewPage += "/password/pass.jsp";
		}
		else if(com.equals("/passOk1")) {
			command = new PassOkCommand();
			command.execute(request, response);
			viewPage += "/password/pass.jsp";
		}
		else if(com.equals("/passOk2")) {
			command = new PassOk2Command();
			command.execute(request, response);
			viewPage += "/password/passOk2.jsp";
		}
		else if(com.equals("/ajax1")) {
			viewPage += "/ajax/ajax1.jsp";
		}
		else if(com.equals("/userList")) {
			System.out.println("sdfsdfsdfsdf");
			command = new UserListCommand();
			command.execute(request, response);
			viewPage += "/ajax/userList.jsp";
		}
		else if(com.equals("/userSearch")) {
			command = new UserSearchCommand();
			command.execute(request, response);
			return;  //창을 새로 안불러도되니 끝내 준다
		}
		else if(com.equals("/userDel")) {
			command = new UserDelCommand();
			command.execute(request, response);
			return;  //창을 새로 안불러도되니 끝내 준다
		}
		else if(com.equals("/userUpdate")) {
			command = new UserUpdateCommand();
			command.execute(request, response);
			return;  //창을 새로 안불러도되니 끝내 준다
		}
		else if(com.equals("/userInput")) {
			command = new UserInputCommand();
			command.execute(request, response);
			return;  //창을 새로 안불러도되니 끝내 준다
		}
		else if(com.equals("/upLoad1")) {
			viewPage += "/pdstest/upLoad1.jsp";
		}
		else if(com.equals("/upLoad1Ok")) {
			command = new UpLoad1OkCommand();
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		else if(com.equals("/upLoad3")) {
			viewPage += "/pdstest/upLoad3.jsp";
		}
		else if(com.equals("/upLoad2Ok")) {
			command = new UpLoad2OkCommand();
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		else if(com.equals("/upLoad4")) {
			viewPage += "/pdstest/upLoad4.jsp";
		}
		else if(com.equals("/123123")) {
			viewPage = "/123123.jsp";
		}
		else if(com.equals("/downLoad")) {
			command = new DownLoadCommand();
			command.execute(request, response);
			viewPage += "/pdstest/downLoad.jsp";
		}
		else if(com.equals("/javaDown")) {
			command = new JavaDownCommand();
			command.execute(request, response);
			return;
		}
		else if(com.equals("/fileDelete")) {
			command = new FileDeleteCommand();
			command.execute(request, response);
			return;
		}
		else if(com.equals("/calendar1")) {
			command = new Calendar1Command();
			command.execute(request, response);
			viewPage += "/calendar/calendar1.jsp";
		}
		else if(com.equals("/calendar2")) {
			command = new Calendar2Command();
			command.execute(request, response);
			viewPage += "/calendar/calendar2.jsp";
		}
		else if(com.equals("/stApi")) {
			viewPage += "/api/stApi.jsp";
		}
		else if(com.equals("/crimeApi")) {
			viewPage += "/api/crimeApi.jsp";
		}
		else if(com.equals("/stCrimeSave")) {
			command = new StCrimeSaveCommand();
			command.execute(request, response);
			return;
		}
		else if(com.equals("/stCrimeDelete")) {
			command = new StCrimeDeleteCommand();
			command.execute(request, response);
			return;
		}
		else if(com.equals("/stCrimeList")) {
			command = new StCrimeListCommand();
			command.execute(request, response);
			viewPage += "/api/crimeApi.jsp";
		}
		else if(com.equals("/stCrimeTotalList")) {
			command = new StCrimeTotalListCommand();
			command.execute(request, response);
			viewPage += "/api/crimeApi.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
