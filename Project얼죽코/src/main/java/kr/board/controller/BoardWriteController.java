package kr.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.board.dao.BoardMyBatisDAO;
import kr.board.entity.Board;

public class BoardWriteController implements Controller {

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 글쓰기 처리
		BoardMyBatisDAO dao = new BoardMyBatisDAO();
		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		Board vo = new Board();
		vo.setComm_title(title);
		vo.setComm_content(content);
		dao.boardWrite(vo);
		System.out.println("write포워딩");
		return "boardView";
	}

}
