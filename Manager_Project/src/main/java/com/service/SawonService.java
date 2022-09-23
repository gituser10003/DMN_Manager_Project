package com.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.SawonDAO;
import com.dto.SawonDTO;

@Service
public class SawonService {
@Autowired
SawonDAO dao;

public List<SawonDTO> list() {
	return dao.list();
}
//public List<SawonDTO> sawonList(String string) {
//	List<SawonDTO> list= dao.sawonList(gCategory);
//	return list;
//}

}
