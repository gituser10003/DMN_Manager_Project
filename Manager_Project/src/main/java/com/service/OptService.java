package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.OptDAO;
import com.dto.OptDTO;

@Service
public class OptService {
	@Autowired
	OptDAO dao;

	public List<OptDTO> OptList(String userid) {
		List<OptDTO> list = dao.OptList(userid);
		return list;
	}

	public void OptAdd(OptDTO dto) {
		dao.OptAdd(dto);
	}

	public OptDTO optedit(String optno) {
		OptDTO dto= dao.optedit(optno);
		return dto;
	}

	public void optUpdate(OptDTO dto) {
		dao.optUpdate(dto);
	}

	public void optDelete(OptDTO dto) {
		dao.optDelete(dto);
	}

}
