package com.springbook.view.goods;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.springbook.biz.goods.GoodsService;
import com.springbook.biz.goods.GoodsVO;

@Controller
@SessionAttributes("goods")
public class GoodsController {
	@Autowired
	private GoodsService goodsService;

	// 상품 등록
	@RequestMapping("/insertGoods.do")
	public String insertGoods(GoodsVO vo, MultipartHttpServletRequest mtpRequest) throws IOException {
		List<MultipartFile> fileList = mtpRequest.getFiles("details");
		String src = mtpRequest.getParameter("src");
		System.out.println("src value : " + src);
		String path = "/goodsShop/img/";
		for(MultipartFile mf : fileList) {
			String originFileName = mf.getOriginalFilename();	// 원본 파일명
			long fileSize = mf.getSize();						// 파일 크기
			System.out.println("originFileName : " + originFileName);
            System.out.println("fileSize : " + fileSize);
            String safeFile = path + System.currentTimeMillis() + originFileName;
            mf.transferTo(new File(safeFile));
		}
		goodsService.insertGoods(vo);
		return "redirect:getNoticeList.do";
	}

}
