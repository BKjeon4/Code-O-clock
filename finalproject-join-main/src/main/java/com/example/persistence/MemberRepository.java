package com.example.persistence;

import java.util.HashMap;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.MemberKakaoDTO;
import com.example.domain.MemberKakaoDTO;
import com.example.domain.MemberVO;


public interface MemberRepository extends JpaRepository<MemberVO, Integer> {
	
	// 로그인
	List<MemberVO> findByMemIdStringAndMemPass(String memIdString, String memPass);

	
	// 아이디 중복 체크
	   Integer countByMemIdString(String memIdString);
	
	// 이름과 전화번호로 아이디 찾기	
	MemberVO findByMemTelAndMemName(String memTel, String memName);
		
	// 임시 비밀번호 발송 //트렌젝션을 주지 않으면 컨트롤러의 ->mailResult 가 null 값으로 들어감
	@Transactional
	@Modifying
	@Query(value="UPDATE Member SET m_Pass = ?1 WHERE m_idstring = ?2", nativeQuery = true)
    Integer updateTempPw(String memPass, String memIdString);
	
	
	// 아이디로 회원 정보 찾기
	MemberVO findByMemIdString(String memIdString);

	
	// 카카오톡 로그인
	@Query(value="select * from member where m_nickname=?1 and m_email=?2", nativeQuery = true)
	MemberKakaoDTO findkakao(String nickname, String email);

	
	@Query(value="insert into member(m_nickname, m_email) values(?1, ?2)", nativeQuery = true)
	void kakaoinsert(String nickname, String email);
	
	

	
	
	

	
	
}
