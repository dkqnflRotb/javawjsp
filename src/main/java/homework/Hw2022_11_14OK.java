package homework;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Hw2022_11_14")
public class Hw2022_11_14OK extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
    response.setContentType("text/html; charset=utf-8");
    response.setCharacterEncoding("utf-8");
    
    PrintWriter out = response.getWriter();
    String buyer = request.getParameter("buyer");
    String[] proproductClss = request.getParameterValues("productClss");
    String[] goods = request.getParameterValues("goods");
    String[] sus= request.getParameterValues("su");
    String[] results = request.getParameterValues("result");
    String[] totresults = request.getParameterValues("totresult");
    

    out.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">");
    out.println("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js\"></script>");
    out.println("<style>");
    out.println("th,td{text-align:center}");
    out.println(".table-dark td{border: 1px solid #dee2e6;}");
    out.println("</style>");
    out.println("<p><br/></p>");
    out.println("<h2 class='text-center'>"+buyer+"님의 상품 안내</h2>");
    out.println("<div class='container'>");
    out.println("<table class='table table-bordered'><tr class='table-info text-info'>");
    out.println("<th>상품 분류</th><th>상품명</th><th>수량</th><th>금액</th><th>총 금액</th>");
    
    	
    int hapresult = 0;
    DecimalFormat decFormat = new DecimalFormat("###,###");
    
    for(int i=0;i<goods.length;i++) {
    	String productClss=proproductClss[i];
    	String good= goods[i];
    	String su= sus[i];
    	String result= decFormat.format(Integer.parseInt(results[i]))+"원";
    	String totresult= totresults[i];
    	int abc = Integer.parseInt(totresult.substring(0,totresult.length()-1).replaceAll(",","")); 
    	hapresult += abc;
    	
    	out.println("<tr>");
    	out.println("<td>"+productClss+"</td>");
    	out.println("<td>"+good+"</td>");
    	out.println("<td>"+su+"</td>");
    	out.println("<td>"+result+"</td>");
    	out.println("<td>"+totresult+"</td>");
    	out.println("</tr>");
    }
    String tot = decFormat.format(hapresult)+"원";
    out.println("<tr class='table-dark text-white'><td>총가격</td><td colspan='4'>" + tot + "</td></tr>");
    out.println("</table>");
    out.println("<hr/>");
    out.println("<a href='"+request.getContextPath()+"/study/homework/hw2022-11-14.jsp' class='btn btn-success form-control'>돌아가기</a>");
	}
}
