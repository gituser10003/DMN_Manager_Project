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

import com.dto.ProductDTO;
import com.dto.SawonDTO;
import com.service.ProductService;


@Controller
public class ProductController {
	@Autowired
	ProductService service;
	
	
	@RequestMapping(value ="/loginCheck/ProductList")
	public String list(RedirectAttributes attr, HttpSession session) {
		SawonDTO dto = (SawonDTO)session.getAttribute("login");
		String userid = dto.getUserid();
		List<ProductDTO> productlist = service.list(userid);
		attr.addFlashAttribute("ProductList", productlist);
		return "redirect:../ProductList";
	}
	@RequestMapping("/loginCheck/ProductAdd")
	public String ProductAdd(ProductDTO dto) {//list.jsp
		System.out.println(dto+"add() 호출=====");
		service.productadd(dto);
		return "redirect:../loginCheck/ProductList";
	}
	
	@RequestMapping("/Productedit")//productedit.jsp
	@ModelAttribute("productRetrieve") //key값
	public ProductDTO productRetrieve(@RequestParam("pdno") String pdno) {
		ProductDTO dto= service.productRetrieve(pdno);
		return dto;		
	}
	@RequestMapping(value = "/loginCheck/productUpdate")
	public String productUpdate(ProductDTO m) {
		service.productUpdate(m);
		return "redirect:../loginCheck/ProductList";
	}
	
	@RequestMapping(value = "/loginCheck/productDelete", method = RequestMethod.POST)
	public String productDelete(ProductDTO dto) {
		System.out.println(dto);
		service.productDelete(dto);
		return "redirect:../loginCheck/ProductList";
	}
}
