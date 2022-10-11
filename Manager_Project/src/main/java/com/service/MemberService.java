package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.MemberDAO;
import com.dto.MemberDTO;

@Service
public class MemberService {
	@Autowired
	MemberDAO dao;

	public List<MemberDTO> list(String userid) {
		List<MemberDTO> list = dao.list(userid);
		return list;
	}

	public void memberadd(MemberDTO dto) {
		dao.memberadd(dto);
	}

	public MemberDTO memberRetrieve(String memno) {
		MemberDTO dto= dao.memberRetrieve(memno);
		return dto;
	}

	public void memberUpdate(MemberDTO m) {
		dao.memberUpdate(m);		
	}

	public void memberDelete(MemberDTO dto) {
		dao.memberDelete(dto);
	}
	
}
