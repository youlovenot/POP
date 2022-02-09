package com.springbook.view.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springbook.biz.member.MemberService;
import com.springbook.biz.member.MemberVO;
import com.springbook.biz.member.impl.MemberDAO;
import com.springbook.biz.notice.NoticeService;

@Controller
public class LoginController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/login.com", method=RequestMethod.GET)
	public String loginView(@ModelAttribute("member") MemberVO vo, HttpServletRequest request, HttpSession session) {
		String referer = request.getHeader("Referer");
		session.setAttribute("redirectURI", referer);
		System.out.println("로그인 화면으로 이동");
		return "/member/login.jsp";
	}
	
	@RequestMapping(value="/login.com", method=RequestMethod.POST)
	public ModelAndView login(MemberVO vo, HttpSession session) throws IOException {
		ModelAndView mav = new ModelAndView();
		MemberVO member = memberService.getMember(vo);
		System.out.println("로그인 인증 처리...");
		if(member != null) {
			String referer = (String) session.getAttribute("redirectURI");
			session.setAttribute("memberName", member.getName());
			session.setAttribute("memberId", member.getId());
			mav.setViewName("redirect:" + referer);
			return mav;
		}
		else {
			mav.setViewName("/member/login.jsp");
			mav.addObject("alert", "로그인 정보가 일치하지 않습니다.");
			return mav;
		}
	}
	
}
