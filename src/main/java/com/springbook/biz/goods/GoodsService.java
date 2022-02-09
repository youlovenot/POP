package com.springbook.biz.goods;

import java.util.List;

public interface GoodsService {

	// 상품 등록
	void insertGoods(GoodsVO vo);
	
	// 상품 목록 조회
	List<GoodsVO> getGoodsList(GoodsVO vo);
	
	// 상품 상세 조회
	GoodsVO getGoods(GoodsVO vo);
}
