package com.springbook.view.goods;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.springbook.biz.goods.GoodsService;
import com.springbook.biz.goods.GoodsVO;

@Controller
@SessionAttributes("goods")
public class GoodsController {
	@Autowired
	private GoodsService goodsService;

	// 상품 등록
	@RequestMapping("/insertGoods.com")
	public String insertGoods(GoodsVO vo) throws IOException {
		String path = "C:/LSH/POP/src/main/webapp/goodsShop/img/";
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
		
		goodsService.insertGoods(vo);
		return "redirect:/admin/goods.com";
	}

	// 검색 조건 목록 설정
	@ModelAttribute("goodsConditionMap")
	public Map<String, String> goodssearchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("상품번호", "SEQ");
		conditionMap.put("상품명", "NAME");
		return conditionMap;
	}
	// 상품관리 페이지
	@RequestMapping("/admin/goods.com")
	public ModelAndView getGoodsListA(GoodsVO vo) {
		ModelAndView mav = new ModelAndView();
		// Null Check
		if(vo.getSearchCondition()==null) vo.setSearchCondition("SEQ");
		if(vo.getSearchKeyword()==null) vo.setSearchKeyword("");
		// Model 정보 저장
		mav.setViewName("/admin/goods_admin.jsp");
		mav.addObject("goodsList", goodsService.getGoodsList(vo));
		mav.addObject("imgpath", "/goodsShop/img/");
		return mav;
	}
	// 상품 목록 페이지
	@RequestMapping("/goods.com")
	public ModelAndView getGoodsList(GoodsVO vo) {
		ModelAndView mav = new ModelAndView();
		// Null Check
		if(vo.getSearchCondition()==null) vo.setSearchCondition("SEQ");
		if(vo.getSearchKeyword()==null) vo.setSearchKeyword("");
		// Model 정보 저장
		mav.setViewName("/goodsShop/goods.jsp");
		mav.addObject("goodsList", goodsService.getGoodsList(vo));
		mav.addObject("imgpath", "/goodsShop/img/");
		return mav;
	}
	// 상품 상세 페이지
	@RequestMapping("/goods_view.com")
	public ModelAndView getGoods(GoodsVO vo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/goodsShop/product_detail.jsp");
		mav.addObject("goods", goodsService.getGoods(vo));
		mav.addObject("imgpath", "/goodsShop/img/");
		return mav;
	}

}
