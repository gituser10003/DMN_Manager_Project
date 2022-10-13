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

import com.dto.CategoryDTO;
import com.dto.SawonDTO;
import com.service.CategoryService;

@Controller
public class CategoryController {
	@Autowired
	CategoryService service;

	@RequestMapping(value ="/loginCheck/categorylist")
	public String categorylist(RedirectAttributes attr, HttpSession session) {
		SawonDTO dto = (SawonDTO)session.getAttribute("login");
		String userid = dto.getUserid();
		List<CategoryDTO> categorylist = service.categorylist(userid);
		attr.addFlashAttribute("categorylist", categorylist);
		return "redirect:../categorylist";
	}
	@RequestMapping("/loginCheck/categoryadd")
	public String categoryadd(CategoryDTO dto) {//list.jsp
		System.out.println(dto+"add() 호출=====");
		service.categoryadd(dto);
		return "redirect:../loginCheck/categorylist";
	}
	
	@RequestMapping("/categoryedit")//memberedit.jsp
	@ModelAttribute("categoryedit") //key값
	public CategoryDTO categoryedit(@RequestParam("ctno") String ctno) {
		CategoryDTO dto= service.categoryedit(ctno);
		return dto;		
	}
	@RequestMapping(value = "/loginCheck/categoryUpdate")
	public String categoryUpdate(CategoryDTO m) {
		service.categoryUpdate(m);
		return "redirect:../loginCheck/categorylist";
	}
	
	@RequestMapping(value = "/loginCheck/categoryDelete", method = RequestMethod.POST)
	public String categoryDelete(CategoryDTO dto) {
		System.out.println(dto);
		service.categoryDelete(dto);
		return "redirect:../loginCheck/categorylist";
	}
	
}
