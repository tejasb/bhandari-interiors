package com.interiors.app.controller;

import java.util.Set;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.interiors.app.security.service.CustomUserDetailsService;

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
	
	/**
	  * Handles and retrieves the login JSP page
	  * 
	  * @return the name of the JSP page
	  */
	 @RequestMapping(value = "/login", method = RequestMethod.GET)
	 public String getLoginPage(@RequestParam(value="error", required=false) boolean error, 
	   ModelMap model) {
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
	 
	      model.addAttribute("username", name);
		 System.out.println("Inside Login Method controller");
		 System.out.println("UserName:- " + name);
		 
	  if (error == true) {
	   // Assign an error message
	   model.put("error", "You have entered an invalid username or password!");
	  } else {
	   model.put("error", "");
	  }
	   
	  // This will resolve to /WEB-INF/jsp/loginpage.jsp
	  return "index";
	 }
	 
	 
	  
	 /**
	  * Handles and retrieves the denied JSP page. This is shown whenever a regular user
	  * tries to access an admin only page.
	  * 
	  * @return the name of the JSP page
	  */
	 @RequestMapping(value = "/denied", method = RequestMethod.GET)
	  public String getDeniedPage() {
	  //logger.debug("Received request to show denied page");
	   
	  // This will resolve to /WEB-INF/jsp/deniedpage.jsp
	  return "deniedpage";
	 }
}
