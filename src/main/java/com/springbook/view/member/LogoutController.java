package com.springbook.view.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogoutController {

	@RequestMapping("/logout.do")
	public String logout(HttpSession session, HttpServletRequest request) {
		session.invalidate();
		String Cpath = request.getHeader("Referer");
		int pathidx = Cpath.lastIndexOf("/");
		if(Cpath.substring(pathidx).equals("/index.jsp")) {
			Cpath = Cpath.substring(pathidx);
		} else {
			pathidx = Cpath.indexOf("/");
			Cpath = Cpath.substring(pathidx);
		}
		System.out.println("현재 경로 : " + Cpath);
		return "redirect:"+Cpath;
	}
	
}
