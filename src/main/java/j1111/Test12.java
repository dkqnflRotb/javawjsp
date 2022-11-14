package j1111;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/t12")
public class Test12 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String hobbys[] = request.getParameterValues("hobby");
		
		System.out.println("성명 : " + name);
		System.out.println("나이 : " + age);
		System.out.println("성별 : " + gender);
		System.out.println("나이 : " + age);
		System.out.println("취미 : " );
		if(hobbys != null) {
			for(String hobby: hobbys) {
				System.out.println(hobby+ "/");
			}
		}
		else {
			System.out.println("취미가 선택되어 있지 않습니다.");
		}
	
	
		
	// 웹에 내용을 출력하기 위해서는 PrintWriter객체를 통해서 처리한다.
		PrintWriter out = response.getWriter();
		String tot = "";
		out.println("이곳은 서블릿입니다. <br/>");
		out.println("성명 : " + name +"<br/>");
		out.println("나이 : " + age +"<br/>");
		out.println("성별 : " + gender +"<br/>");
		if(hobbys != null) {
			out.println("취미 : " );
			for(String hobby : hobbys) {
				tot+=hobby+"/";
			}
			tot=tot.substring(0,tot.length()-1);
			out.println(tot);
		}
		else {
			/* out.println("취미가 선택되어 있지 않습니다."); */
			out.println("<script>");
			out.println("alert('취미는 하나이상 선택하셔야 합니다');");
			//out.println("history.back()");  //뒤로가기 명령어 history.back()<가로안에-2넣으면 뒤로2번가기
			out.println("location.href='/javawjsp/study/11.11/test12.jsp';");  //넣은값이 초기화됩니다.
			out.println("</script>");
		}
//		out.println("<p><a href='/javawjsp/study/11.11/test12.jsp'>돌아가기</a></p>");
		out.println("<p><a href='"+request.getContextPath()+"/study/11.11/test12.jsp'>돌아가기</a></p>");
	}
}
