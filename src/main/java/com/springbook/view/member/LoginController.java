package com.springbook.view.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springbook.biz.member.MemberVO;
import com.springbook.biz.member.impl.MemberDAO;

@Controller
public class LoginController {
	
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String loginView(@ModelAttribute("member") MemberVO vo, HttpServletRequest request, HttpSession session) {
		String referer = request.getHeader("Referer");
		session.setAttribute("redirectURI", referer);
		System.out.println("로그인 화면으로 이동");
		return "redirect:/member/login.jsp";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(MemberVO vo, MemberDAO memberDAO, HttpServletResponse response, HttpSession session, Model model) throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		MemberVO member = memberDAO.getMember(vo);
		System.out.println("로그인 인증 처리...");
		if(member != null) {
			String referer = (String) session.getAttribute("redirectURI");
			session.setAttribute("memberName", member.getName());
			session.setAttribute("memberId", member.getId());
			return "redirect:" + referer;
		}
		else {
			vo.setAlert("로그인정보를 확인해 주세요.");
			return "redirect:/member/login.jsp";
		}
	}
	
}
