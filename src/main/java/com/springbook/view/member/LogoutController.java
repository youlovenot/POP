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
		int fidx = Cpath.indexOf("/",7);
		int lidx = Cpath.lastIndexOf("/");
		if(Cpath.substring(fidx, lidx).equals("/admin")) {
			Cpath = "/index.jsp";
		}
		return "redirect:"+Cpath;
	}
	
}
