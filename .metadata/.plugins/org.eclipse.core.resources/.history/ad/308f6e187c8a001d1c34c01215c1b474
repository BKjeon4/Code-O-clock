package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.MemberVO;
import com.example.persistence.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserRepository userRepository;

	//회원가입
	@Override
	public void insertMember(MemberVO vo) {
		userRepository.save(vo);
	}

	//로그인
	@Override
	public List<MemberVO> loginMember(MemberVO vo) {
		return userRepository.findByMId(vo.getMId());
	}
	
	


//	@Override
//	public MemberVO checkId(MemberVO vo) {
//		return userRepository.findById(vo.getM_id().get());
//	}

	
}
