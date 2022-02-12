package com.springbook.view.notice;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.springbook.biz.notice.NoticeService;
import com.springbook.biz.notice.NoticeVO;

@Controller
@SessionAttributes("notice")
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	// 글 등록
	@RequestMapping(value="/admin/insertNotice.com", method=RequestMethod.POST )
	public String insertNotice(NoticeVO vo, HttpServletRequest request) throws IOException {
		// 파일 업로드 처리
		MultipartFile uploadFile = vo.getUploadFile();
		String path = "/notice/img/";
		ServletContext context= request.getSession().getServletContext();
		path=context.getRealPath(path);
		System.out.println("공지등록 처리");
		System.out.println("이미지파일저장경로 : " +path);
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(path + fileName));
			vo.setImage(fileName);
		}
		noticeService.insertNotice(vo);
		return "redirect:/noticeList.com";
	}
	
	@RequestMapping(value="/admin/insertNotice.com", method=RequestMethod.GET)
	public String NoticeUploadView(NoticeVO vo) {
		System.out.println("공지등록페이지 이동");
		return "/notice/notice_upload.jsp";
	}
	
	// 글 상세 조회
	@RequestMapping("/notice_view.com")
	public ModelAndView getNotice(NoticeVO vo, Model model) {
		ModelAndView mav = new ModelAndView();
		System.out.println("공지상세뷰페이지 이동");
		mav.setViewName("/notice/notice.jsp");		// View 이름 리턴
		model.addAttribute("notice", noticeService.getNotice(vo));		// Model 정보 저장
		mav.addObject("imgpath", "/notice/img/");
		return mav;
	}
	
	// 검색 조건 목록 설정
	@ModelAttribute("noticeConditionMap")
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("제목", "TITLE");
		conditionMap.put("내용", "CONTENT");
		return conditionMap;
	}
	
	//글 목록 검색
	@RequestMapping("/noticeList.com")
	public ModelAndView getNoticeList(NoticeVO vo) {
		System.out.println("공지목록페이지 이동");
		ModelAndView mav = new ModelAndView();
		// Null Check
		if(vo.getSearchCondition()==null) vo.setSearchCondition("TITLE");
		if(vo.getSearchKeyword()==null) vo.setSearchKeyword("");
		// Model 정보 저장
		mav.setViewName("/notice/noticeList.jsp");
		mav.addObject("noticeList", noticeService.getNoticeList(vo));
		return mav;
	}
}
