package com.springbook.view.member;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.springbook.biz.member.MemberService;
import com.springbook.biz.member.MemberVO;
import com.springbook.biz.notice.NoticeVO;

@Controller
@SessionAttributes("member")
public class MemberController {
	@Autowired
	MemberService memberService;
	// 로그인 처리
	@RequestMapping(value="/login.com", method=RequestMethod.GET)
	public String loginView(HttpServletRequest request, HttpSession session) {
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
	
	// 로그아웃 처리
	@RequestMapping("/logout.com")
	public String logout(HttpSession session, HttpServletRequest request) {
		session.invalidate();
		String Cpath = request.getHeader("Referer");
		int fidx = Cpath.indexOf("/",7);
		Cpath = Cpath.substring(fidx);
		int lidx = Cpath.lastIndexOf("/");
		if(Cpath.substring(0,lidx).equals("/admin")) {
			Cpath = "/";
		}
		return "redirect:" + Cpath;
	}
	
	// 회원가입 처리
	@RequestMapping(value="/join.com", method=RequestMethod.GET)
	public String joinView(MemberVO vo) {
		return "/member/join.jsp";
	}
	@RequestMapping(value="/join.com", method=RequestMethod.POST)
	public String insertMember(MemberVO vo) {
		memberService.insertMember(vo);
		return "/";
	}
	
	// 회원 수정
	@RequestMapping("/admin/updateMemberP.com")
	public String updateMember(@ModelAttribute("member") MemberVO vo) {
		memberService.updateMember(vo);
		return "redirect:/admin/member.com";
	}
	
	// 회원 탈퇴
	@RequestMapping("/deleteMember.com")
	public String deleteMember(MemberVO vo) {
		memberService.deleteMember(vo);
		return "redirect:/admin/member.com";
	}
	
	// 회원 수정페이지 이동
	@RequestMapping("/admin/updateMember.com")
	public ModelAndView getMember(MemberVO vo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/member/join.jsp");
		mav.addObject("member", memberService.getMember(vo));
		return mav;
	}
	
	// 검색 조건 목록 설정
	@ModelAttribute("memberConditionMap")
	public Map<String, String> membersearchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("회원ID", "ID");
		conditionMap.put("이름", "NAME");
		return conditionMap;
	}
	
	@RequestMapping("/admin/member.com")
	public ModelAndView getMemberList(MemberVO vo) {
		ModelAndView mav = new ModelAndView();
		// Null Check
		if(vo.getSearchMCondition()==null) vo.setSearchMCondition("ID");
		if(vo.getSearchMKeyword()==null) vo.setSearchMKeyword("");
		// Model 정보 저장
		mav.setViewName("/admin/mem_admin.jsp");
		mav.addObject("memberList", memberService.getMemberList(vo));
		return mav;
	}

}
