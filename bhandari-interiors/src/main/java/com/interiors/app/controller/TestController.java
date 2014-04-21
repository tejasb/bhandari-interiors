package com.interiors.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.interiors.app.dap.mapper.TestManager;


@Controller
public class TestController {
	
	//@Autowired
	private TestManager testManager;
	
	@RequestMapping(value = "/access", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody String accessManager(ModelAndView modelAndView, String userName, String password) {
		System.out.println("Inside the Controller");
		System.out.println("UserName:" + userName);
		System.out.println("password:" + password);
		
		String result = testManager.checkLogin(userName, password);
		return result;
	}
	
}
