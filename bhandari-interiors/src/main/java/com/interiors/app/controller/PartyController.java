package com.interiors.app.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.interiors.app.valueobjects.Menu;

@Controller
public class PartyController {
	
	@RequestMapping(value = "/addParty", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView addParty(ModelAndView modelAndView, HttpSession session)
	{
		
		modelAndView.setViewName("addParty");
		return modelAndView;
	}

	
	@RequestMapping(value = "/Party", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView getParty(@RequestParam(value="operation", required=true) String operation, HttpSession session,
			ModelAndView modelAndView)
	{
		System.out.println("Operation Selected --> " + operation);
		Map<String, Menu> menuMap = (Map<String, Menu>) session.getAttribute("MENU_LIST");
		
		modelAndView.addObject("PAGE", "Operations");
		modelAndView.setViewName(operation);
		return modelAndView;
	}
}
