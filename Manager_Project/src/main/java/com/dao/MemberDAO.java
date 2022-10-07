package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.MemberDTO;

@Repository
public class MemberDAO {
	@Autowired
	SqlSessionTemplate session; //자동주입


	public void memberadd(MemberDTO dto) {
		int n=session.insert("MemberMapper.add", dto);
		System.out.println("insert 갯수"+n);
	}

	public MemberDTO memberRetrieve(String memno) {
		MemberDTO dto= session.selectOne("MemberMapper.MemberRetrieve", memno);
		return dto;
	}

	public void memberUpdate(MemberDTO m) {
		session.update("MemberMapper.memberUpdate", m);		
		}

	public List<MemberDTO> list(String userid) {
		List<MemberDTO> list = session.selectList("MemberMapper.list", userid);
		return list;
	}
	
}
