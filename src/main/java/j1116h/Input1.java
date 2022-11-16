package j1116h;

import java.io.IOException;
import java.text.DecimalFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/j1116h/Input1")
public class Input1 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String sw = request.getParameter("sw")==null ? "main" : request.getParameter("sw");
		String buyer = request.getParameter("buyer")==null ? "" : request.getParameter("buyer");
		String productClss = request.getParameter("productClss")==null ? "" : request.getParameter("productClss");
		String good = request.getParameter("good")==null ? "" : request.getParameter("good");
		String su = request.getParameter("su")==null ? "" : request.getParameter("su");
		String strresult = request.getParameter("result")==null ? "" : request.getParameter("result");
		String totresult = request.getParameter("totresult")==null ? "" : request.getParameter("totresult");
		
		String[] proproductClss = request.getParameterValues("productClss")==null ? null : request.getParameterValues("productClss");
		String[] goods = request.getParameterValues("goods")==null ? null : request.getParameterValues("goods");
		String[] sus = request.getParameterValues("su")==null ? null : request.getParameterValues("su");
		String[] results = request.getParameterValues("result")==null ? null : request.getParameterValues("result");
		String[] totresults = request.getParameterValues("totresult")==null ? null : request.getParameterValues("totresult");
		
		
   int hapresult = 0;
   String tot="";
   String result="";
   DecimalFormat decFormat = new DecimalFormat("###,###");
   if (goods!=null) {
  	 for(int i=0;i<goods.length;i++) {
  		 productClss+=proproductClss[i]+"/";
  		 good+=goods[i]+"/";
  		 su+=sus[i]+"/";
  		 strresult+=results[i]+"/";
			 totresult= totresults[i];
			 strresult+= decFormat.format(Integer.parseInt(results[i]))+"원/";
			 int abc = Integer.parseInt(totresult.substring(0,totresult.length()-1).replaceAll(",","")); 
			 hapresult += abc;
		 }
  	 productClss=productClss.substring(0,productClss.length()-1);
  	 good=good.substring(0,good.length()-1);
  	 su=su.substring(0,su.length()-1);
  	 strresult=strresult.substring(0,strresult.length()-1);
		 
//  	 strresult = decFormat.format(strresult)+"원";
  	 tot = decFormat.format(hapresult)+"원";
   }
   InputVO vo = new InputVO(buyer,productClss , good, su, strresult, tot);
    
    String viewPage = "/study/1116h";
		if(sw.equals("input")) viewPage += "/input.jsp";
		else if(sw.equals("list")) viewPage += "/list.jsp";
		else viewPage += "/main.jsp";
    
    request.setAttribute("vo", vo);
    System.out.println("vo : " +vo);
		request.getRequestDispatcher(viewPage).forward(request, response);
    
	}
}
