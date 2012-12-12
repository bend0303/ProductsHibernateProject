package com.hibernate.bend.model;

import java.util.ArrayList;

import javax.servlet.http.HttpServlet;

public class ProductDelegate {
	
	public ProductDelegate() {
		// TODO Auto-generated constructor stub
	}
	public ArrayList<Product> getProducts() {
		ProductsDAO pDao = ProductsDAO.getInstance();
		ArrayList<Product> products = pDao.getProdcts();
		return products;
	}
	
	public void delSingleProduct(int id) {
		ProductsDAO dao = ProductsDAO.getInstance();
		dao.delProduct(id);
	}
	
	//public void delProduct
}
