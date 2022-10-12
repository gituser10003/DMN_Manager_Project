package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.SawonService;

@Controller
public class ProductController {
	@Autowired
	SawonService service;
	
	
	@RequestMapping("/ProductList")
	public String ProductList() {
		return "ProductList";
	}
}
