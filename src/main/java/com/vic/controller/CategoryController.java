package com.vic.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vic.model.Product;
import com.vic.service.ProductService;

@Controller
public class CategoryController {
@Autowired(required=true)
private ProductService prsr;
@RequestMapping(value="/formals")
public String form(Map<String,Object>map)
{
	Product productResult=new Product();
	map.put("product",productResult);
    map.put("productList", prsr.getAllFormals());
  System.out.println(productResult);
	return "viewall";
}
@RequestMapping(value="/casuals")
public String casu(Map<String,Object>map)
{
	Product productResult=new Product();
	map.put("product",productResult);
    map.put("productList", prsr.getAllCasuals());
  System.out.println(productResult);
	return "viewall";
}
public String spor(Map<String,Object>map)
{
	Product productResult=new Product();
	map.put("product",productResult);
    map.put("productList", prsr.getAllSports());
  System.out.println(productResult);
	return "viewall";
}

}
