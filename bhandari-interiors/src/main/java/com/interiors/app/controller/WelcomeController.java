package com.interiors.app.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.interiors.app.security.service.CustomUserDetailsService;
import com.interiors.app.valueobjects.Menu;

@Controller
public class WelcomeController {

	@RequestMapping(value = "/welcome", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView welcome(ModelAndView modelAndView, HttpSession session)
	{
		System.out.println("Inside Controller");
		System.out.println("User_role - " + session.getAttribute("ROLE"));
    	modelAndView.addObject("PAGE", "Home");
        modelAndView.setViewName("index");
		return modelAndView;
	}
	
	
	/*@RequestMapping(value = "/", method = { RequestMethod.GET })
	public ModelAndView initial(ModelAndView modelAndView, HttpSession session)
	{
		return welcome(modelAndView, session)
	}*/
	

	@RequestMapping(value = "/gallery", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView gallery(ModelAndView modelAndView, HttpSession session)
	{
		System.out.println("Inside Gallery Controller");
        //modelAndView.addObject("username", session.getAttribute("username"));
        System.out.println("username - gallery" + session.getAttribute("username"));
		modelAndView.addObject("PAGE", "Gallery");
        modelAndView.setViewName("gallery");
		return modelAndView;
	}
	
	@RequestMapping(value = "/contactUs", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView contactUs(ModelAndView modelAndView, HttpSession session)
	{
		System.out.println("Inside Contact Us Controller");
        //modelAndView.addObject("username", session.getAttribute("username"));
        System.out.println("username - Contact Us" + session.getAttribute("username"));
		modelAndView.addObject("PAGE", "Contact Us");
        modelAndView.setViewName("contactUs");
		return modelAndView;
	}
	
	@RequestMapping(value = "/services", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView services(ModelAndView modelAndView, HttpSession session)
	{
		System.out.println("Inside Contact Us Controller");
        //modelAndView.addObject("username", session.getAttribute("username"));
        System.out.println("username - Servicess" + session.getAttribute("username"));
		modelAndView.addObject("PAGE", "Services");
        modelAndView.setViewName("services");
		return modelAndView;
	}
	
	@RequestMapping(value = "/operations", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView operations(ModelAndView modelAndView, HttpSession session)
	{
		System.out.println("Inside Operations Controller");
		String username = (String) session.getAttribute("username");
        System.out.println("username - operations --> " + username);
  		modelAndView.addObject("PAGE", "Operations");
		modelAndView.setViewName("admin");
		return modelAndView;
	}
	
	/**
	  * Handles and retrieves the login JSP page
	  * 
	  * @return the name of the JSP page
	  */
	 @RequestMapping(value = "/login", method = RequestMethod.GET)
	 public ModelAndView getLoginPage(@RequestParam(value="error", required=false) boolean error, 
			 ModelAndView modelAndView, HttpSession session) {
	  //logger.debug("Received request to show login page");
	 
	  // Add an error message to the model if login is unsuccessful
	  // The 'error' parameter is set to true based on the when the authentication has failed. 
	  // We declared this under the authentication-failure-url attribute inside the spring-security.xml
	  /* See below:
	   <form-login 
	    login-page="/krams/auth/login" 
	    authentication-failure-url="/krams/auth/login?error=true" 
	    default-target-url="/krams/main/common"/>*/
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
         String name = auth.getName(); //get logged in username
         Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		 
         System.out.println("Inside Login Method controller");
		 System.out.println("UserName:- " + name);
		 
	  if (error == true) {
	   // Assign an error message
		  modelAndView.addObject("username", null);
		  modelAndView.addObject("error", "You have entered an invalid username or password!");
	  } else if (name.equalsIgnoreCase("anonymousUser")){
		  modelAndView.addObject("username", null);
		  modelAndView.addObject("error", "You do not have permission to access the page!!");
	  } else {
		  modelAndView.addObject("username", name);
		  modelAndView.addObject("error", "");
	  }
	  
  		modelAndView.addObject("PAGE", "Home");
  		modelAndView.setViewName("index");
		return modelAndView;
	 }

	 /**
	  * Handles and retrieves the denied JSP page. This is shown whenever a regular user
	  * tries to access an admin only page.
	  * 
	  * @return the name of the JSP page
	  */
	 @RequestMapping(value = "/denied", method = RequestMethod.GET)
	  public String getDeniedPage(ModelAndView modelAndView) {
	  //logger.debug("Received request to show denied page");
	   
	  // This will resolve to /WEB-INF/jsp/deniedpage.jsp
	  /*modelAndView.addObject("error", "You do not have sufficient privileges to access this page!!");
	  modelAndView.setViewName("index");*/
	  return "deniedPage";
	 }
	 
	 @RequestMapping(value = "/party", method = { RequestMethod.GET, RequestMethod.POST })
		public String partyOperations(@RequestParam (value="operation", required=false) String operation, 
				   ModelMap model, HttpSession session)
		{
		 	System.out.println("Inside party Operation. Operation Selected--> " + operation);
			return operation;
		}
}
