package com.springbook.view.mainpage;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springbook.biz.boardgames.BoardgamesService;
import com.springbook.biz.boardgames.BoardgamesVO;
import com.springbook.biz.goods.GoodsService;
import com.springbook.biz.goods.GoodsVO;

@Controller
public class MainPageController {
	@Autowired
	GoodsService goodsService;
	@Autowired
	BoardgamesService boardgamesService;
	
	@RequestMapping("/POPGames.com")
	public ModelAndView mainPage(GoodsVO goodsVO, BoardgamesVO boardgamesVO) {
		System.out.println("메인페이지 이동");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/index.jsp");
		mav.addObject("goodsList", goodsService.getNewGoodsList(goodsVO));
		mav.addObject("goodsImgpath", "/goodsShop/img/");
		mav.addObject("boardList", boardgamesService.getNewBoardgamesList(boardgamesVO));
		mav.addObject("boardgamesImgpath", "/boardGameShop/img/");
		return mav;
	}

}
