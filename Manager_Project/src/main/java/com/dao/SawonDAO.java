package com.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.SawonDTO;

@Repository
public class SawonDAO {
	@Autowired
	SqlSessionTemplate template; //자동주입

	public void sawonAdd(SawonDTO s) {
		int n  = template.insert("SawonMapper.sawonAdd", s);
		System.out.println("insert갯수 : "+ n);
	}

	public SawonDTO login(Map<String, String> map) {
		SawonDTO dto = template.selectOne("SawonMapper.login",map);
		return dto;
	}

	public SawonDTO SawonRetrieve(String userid) {
		SawonDTO dto = template.selectOne("SawonMapper.SawonRetrieve", userid);
		return dto;
	}

	public void sawonupdate(SawonDTO s) {
		template.update("SawonMapper.sawonupdate", s);		
	}

	public List<SawonDTO> list(String userid) {
		List<SawonDTO> list = template.selectList("SawonMapper.list", userid);
		return list;
	}


	public void sawonDelete(SawonDTO dto) {
		int n= template.delete("SawonMapper.sawonDelete", dto);
		
	}


	
	
	
}
