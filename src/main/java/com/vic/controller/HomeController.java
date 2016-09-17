package com.vic.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@RequestMapping(value = { "/", "/index" })
	public String home() {
		return "index";
	}

	/*@RequestMapping(value = "/product")
	public String prod() {
		return "product";
	}*/
	
	/*@RequestMapping(value = "/cart")
	public String cart() {
		return "cart";
	}*/

	@RequestMapping(value = "/upload")
	public String file() {
		return "uploadFile";
	}

	@RequestMapping(value = "/register")
	public String reg() {
		return "register";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView sign() {
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}

	@RequestMapping(value = "/verify", method = RequestMethod.POST)
	public ModelAndView model(HttpServletRequest req) {
		String uname = req.getParameter("username");
		String pwd = req.getParameter("password");
		if ((uname.equals("admin")) && (pwd.equals("password"))) {
			ModelAndView mv = new ModelAndView("admin");
			return mv;
		} else {
			ModelAndView mv = new ModelAndView("login");
			return mv;
		}
	}

	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView accesssDenied() {
		ModelAndView model = new ModelAndView();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails usd = (UserDetails) auth.getPrincipal();
			System.out.println(usd);
			model.addObject("username", usd.getUsername());
		}
		model.setViewName("403");
		return model;
	}

}
