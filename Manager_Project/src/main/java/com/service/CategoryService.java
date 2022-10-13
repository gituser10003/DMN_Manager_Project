package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CategoryDAO;
import com.dto.CategoryDTO;

@Service
public class CategoryService {
	@Autowired
	CategoryDAO dao;

	public List<CategoryDTO> categorylist(String userid) {
		List<CategoryDTO> list = dao.list(userid);
		return list;
	}

	public void categoryadd(CategoryDTO dto) {
		dao.categoryadd(dto);
	}

	public CategoryDTO categoryedit(String ctno) {
		CategoryDTO dto= dao.categoryedit(ctno);
		return dto;
	}

	public void categoryUpdate(CategoryDTO m) {
		dao.categoryUpdate(m);
	}

	public void categoryDelete(CategoryDTO dto) {
		dao.categoryDelete(dto);
	}

}
