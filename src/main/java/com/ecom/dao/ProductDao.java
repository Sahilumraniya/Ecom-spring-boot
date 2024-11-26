package com.ecom.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ecom.bean.ProductBean;

@Repository
public class ProductDao {
	
	@Autowired
	JdbcTemplate stmt;
	
	public void addProduct(ProductBean product) {
		try {
			stmt.update("INSERT INTO products (productName,category,price,qty,productImagePath) VALUES (?,?,?,?,?)",product.getProductName(),product.getCategory(),product.getPrice(),product.getQty(),product.getProductImagePath());
			
		}catch(Exception e) {
			System.out.println("ERROR :: PRODUCT DAO :: addProduct");
			e.printStackTrace();
		}
	}
	
	public ProductBean getProductById(Integer productId) {
		try {
			return stmt.queryForObject("SELECT * FROM products WHERE productId = ?", new BeanPropertyRowMapper<ProductBean>(ProductBean.class),new Object[] { productId });
		}catch(Exception e) {
			System.out.println("ERROR :: PRODUCT DAO :: getAllProduct");
			e.printStackTrace();
		}
		return null;
	}
	
	public List<ProductBean> getAllProduct(){
		try {
			return stmt.query("SELECT * FROM products", new BeanPropertyRowMapper<ProductBean>(ProductBean.class));
		}catch(Exception e) {
			System.out.println("ERROR :: PRODUCT DAO :: getAllProduct");
			e.printStackTrace();
		}
		return null;
	}
	
	public void deleteProduct(Integer productId) {
		try {
			stmt.update("DELETE FROM products WHERE productId = ?",productId);
		}catch(Exception e) {
			System.out.println("ERROR :: PRODUCT DAO :: deleteProduct");
			e.printStackTrace();
		}
	}
}
