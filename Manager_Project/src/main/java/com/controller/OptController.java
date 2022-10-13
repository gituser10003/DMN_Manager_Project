package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.OptDTO;
import com.dto.SawonDTO;
import com.service.OptService;

@Controller
public class OptController {
	@Autowired
	OptService service;

	@RequestMapping(value ="/loginCheck/OptList")
	public String OptList(RedirectAttributes attr, HttpSession session) {
		SawonDTO dto = (SawonDTO)session.getAttribute("login");
		String userid = dto.getUserid();
		List<OptDTO> OptList = service.OptList(userid);
		attr.addFlashAttribute("OptList", OptList);
		return "redirect:../OptList";
	}
	@RequestMapping("/loginCheck/OptAdd")
	public String OptAdd(OptDTO dto) {//list.jsp
		System.out.println(dto+"add() 호출=====");
		service.OptAdd(dto);
		return "redirect:../loginCheck/OptList";
	}
	
	@RequestMapping("/optedit")
	@ModelAttribute("optedit") //key값
	public OptDTO optedit(@RequestParam("optno") String optno) {
		OptDTO dto= service.optedit(optno);
		return dto;		
	}
	@RequestMapping(value = "/loginCheck/optUpdate")
	public String optUpdate(OptDTO dto) {
		service.optUpdate(dto);
		return "redirect:../loginCheck/OptList";
	}
	
	@RequestMapping(value = "/loginCheck/optDelete", method = RequestMethod.POST)
	public String optDelete(OptDTO dto) {
		System.out.println(dto);
		service.optDelete(dto);
		return "redirect:../loginCheck/OptList";
	}
	
}
