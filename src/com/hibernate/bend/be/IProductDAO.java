package com.hibernate.bend.be;

import java.util.ArrayList;

import com.hibernate.bend.fe.Product;


public interface IProductDAO {

	public abstract void addProduct(Product ob);
	public abstract void delProduct(int pId);
	public abstract Product getProductById(int pId);
	public abstract ArrayList<Product> getProdcts();
}
