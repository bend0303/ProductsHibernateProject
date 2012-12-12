package com.hibernate.bend.model;

import java.util.ArrayList;

public interface IProductDAO {

	public abstract void addProduct(Product ob);
	public abstract void delProduct(int pId);
	public abstract Product getProductById(int pId);
	public abstract ArrayList<Product> getProdcts();
}
