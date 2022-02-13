package com.springbook.biz.boardgames.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbook.biz.boardgames.BoardgamesService;
import com.springbook.biz.boardgames.BoardgamesVO;

@Service("BoardgamesService")
public class BoardgamesServiceImpl implements BoardgamesService {
	@Autowired
	private BoardgamesDAO BoardgamesDAO;
	
	public void insertBoardgames(BoardgamesVO vo) {
		BoardgamesDAO.insertBoardgames(vo);
	}

	public List<BoardgamesVO> getBoardgamesList(BoardgamesVO vo) {
		return BoardgamesDAO.getBoardgamesList(vo);
	}

	public List<BoardgamesVO> getNewBoardgamesList(BoardgamesVO vo) {
		return BoardgamesDAO.getNewBoardgamesList(vo);
	}

	public BoardgamesVO getBoardgames(BoardgamesVO vo) {
		return BoardgamesDAO.getBoardgames(vo);
	}
	
}
