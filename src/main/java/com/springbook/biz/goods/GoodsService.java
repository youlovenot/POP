package com.springbook.biz.goods;

import java.util.List;

public interface GoodsService {

	// CRUD 기능의 메소드 구현
	// 상품 등록
	void insertGoods(GoodsVO vo);

	// 상품 수정
	void updateGoods(GoodsVO vo);

	// 상품 삭제
	void deleteGoods(GoodsVO vo);

	// 상품 조회
	GoodsVO getGoods(GoodsVO vo);

	// 상품 목록 조회
	List<GoodsVO> getGoodsList(GoodsVO vo);
	
}
