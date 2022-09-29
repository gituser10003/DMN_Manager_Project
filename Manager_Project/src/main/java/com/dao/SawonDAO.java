package com.dao;

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
	
	
	
}
