package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.OptDTO;

@Repository
public class OptDAO {
	@Autowired
	SqlSessionTemplate session; //자동주입

	public List<OptDTO> OptList(String userid) {
		List<OptDTO> list = session.selectList("OptMapper.OptList", userid);
		return list;
	}

	public void OptAdd(OptDTO dto) {
		int n=session.insert("OptMapper.OptAdd", dto);
		System.out.println("insert 갯수"+n);
	}

	public OptDTO optedit(String optno) {
		OptDTO dto= session.selectOne("OptMapper.optedit", optno);
		return dto;
	}

	public void optUpdate(OptDTO dto) {
		session.update("OptMapper.optUpdate", dto);	
	}

	public void optDelete(OptDTO dto) {
		int n= session.delete("OptMapper.optDelete", dto);
	}


}
