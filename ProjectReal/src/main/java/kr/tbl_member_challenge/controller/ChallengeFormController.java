package kr.tbl_member_challenge.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.board.controller.Controller;
import kr.dao.ChallDAO;
import kr.entity.sumMonthPay;
import kr.entity.tbl_member_challenge;

public class ChallengeFormController implements Controller {

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String mb_id = request.getParameter("mb_id");
		 
		ChallDAO dao = new ChallDAO();
		List<sumMonthPay> paylist = dao.sumMonPay(mb_id);
		  System.out.println(paylist); // 어떻게 월별로 갑승ㄹ 주지업
		  // 그럼 if문으로 없는 달은 다 0으로 넣는건 그래서 젤 (머리가)간단하고 귀찮은건 if문 12개 ㅋㅋㅋ와ㅋㅋㅋㅋㅋ월별로 리스트 다시 만들어서 js에서 리스트값 
		  // 민우가 보낸거 다시 해서 깃랩에 올려달래요 아 맞다
		  request.setAttribute("paylist", paylist);
		return "mychall";
	
	}
}
