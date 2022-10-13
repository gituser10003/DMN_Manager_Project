package com.dao;

import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.ProductDTO;

@Repository
public class ProductDAO {
	@Autowired
	SqlSessionTemplate session; //자동주입

	public List<ProductDTO> list(String userid) {
		List<ProductDTO> list = session.selectList("ProductMapper.list", userid);
		return list;
	}

	public void productadd(ProductDTO dto) {
		int n=session.insert("ProductMapper.ProductAdd", dto);
		System.out.println("insert 갯수"+n);
	}

	public ProductDTO productRetrieve(String pdno) {
		ProductDTO dto= session.selectOne("ProductMapper.ProductRetrieve", pdno);
		return dto;
	}

	public void productUpdate(ProductDTO m) {
		session.update("ProductMapper.ProductUpdate", m);		
	}

	public void productDelete(ProductDTO dto) {
		int n= session.delete("ProductMapper.ProductDel", dto);
	}
	
}
