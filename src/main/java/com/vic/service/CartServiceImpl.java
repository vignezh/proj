package com.vic.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vic.dao.CartDAO;
import com.vic.model.Cart;

@Service
public class CartServiceImpl implements CartService{
@Autowired
private CartDAO cartdao;
@Transactional
public void add(Cart ct,String usname) {
	System.out.println("cart service adding process");
	cartdao.add(ct,usname);
}

@Transactional
public List getAllProduct() {
	return cartdao.getAllProduct();
}

@Transactional
public Cart getProductById(int id) {
	
	return cartdao.getProductById(id);
}

@Transactional
public void update(Cart cart) {
	cartdao.update(cart);
}

@Transactional
public void delete(int id) {
	 cartdao.delete(id);
}

}
