package com.interiors.app.controller;

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

import com.interiors.app.manager.PartyManager;
import com.interiors.app.manager.impl.PartyManagerImpl;
import com.interiors.app.valueobjects.PartyInfo;
import com.interiors.app.valueobjects.SearchPartyForm;

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
	public ModelAndView addUser(ModelAndView modelAndView, HttpSession session)
	{
		
		modelAndView.setViewName("addUser");
		return modelAndView;
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
	
	
	/*public String getPartnerSearchList(String partnerString,String orderType,String isCode,HttpSession session){
		
		List<PartySearchInfo> partySearchInfos = new ArrayList<PartySearchInfo>();
		OperatingParamsSearchInfo operatingParamsSearchInfo = (OperatingParamsSearchInfo) session.getAttribute("OPERATING_PARAM_SEARCH");
		String businessUnitID = operatingParamsSearchInfo.getSelectedBusinessUnitId();
		
		partySearchInfos = partnerSearchDaoOPDS.getPartnerSearchListFromOPDS(partnerString, orderType,isCode,businessUnitID);
	
		List<Map<String, String>> partySearchList = new ArrayList<Map<String, String>>();
		for (PartySearchInfo partySearch : partySearchInfos)
		{
			Map<String, String> partySearchMap = new HashMap<String, String>();
			partySearchMap.put("code", partySearch.getPartyId());
			partySearchMap.put("custName",partySearch.getCustomerName());
			partySearchMap.put("status", partySearch.getDoNotTransactFlag());
			partySearchList.add(partySearchMap);
		}
		Gson gson = new Gson();
		String partySearchResponseObject = gson.toJson(partySearchList);
		return partySearchResponseObject;
		
	}*/
	
}
