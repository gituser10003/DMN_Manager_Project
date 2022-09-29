package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dto.SawonDTO;
import com.service.SawonService;

@Controller
public class SawonController {
	@Autowired
	SawonService service;

	@RequestMapping(value = "/sawonAdd")
	public String sawonAdd(SawonDTO s, Model model) {
		service.sawonAdd(s);
		model.addAttribute("success",s.getUserid()+"님 회원가입성공");
		return "main";
	}
}
