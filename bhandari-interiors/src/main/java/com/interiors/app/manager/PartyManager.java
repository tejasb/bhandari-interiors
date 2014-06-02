package com.interiors.app.manager;

import java.security.NoSuchAlgorithmException;
import java.util.List;

import com.interiors.app.valueobjects.PartyInfo;
import com.interiors.app.valueobjects.SearchPartyForm;
import com.interiors.app.valueobjects.UserInfo;

public interface PartyManager {
	public List<PartyInfo> searchParty(SearchPartyForm searchPartyForm);
	
	 public int insertParty(PartyInfo partyInfo);  
	 public List<PartyInfo> getPartyList();  
	 public void updatePARTY(PartyInfo partyInfo);  
	 public void deletePARTY(String partyId);  
	 public PartyInfo getParty(String partyId);
	 public int addUser(UserInfo userInfo) throws NoSuchAlgorithmException;
	 public String getPartySearchList(String partyString, String isCode);
}
