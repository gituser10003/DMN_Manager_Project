package com.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.SawonDAO;
import com.dto.SawonDTO;
import com.dto.SawonPageDTO;

@Service
public class SawonService {
@Autowired
SawonDAO dao;

public void sawonAdd(SawonDTO s) {
	dao.sawonAdd(s);
}

public SawonDTO login(Map<String, String> map) {
	SawonDTO dto = dao.login(map);
	return dto;
}


public SawonDTO SawonRetrieve(String userid) {
	SawonDTO dto = dao.SawonRetrieve(userid);
	return dto;
}

public void sawonupdate(SawonDTO s) {
	dao.sawonupdate(s);
}

public List<SawonDTO> list(String userid) {
	List<SawonDTO> list = dao.list(userid);
	return list;
}


public void sawonDelete(SawonDTO dto) {
	dao.sawonDelete(dto);
}

//public List<SawonDTO> sawonlist(SawonPageDTO spdto) {
//	List<SawonDTO> sawonlist = dao.sawonlist(spdto);
//	return sawonlist;
//}





}
