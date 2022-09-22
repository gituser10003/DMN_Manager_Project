package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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

}
