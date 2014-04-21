package com.interiors.app.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TilesController {
	@RequestMapping(value = "/tiles", method = { RequestMethod.GET, RequestMethod.POST })
	public String gallery()
	{
		System.out.println("Inside Gallery Controller");
        //modelAndView.addObject("username", session.getAttribute("username"));
        System.out.println("home");
		
		return "home";
	}
	
	@RequestMapping(value = "/contactUs", method = { RequestMethod.GET, RequestMethod.POST })
	public String contactUs()
	{
		System.out.println("Inside ContactUs Controller");
        //modelAndView.addObject("username", session.getAttribute("username"));
        System.out.println("ContactUs");
		
		return "ContactUs";
	}
}
