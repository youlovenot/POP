package com.springbook.view.goods;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.springbook.biz.goods.GoodsService;
import com.springbook.biz.goods.GoodsVO;

@Controller
@SessionAttributes("goods")
public class GoodsController {
	@Autowired
	private GoodsService goodsService;

	// 상품 등록
	@RequestMapping("/insertGoods.do")
	public String insertGoods(GoodsVO vo) throws IOException {
		// 파일 업로드 처리
		for	(int i=0; i<5;i++) {
			MultipartFile uploadFile = vo.getUploadFile();
			if(!uploadFile.isEmpty()) {
				String fileName = uploadFile.getOriginalFilename();
				uploadFile.transferTo(new File("/goods/image/" + fileName));
			}
		}
		goodsService.insertGoods(vo);
		return "redirect:getNoticeList.do";
	}

}
