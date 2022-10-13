package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.CategoryDTO;

@Repository
public class CategoryDAO {
	@Autowired
	SqlSessionTemplate session; //자동주입

	public List<CategoryDTO> list(String userid) {
		List<CategoryDTO> list = session.selectList("CategoryMapper.categorylist", userid);
		return list;
	}

	public void categoryadd(CategoryDTO dto) {
		int n=session.insert("CategoryMapper.categoryadd", dto);
		System.out.println("insert 갯수"+n);
	}

	public CategoryDTO categoryedit(String ctno) {
		CategoryDTO dto= session.selectOne("CategoryMapper.categoryedit", ctno);
		return dto;
	}

	public void categoryUpdate(CategoryDTO m) {
		session.update("CategoryMapper.categoryUpdate", m);	
	}

	public void categoryDelete(CategoryDTO dto) {
		int n= session.delete("CategoryMapper.categoryDelete", dto);
	}
	
}
