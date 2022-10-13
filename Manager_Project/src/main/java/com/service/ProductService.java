package com.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProductDAO;
import com.dto.ProductDTO;

@Service
public class ProductService {
	@Autowired
	ProductDAO dao;

	public List<ProductDTO> list(String userid) {
		List<ProductDTO> list = dao.list(userid);
		return list;
	}

	public void productadd(ProductDTO dto) {
		dao.productadd(dto);
		}

	public ProductDTO productRetrieve(String pdno) {
		ProductDTO dto= dao.productRetrieve(pdno);
		return dto;
	}

	public void productUpdate(ProductDTO m) {
		dao.productUpdate(m);		
	}

	public void productDelete(ProductDTO dto) {
		dao.productDelete(dto);
		}
	
}
