package com.springbook.biz.goods.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbook.biz.goods.GoodsService;
import com.springbook.biz.goods.GoodsVO;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	private GoodsDAO goodsDAO;
	
	public void insertGoods(GoodsVO vo) {
		goodsDAO.insertGoods(vo);
	}

	public List<GoodsVO> getGoodsList(GoodsVO vo) {
		return goodsDAO.getGoodsList(vo);
	}

	public GoodsVO getGoods(GoodsVO vo) {
		return goodsDAO.getGoods(vo);
	}
	
}
