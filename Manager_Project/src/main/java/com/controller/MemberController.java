package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.MemberDTO;
import com.dto.SawonDTO;
import com.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	MemberService service;

	@RequestMapping(value ="/loginCheck/memberlist")
	public String list(RedirectAttributes attr, HttpSession session) {
		SawonDTO dto = (SawonDTO)session.getAttribute("login");
		String userid = dto.getUserid();
		List<MemberDTO> memberlist = service.list(userid);
		attr.addFlashAttribute("memberlist", memberlist);
		return "redirect:../memberlist";
	}
	@RequestMapping("/loginCheck/memberadd")
	public String memberadd(MemberDTO dto) {//list.jsp
		System.out.println(dto+"add() 호출=====");
		service.memberadd(dto);
		return "redirect:../memberlist";
	}
	
	@RequestMapping("/memberedit")//memberedit.jsp
	@ModelAttribute("memberRetrieve") //key값
	public MemberDTO memberRetrieve(@RequestParam("memno") String memno) {
		MemberDTO dto= service.memberRetrieve(memno);
		return dto;		
	}
	@RequestMapping(value = "/loginCheck/memberUpdate")
	public String memberUpdate(MemberDTO m) {
		service.memberUpdate(m);
		return "redirect:../loginCheck/memberlist";
	}
	
}
