package study.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/database/LogOut")
public class LogOut extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JusorokDAO dao = new JusorokDAO();
		
		dao.logout();
		
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("alert('로그아웃되었습니다.!!');");
		out.println("location.href='"+request.getContextPath()+"/study/1120_Database/login.jsp';");
		out.println("</script>");
	}
}
