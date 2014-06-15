package com.interiors.app.controller;

import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.interiors.app.manager.PartyManager;
import com.interiors.app.manager.impl.PartyManagerImpl;
import com.interiors.app.valueobjects.PartyInfo;
import com.interiors.app.valueobjects.PartySearchInfo;
import com.interiors.app.valueobjects.SearchPartyForm;
import com.interiors.app.valueobjects.UserInfo;

@Controller
public class PartyController {
	
	@Autowired
	public PartyManager partyManager;
	
	@Autowired
	public DataSource datasource;
	
	@RequestMapping(value = "/addParty", method = { RequestMethod.GET, RequestMethod.POST })
	public @ResponseBody 
	String addParty(@ModelAttribute PartyInfo partyInfo, ModelAndView modelAndView, HttpSession session)
	{
		//System.out.println("datasource "+ datasource);
		String jsonResponse = "";
		Integer partyId = partyManager.insertParty(partyInfo);
		if (partyId != null && partyId != 0) {
			jsonResponse = "{\"IS_ERROR\":\"false\",\"PARTY_ID\": \"" + partyId
				+ "\",\"MESSAGE\":\"Party added successfully.\"}";
		} else {
			jsonResponse = "{\"IS_ERROR\":\"true\",\"PARTY_ID\": \"" + partyId
				+ "\",\"MESSAGE\":\"Party cannot be created. Please try again or contact service desk\"}";
		}
		return jsonResponse;
	}
	
	@RequestMapping(value = "/addUser", method = { RequestMethod.GET, RequestMethod.POST })
	public @ResponseBody 
	String addUser(@ModelAttribute UserInfo userInfo, ModelAndView modelAndView, HttpSession session)
	{
		Integer userId = 0;
		String jsonResponse = "";
		try {
			userId = partyManager.addUser(userInfo);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		if (userId != null && userId != 0) {
			jsonResponse = "{\"IS_ERROR\":\"false\",\"USER_ID\": \"" + userId
				+ "\",\"MESSAGE\":\"User added successfully.\"}";
		} else {
			jsonResponse = "{\"IS_ERROR\":\"true\",\"USER_ID\": \"" + userId
				+ "\",\"MESSAGE\":\"User cannot be created. Please try again or contact service desk\"}";
		}
		return jsonResponse;
	}

	
	@RequestMapping(value = "/Party", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView getParty(@RequestParam(value="operation", required=true) String operation, HttpSession session,
			ModelAndView modelAndView)
	{
		System.out.println("Operation Selected --> " + operation);
		modelAndView.addObject("PAGE", "Operations");
		modelAndView.setViewName(operation);
		return modelAndView;
	}
	
	@RequestMapping(value = "/getPartySearchList", method = { RequestMethod.GET, RequestMethod.POST })
	public @ResponseBody
	String getPartySearchList(ModelAndView modelAndView, HttpSession session, 
			@RequestParam(value="term", required=true) String term)
	{
		//return partySearchManager.getPartnerSearchList(partnerString, orderType,isCode,session);
		int userId = 0;
		System.out.println("Inside Party Search List and Party String is--> ");
		String partyString = "Tejas";
		String isCode = "false";
	/*	return  "{\"IS_ERROR\":\"true\",\"USER_ID\": \"" + userId
				+ "\",\"MESSAGE\":\"User cannot be created. Please try again or contact service desk\"}";*/
		//return partyManager.getPartySearchList(partyString, isCode);
		
		return "[{'value': 'Tejas', 'label': 'Tejas', 'partyName' : 'Tejas','partyId': '1'}]";
				
		
	}

	
	@RequestMapping(value = "/searchPartyQuery", method = { RequestMethod.GET, RequestMethod.POST })
	public String getPartySearch(@ModelAttribute SearchPartyForm searchPartyForm, HttpSession session,
			ModelAndView modelAndView)
	{
		/*System.out.println("Operation Selected --> " + operation);
		modelAndView.addObject("PAGE", "Operations");
		modelAndView.setViewName(operation);*/
		System.out.println("Search party Form"); 
		List<PartyInfo> partyInfoList = partyManager.searchParty(searchPartyForm);
		/*List<Map<String, String>> partySearchList = new ArrayList<Map<String, String>>();
		for (PartySearchInfo partySearch : partySearchInfos)
		{
			Map<String, String> partySearchMap = new HashMap<String, String>();
			partySearchMap.put("partyId", partySearch.getPartyId());
			partySearchMap.put("partyName",partySearch.getPartyName());
			partySearchList.add(partySearchMap);
		}*/
		Gson gson = new Gson();
		String partyData = gson.toJson(partyInfoList);
		Map<String, String> responseMap = new HashMap<String, String>();
		responseMap.put("IS_ERROR", "false");
		responseMap.put("SEARCH_DATA", partyData);
		String partySearchResponseObject = gson.toJson(responseMap);
		int userId = 0;
		return "{\"IS_ERROR\":\"false\",\"USER_ID\": \"" + userId
				+ "\",\"MESSAGE\":\"User cannot be created. Please try again or contact service desk\"}";
	}
	
	
}
