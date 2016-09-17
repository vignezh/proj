package com.vic.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity(name="CART")
public class Cart {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private double total;
	private int quantity;
	@ManyToOne(fetch=FetchType.EAGER,targetEntity=Product.class)
	private Product prd;
	 
	//getter and setter for the above details
	 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Product getPrd() {
		return prd;
	}
	public void setPrd(Product prd) {
		this.prd = prd;
	}
	
	
}
