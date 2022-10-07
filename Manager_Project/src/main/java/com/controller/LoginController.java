package com.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dto.SawonDTO;
import com.service.SawonService;

@Controller
public class LoginController {
@Autowired
SawonService service;

@RequestMapping(value = "/login")
public String login(@RequestParam Map<String, String> map, Model model, HttpSession session) {
	SawonDTO dto = service.login(map);
	System.out.println(map);
	if(dto!= null ) {
		session.setAttribute("login", dto);
		return "Page2"; //Page2.jsp
	}else {
		model.addAttribute("mesg", "아이디 또는 비번이 잘못되었습니다.");
		return "main"; //Mainpage1.jsp
	}
	
}


}
