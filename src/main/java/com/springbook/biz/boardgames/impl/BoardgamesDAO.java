package com.springbook.biz.boardgames.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springbook.biz.boardgames.BoardgamesVO;

@Repository
public class BoardgamesDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertBoardgames(BoardgamesVO vo) {
		mybatis.insert("BoardgamesDAO.insertBoardgames", vo);
	}
	
	public List<BoardgamesVO> getBoardgamesList(BoardgamesVO vo) {
		return mybatis.selectList("BoardgamesDAO.getBoardgamesList", vo);
	}
	
	public List<BoardgamesVO> getNewBoardgamesList(BoardgamesVO vo) {
		return mybatis.selectList("BoardgamesDAO.getNewBoardgamesList", vo);
	}
	
	public BoardgamesVO getBoardgames(BoardgamesVO vo) {
		return mybatis.selectOne("BoardgamesDAO.getBoardgames", vo);
	}
}
