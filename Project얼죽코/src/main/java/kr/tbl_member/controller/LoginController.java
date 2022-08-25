package kr.tbl_member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.board.controller.Controller;
import kr.tbl_member.dao.MemberMyBatisDAO;
import kr.tbl_member.entity.tbl_member;


public class LoginController implements Controller {
	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// memId, memPwd
		String mb_id = request.getParameter("mb_id");
		String mb_pw = request.getParameter("mb_pw");
		
		
		
		tbl_member m = new tbl_member(); 
		m.setMb_id(mb_id);
		m.setMb_pw(mb_pw);
		
		
		
		MemberMyBatisDAO dao = new MemberMyBatisDAO();
		tbl_member mvo = dao.memberLogin(m);       
		
		
		if (mvo!=null) {
			// 세션을 생성하기
			HttpSession session = request.getSession();
			// 객체바인딩
			session.setAttribute("mvo",mvo);      
			return "redirect:/mainForm.do"; 
		}
		return "redirect:/loginForm.do";
	}

}