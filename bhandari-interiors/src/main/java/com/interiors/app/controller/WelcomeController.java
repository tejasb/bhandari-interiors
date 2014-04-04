package com.interiors.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WelcomeController {

	@RequestMapping(value = "/welcome", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView welcome(ModelAndView modelAndView)
	{
		System.out.println("Inside Controller");
		modelAndView.setViewName("index");
		return modelAndView;
	}
	
	@RequestMapping(value = "/gallery", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView gallery(ModelAndView modelAndView)
	{
		System.out.println("Inside Gallery Controller");
		modelAndView.setViewName("Gallery");
		return modelAndView;
	}
}
