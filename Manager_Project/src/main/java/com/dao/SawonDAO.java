package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.SawonDTO;

@Repository
public class SawonDAO {
	@Autowired
	SqlSessionTemplate session;

	public List<SawonDTO> list() {
		return session.selectList("SawonMapper.list");
		}
}
