package com.springbook.biz.boardgames;

import java.util.List;

public interface BoardgamesService {

	// 상품 등록
	void insertBoardgames(BoardgamesVO vo);
	
	// 상품 목록 조회
	List<BoardgamesVO> getBoardgamesList(BoardgamesVO vo);
	
	// 상품 최근목록 조회
	List<BoardgamesVO> getNewBoardgamesList(BoardgamesVO vo);
	
	// 상품 상세 조회
	BoardgamesVO getBoardgames(BoardgamesVO vo);
}
