package com.vic.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vic.model.Cart;
import com.vic.model.Product;
import com.vic.service.CartService;
import com.vic.service.ProductService;

@Controller
public class CartController {
	@Autowired
	private CartService catser;
	@Autowired
	private ProductService proser;
	private String username;

	@ModelAttribute
	public void getuserdata(HttpServletRequest req) {
		Authentication authen = SecurityContextHolder.getContext().getAuthentication();
		String name = authen.getName();
		HttpSession ses = req.getSession();
		ses.setAttribute("usr", name);
		username = (String) ses.getAttribute("usr");
		System.out.println((String) ses.getAttribute("usr"));
	}

	@RequestMapping("/cart")
	public String getcart(Model map) {
		Cart cart = new Cart();
		List<Cart> crt = catser.getAllProduct();
		map.addAttribute("cart", cart);
		map.addAttribute("cartList", catser.getAllProduct());
		return "cart";
	}

	@RequestMapping("addtocart/{productid}")
	public void addtocart(@PathVariable("productid") int id) {

		Cart cart = new Cart();
		Product pr = proser.getProduct(id);
		List<Cart> crt = catser.getAllProduct();
		System.out.println(crt);
		for (int i = 0; i < crt.size(); i++) {
			System.out.println("inside for loop");
			int tempid = crt.get(i).getPrd().getProductid();
			System.out.println(tempid);
			System.out.println(id);
			if (tempid == id) {
				System.out.println("inside if loop");
				int quantity = crt.get(i).getQuantity() + 1;
				crt.get(i).setQuantity(quantity);
				int price = pr.getProductprice() * quantity;
				crt.get(i).setTotal(price);
				System.out.println("update");
				catser.update(crt.get(i));
				return;
			}
		}

		cart.setQuantity(1);
		cart.setTotal(pr.getProductprice());
		cart.setPrd(pr);
		System.out.println("add");
		catser.add(cart, username);
	}

	@RequestMapping("delete/cart/{id}")
	public String delcart(@PathVariable("id") int id, ModelMap model) {
		System.out.println("item delete in cart");
		catser.delete(id);
		return "redirect:/cart";
	}

}
