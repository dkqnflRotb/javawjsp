package study2.pdstest;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import study2.StudyInterface;

public class DownLoadCommand implements StudyInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String realPath = request.getServletContext().getRealPath("/data/pdstest");
		  //배열로 받아줌  // 파일이들어있는 리스트경로. 에있는 파일들 리스트
		String[] files = new File(realPath).list();
		
		for(String file : files) {
			System.out.println("file : " + file);
		}
		request.setAttribute("files", files);
	}
}
