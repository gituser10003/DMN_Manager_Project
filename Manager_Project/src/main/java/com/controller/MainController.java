package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.service.SawonService;

@Controller
public class MainController {
@Autowired
SawonService service;

//@RequestMapping("/")
//public String main() {
//		return "main";
//}

}