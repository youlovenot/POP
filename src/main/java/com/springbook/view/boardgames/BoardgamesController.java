package com.springbook.view.boardgames;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.springbook.biz.boardgames.BoardgamesService;
import com.springbook.biz.boardgames.BoardgamesVO;

@Controller
@SessionAttributes("boardgames")
public class BoardgamesController {
	@Autowired
	private BoardgamesService BoardgamesService;

	// 상품 등록
	@RequestMapping("/insertBoardgames.com")
	public String insertBoardgames(BoardgamesVO vo, HttpServletRequest request) throws IOException {
		System.out.println("보드게임등록 처리");
		String path = "/boardGameShop/img/";
		ServletContext context= request.getSession().getServletContext();
		path=context.getRealPath(path);
		MultipartFile[] getUpload = vo.getDupload();
		String[] fileNames = new String[5];
		for(int i=0;i<5;i++) {
			if(!getUpload[i].isEmpty()) {
				String extension = getUpload[i].getOriginalFilename();
				extension = extension.substring(extension.lastIndexOf("."));
				fileNames[i] = Integer.toString(vo.getSeq())+"_"+(i+1)+extension;
				getUpload[i].transferTo(new File(path + fileNames[i]));
			} else {
				break;
			}
		}
		vo.setDetails(fileNames);
		MultipartFile uploadFile = vo.getImgupload();
		if(!uploadFile.isEmpty()) {
			String extension = uploadFile.getOriginalFilename();
			extension = extension.substring(extension.lastIndexOf("."));
			String fileName = Integer.toString(vo.getSeq())+"_0"+extension;
			uploadFile.transferTo(new File(path + fileName));
			vo.setPimage(fileName);
		}
		BoardgamesService.insertBoardgames(vo);
		return "redirect:/admin/boardgames.com";
	}

	// 검색 조건 목록 설정
	@ModelAttribute("boardgamesConditionMap")
	public Map<String, String> BoardgamessearchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("상품번호", "SEQ");
		conditionMap.put("상품명", "NAME");
		return conditionMap;
	}
	// 상품관리 페이지
	@RequestMapping("/admin/boardgames.com")
	public ModelAndView getBoardgamesListA(BoardgamesVO vo) {
		System.out.println("보드게임관리페이지 이동");
		ModelAndView mav = new ModelAndView();
		// Null Check
		if(vo.getSearchCondition()==null) vo.setSearchCondition("SEQ");
		if(vo.getSearchKeyword()==null) vo.setSearchKeyword("");
		// Model 정보 저장
		mav.setViewName("/admin/board_admin.jsp");
		mav.addObject("BoardList", BoardgamesService.getBoardgamesList(vo));
		mav.addObject("imgpath", "/boardGameShop/img/");
		return mav;
	}
	// 상품 목록 페이지
	@RequestMapping("/boardgames.com")
	public ModelAndView getBoardgamesList(BoardgamesVO vo) {
		System.out.println("보드게임목록페이지 이동");
		ModelAndView mav = new ModelAndView();
		// Null Check
		if(vo.getSearchCondition()==null) vo.setSearchCondition("SEQ");
		if(vo.getSearchKeyword()==null) vo.setSearchKeyword("");
		// Model 정보 저장
		mav.setViewName("/boardGameShop/board_game.jsp");
		mav.addObject("boardList", BoardgamesService.getBoardgamesList(vo));
		mav.addObject("imgpath", "/boardGameShop/img/");
		return mav;
	}
	// 상품 상세 페이지
	@RequestMapping("/boardgames_view.com")
	public ModelAndView getBoardgames(BoardgamesVO vo) {
		System.out.println("보드게임상세뷰페이지 이동");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/boardGameShop/product_detail.jsp");
		mav.addObject("boardgame", BoardgamesService.getBoardgames(vo));
		mav.addObject("imgpath", "/boardGameShop/img/");
		return mav;
	}

}
