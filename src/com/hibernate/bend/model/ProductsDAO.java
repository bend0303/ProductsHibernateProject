package com.hibernate.bend.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.mapping.List;

public class ProductsDAO implements IProductDAO {

	private Collection<Product> products;
	private static ProductsDAO instance = null;
	
	
	private ProductsDAO() {
		// TODO Auto-generated constructor stub
	}
	
	private Product findProduct(double id) {
		Iterator<Product> iter = products.iterator();
		
		while (iter.hasNext()) {
			if (((Product) iter).getProductId() == id)
				return (Product) iter;
		}
		return null;
	}
	
	 public static ProductsDAO getInstance(){
		if (instance == null){
			instance = new ProductsDAO();
		}
		return instance;
	}
	@Override
	public void addProduct(Product ob) {
		SessionFactory factory = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();
		session.save(ob);
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public void delProduct(double pId) {
		Product p = findProduct(pId);
		
		if (p != null)
			products.remove(p);

	}

	@Override
	public ArrayList<Product> getProdcts() {
		try {
		SessionFactory factory = new AnnotationConfiguration().configure().buildSessionFactory();
		Session anotherSession = factory.openSession();
		anotherSession.beginTransaction();
		ArrayList<Product> products =  (ArrayList<Product>) anotherSession.createQuery("from Product").list();
		return products;
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	
}
