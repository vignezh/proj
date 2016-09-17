package com.vic.dao;

import java.util.List;

import com.vic.model.Cart;

public interface CartDAO {

	public void add(Cart ct,String usname);
	public List getAllProduct();
	public Cart getProductById(int id);
	public void update(Cart ct);
	public void delete(int id);

}
