package com.springbook.biz.member;

import java.util.List;

public interface MemberService {

	// CRUD 기능의 메소드 구현
	// 로그인
	MemberVO getMember(MemberVO vo);
	
	// 회원 목록 조회
	List<MemberVO> getMemberList(MemberVO vo);
	
}
