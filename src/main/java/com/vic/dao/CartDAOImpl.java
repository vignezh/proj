package com.vic.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vic.model.Cart;
import com.vic.model.UserDetails;

@Repository
public class CartDAOImpl implements CartDAO{
@Autowired
private SessionFactory sf;
@Override
public void add(Cart ct, String usname){
	System.out.println("adding");
	List<UserDetails> udl=sf.getCurrentSession().createQuery("from UserDetails where user_name='"+usname+"'").list();
	System.out.println("okay");
	for(int i=0;i<udl.size();i++)
	{
		UserDetails d=(UserDetails) udl.get(i);
		d.setCt(ct);
		
	}
System.out.println("making to add the product");
sf.getCurrentSession().save(ct);
System.out.println("added the item");
}
@Override
public void update(Cart ct) {
	sf.getCurrentSession().update(ct);
}
@Override
public Cart getProductById(int id) {
	System.out.println((Cart)sf.getCurrentSession().get(Cart.class, id));
	return (Cart)sf.getCurrentSession().get(Cart.class, id);
}
@Override
public void delete(int id) {
	System.out.println("Item Delete");
	sf.getCurrentSession().delete(getProductById(id));
	
}

@Override
public List getAllProduct() {
	System.out.println("getting all product in cart");
	return sf.getCurrentSession().createQuery("from CART").list();

}

}
