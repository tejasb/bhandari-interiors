package com.interiors.app.interceptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.interiors.app.valueobjects.Menu;

public class MDCInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		String userName = (String) session.getAttribute("username");
		String domainName = "nodomain";

		if (userName == null || userName == "anonymousUser" || userName == "") {
			Authentication auth = SecurityContextHolder.getContext()
					.getAuthentication();
			String name = auth.getName();
			if (name.equalsIgnoreCase("anonymousUser")) {
				session.setAttribute("username", null);
			} else {
				session.setAttribute("username", name);
			}
			
			Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) auth.getAuthorities();
			authorities.iterator().hasNext();
			for (Iterator<GrantedAuthority> authority = authorities.iterator(); authority
					.hasNext();) {
				GrantedAuthority sga = authority.next();
				System.out.println("USER- ROLE -->" + sga.getAuthority());
				if (sga.getAuthority().equalsIgnoreCase("ROLE_ADMIN")) {
					session.setAttribute("ROLE", "ROLE_ADMIN");
					break;
				} else if (sga.getAuthority().equalsIgnoreCase("ROLE_USER")) {
					session.setAttribute("ROLE", "ROLE_USER");
					break;
				}
			}
		}
		
		Map<String, Menu> menuMap = null;
  	    if (session.getAttribute("MENU_LIST") != null) {
  	    	menuMap = (Map<String, Menu>) session.getAttribute("MENU_LIST");
  	  	    setMenuForUser(menuMap, session);

  	    } else {
  	    	menuMap = getMenuList();
  	  	    setMenuForUser(menuMap, session);
  	    	session.setAttribute("MENU_LIST", menuMap);
  	    }
  	    
		return true;
	}
	
	private void setMenuForUser(Map<String, Menu> menuMap,
			HttpSession session) {
		
		if (session.getAttribute("ROLE") !=  null) {
			String userRole = (String) session.getAttribute("ROLE");
		  if (userRole.equalsIgnoreCase("ROLE_ADMIN")) {
			  	Menu menu6 = new Menu();
	            menu6.setLabel("Operations");
	            menu6.setHref("operations");

	            menuMap.put("Operations", menu6);
	        } else if (userRole.equalsIgnoreCase("ROLE_USER")) {
	        	Menu menu7 = new Menu();
	        	menu7.setLabel("Track Order");
	            menu7.setHref("trackOrder");

	            menuMap.put("Track Order", menu7);
	        }
		}
	}
	
	private Map<String,Menu> getMenuList() {
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
        menu3.setHref("contactUs");
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
        
       /* if (session.getAttribute("ROLE") !=  null && 
        		((String) session.getAttribute("ROLE")).equalsIgnoreCase("ROLE_ADMIN")) {
            menu6.setLabel("Operations");
            menu6.setHref("operations");

            menuMap.put("Operations", menu6);
        	menuList.add(menu6);
        }
    	  */
		return menuMap;
	}
}