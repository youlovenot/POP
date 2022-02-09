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
		String path = "/goodsShop/img/";
		MultipartFile[] getUpload = vo.getDupload();
		String[] fileNames = new String[5];
		for(int i=0;i<5;i++) {
			if(!getUpload[i].isEmpty()) {
				fileNames[i] = Integer.toString(vo.getSeq())+"_"+(i+1);
				getUpload[i].transferTo(new File(path + fileNames[i]));
			} else {
				break;
			}
		}
		vo.setDetails(fileNames);
		
		MultipartFile uploadFile = vo.getImgupload();
		if(!uploadFile.isEmpty()) {
			String fileName = Integer.toString(vo.getSeq())+"_M";
			uploadFile.transferTo(new File(path + fileName));
			vo.setPimage(fileName);
		}
		
		goodsService.insertGoods(vo);
		return "redirect:/admin/goods_admin.jsp";
	}

}
