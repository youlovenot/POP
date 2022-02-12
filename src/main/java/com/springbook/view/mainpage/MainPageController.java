package com.springbook.view.mainpage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springbook.biz.goods.GoodsService;
import com.springbook.biz.goods.GoodsVO;

@Controller
public class MainPageController {
	@Autowired
	GoodsService goodsService;
	
	@RequestMapping("/POPGames.com")
	public ModelAndView mainPage(GoodsVO vo) {
		System.out.println("메인페이지 이동");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/index.jsp");
		mav.addObject("goodsList", goodsService.getNewGoodsList(vo));
		mav.addObject("goodsImgpath", "/goodsShop/img/");
		return mav;
	}

}
