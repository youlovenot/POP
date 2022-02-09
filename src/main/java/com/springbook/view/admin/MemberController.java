package com.springbook.view.admin;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.springbook.biz.member.MemberService;
import com.springbook.biz.member.MemberVO;

@Controller
@SessionAttributes("member")
public class MemberController {
	@Autowired
	MemberService memberService;
	
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
