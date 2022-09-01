package kr.board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.dao.BoardMyBatisDAO;
import kr.dao.MemberMyBatisDAO;
import kr.entity.Board;
import kr.entity.tbl_member;


public class BoardWriteController implements Controller {

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 글쓰기 처리
		
		
		
		
		//////////////////////////////////////////////
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		///////
		String savePath = "upload"; 
		// 최대 업로드 파일 크기 5MB로 제한
		int uploadFileSizeLimit = 5*1024*1024;
		String encType = "UTF-8";
		
		ServletContext context =  request.getSession().getServletContext(); 
		String uploadFilePath = context.getRealPath(savePath);
		System.out.println("서버상의 실제 디렉토리 : ");
		System.out.println(uploadFilePath);
		
		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(
				request,
				uploadFilePath,
				uploadFileSizeLimit,
				encType,
				new DefaultFileRenamePolicy());
				
			String fileName = multi.getFilesystemName("uploadFile");
			
			if(fileName==null) {
				System.out.println("파일이 업로드되지 않았음");
			}else {
				out.println("<br>파일명 :" + fileName);
			}
		}catch(Exception e) {
			System.out.println("예외발생" + e);  
		}
		
		BoardMyBatisDAO dao = new BoardMyBatisDAO();
		request.setCharacterEncoding("utf-8");
		//int comm_seq = Integer.parseInt(request.getParameter("comm_seq"));
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");  
		// System.out.println(title);
		// System.out.println(content);
		HttpSession session = request.getSession();
		tbl_member mvo = (tbl_member) session.getAttribute("mvo"); // 회원세션 가져오기
		String id = mvo.getMb_id();
		System.out.println(id);
		Board vo = new Board();
		
		vo.setMb_id(id);
		vo.setComm_title(title);
		vo.setComm_content(content);
		dao.boardWrite(vo);
		vo = dao.rescent();
		request.setAttribute("vo", vo);
		
		return "boardView";
	}

}