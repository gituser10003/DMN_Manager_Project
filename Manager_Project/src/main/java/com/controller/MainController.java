package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.SawonService;

@Controller
public class MainController {
@Autowired
SawonService service;

@RequestMapping("/main")
public String main() {
		return "main";//main.jsp
}

@RequestMapping("/main2")
public String main2() {
		return "main";//main.jsp
}

@RequestMapping("/main3")
public String main3() {
		return "main";//main.jsp
}

@RequestMapping("/main4")
public String main4() {
		return "main";//main.jsp
}

@RequestMapping("/main5")
public String main5() {
		return "main";//main.jsp
}

}
