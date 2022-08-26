package kr.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.board.dao.BoardMyBatisDAO;
import kr.board.entity.Board;
import kr.comment.dao.CommMyBatisDAO;
import kr.comment.entity.Comment;

public class BoardViewController implements Controller {

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BoardMyBatisDAO dao = new BoardMyBatisDAO();
		CommMyBatisDAO dao1 = new CommMyBatisDAO();
		int num = Integer.parseInt(request.getParameter("num"));
		Board vo = dao.boardView(num);
		List<Comment> list= dao1.commAllList(num); // 댓글데이터 가져오기
		dao.countUpdate(num);
		request.setAttribute("vo", vo);
		request.setAttribute("list", list);
		return "boardView";
	}

}
