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
		System.out.println("===> Mybatis로 insertGoods() 기능 처리");
		mybatis.insert("GoodsDAO.insertGoods", vo);
	}
	
	public void updateGoods(GoodsVO vo) {
		System.out.println("===> Mybatis로 updateGoods() 기능 처리");
		mybatis.update("GoodsDAO.updateGoods", vo);
	}
	
	public void deleteGoods(GoodsVO vo) {
		System.out.println("===> Mybatis로 deleteGoods() 기능 처리");
		mybatis.delete("GoodsDAO.deleteGoods", vo);
	}
	
	public GoodsVO getGoods(GoodsVO vo) {
		System.out.println("===> Mybatis로 getGoods() 기능 처리");
		return mybatis.selectOne("GoodsDAO.getGoods", vo);
	}
	
	public List<GoodsVO> getGoodsList(GoodsVO vo) {
		System.out.println("===> Mybatis로 getGoodsList() 기능 처리");
		return mybatis.selectList("GoodsDAO.getGoodsList", vo);
	}
}
