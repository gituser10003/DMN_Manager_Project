package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dto.SawonDTO;
import com.service.SawonService;

@Controller
public class MainController {
@Autowired
SawonService service;

//@RequestMapping("/") 
//public ModelAndView sawonList() {
//	  List<SawonDTO> list= service.sawonList("top");
//	  ModelAndView mav= new ModelAndView();
//	  mav.addObject("sawonList", list);
//	  //request.setAttribute("goodsList", list)와 동일
//	  mav.setViewName("main");//main.jsp
//	  return mav;	  
//}
@RequestMapping("/list")
public String list(Model m) {//list.jsp
System.out.println("list() 호출=====");
List<SawonDTO> list=service.list();
System.out.println(list);
m.addAttribute("list", list);
return "list";
}
}
