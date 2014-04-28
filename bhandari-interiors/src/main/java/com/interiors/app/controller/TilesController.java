package com.interiors.app.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.interiors.app.valueobjects.Menu;
import com.interiors.app.valueobjects.MenuList;

@Controller
public class TilesController {
	@RequestMapping(value = "/tiles", method = { RequestMethod.GET, RequestMethod.POST })
	public String gallery(HttpSession session)
	{
		System.out.println("Inside Gallery Controller");
        //modelAndView.addObject("username", session.getAttribute("username"));
		
        System.out.println("home");
        
//        List<Menu> menuList =  getMenuList(session);
        Map<String, Menu> menuMap = getMenuList(session);
        Menu menu = menuMap.get("Home");
        menu.setStyle("color:'#FFA500;'");
        
        session.setAttribute("MENU_LIST", menuMap);
		return "home";
	}
	
	private Map<String,Menu> getMenuList(HttpSession session) {
		List<Menu> menuList = new ArrayList<Menu>();
		Map<String, Menu> menuMap = new LinkedHashMap<String, Menu>();
		
        Menu menu1 = new Menu();
        Menu menu2 = new Menu();
        Menu menu3 = new Menu();
        Menu menu4 = new Menu();
        Menu menu5 = new Menu();
        Menu menu6 = new Menu();
        
        menu1.setLabel("Home");
        menu1.setHref("welcome");
        menu2.setLabel("Gallery");
        menu2.setHref("gallery");
        menu3.setLabel("Contact Us");
        menu3.setHref("contactus");
        menu4.setLabel("Services");
        menu4.setHref("services");
        menu5.setLabel("Support");
        menu5.setHref("support");
        
        menuMap.put("Home", menu1);
        menuMap.put("Gallery", menu2);
        menuMap.put("Contact Us", menu3);
        menuMap.put("Services", menu4);
        menuMap.put("Support", menu5);
        menuList.add(menu1);
        menuList.add(menu2);
        menuList.add(menu3);
        menuList.add(menu4);
        menuList.add(menu5);
        
        if (session.getAttribute("ROLE") !=  null && 
        		((String) session.getAttribute("ROLE")).equalsIgnoreCase("ROLE_ADMIN")) {
            menu6.setLabel("Operations");
            menu6.setHref("operations");

            menuMap.put("Operations", menu6);
        	menuList.add(menu6);
        }
    	  
		return menuMap;
	}
}
