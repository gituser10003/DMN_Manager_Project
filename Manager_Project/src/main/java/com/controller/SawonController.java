package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	@RequestMapping(value = "/loginCheck/sawonlist")
	public String list(RedirectAttributes attr, HttpSession session) {
		SawonDTO dto = (SawonDTO)session.getAttribute("login");
		String userid = dto.getUserid();
		List<SawonDTO> sawonlist = service.list(userid);
		attr.addFlashAttribute("list", sawonlist);
		return "redirect:../sawonlist";
	}
	
	@RequestMapping("/SawonRetrieve")//SawonRetrieve.jsp
	@ModelAttribute("SawonRetrieve")//key값
	public SawonDTO SawonRetrieve(@RequestParam("userid") String userid) {
		SawonDTO dto = service.SawonRetrieve(userid);
		System.out.println(userid);
		return dto;
	}
	
	@RequestMapping(value="/loginCheck/sawonupdate")
	public String sawonupdate(SawonDTO s) {
		service.sawonupdate(s);
		return "redirect:../loginCheck/sawonlist";
	}

	@RequestMapping(value = "/loginCheck/sawonDelete", method = RequestMethod.POST)
	public String sawonDelete(SawonDTO dto) {
		System.out.println(dto);
		service.sawonDelete(dto);
		return "redirect:../loginCheck/sawonlist";
	}


}
