package com.springbook.biz.goods.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springbook.biz.goods.GoodsVO;

@Repository
public class GoodsDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertGoods(GoodsVO vo) {
		mybatis.insert("GoodsDAO.insertGoods", vo);
	}
	
	public List<GoodsVO> getGoodsList(GoodsVO vo) {
		return mybatis.selectList("GoodsDAO.getGoodsList", vo);
	}
	
	public GoodsVO getGoods(GoodsVO vo) {
		return mybatis.selectOne("GoodsDAO.getGoods", vo);
	}
}
