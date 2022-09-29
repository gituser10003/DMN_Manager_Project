package com.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
	@@ -14,9 +13,15 @@ public class SawonService {
@Autowired
SawonDAO dao;

public void sawonAdd(SawonDTO s) {
	dao.sawonAdd(s);
}

public SawonDTO login(Map<String, String> map) {
	SawonDTO dto = dao.login(map);
	return dto;
}
