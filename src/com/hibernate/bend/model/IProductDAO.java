package com.hibernate.bend.model;

import java.util.ArrayList;

public interface IProductDAO {

	public abstract void addProduct(Product ob);
	public abstract void delProduct(double pId);
	public abstract ArrayList<Product> getProdcts();
}
