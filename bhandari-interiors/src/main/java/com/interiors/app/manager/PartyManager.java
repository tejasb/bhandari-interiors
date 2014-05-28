package com.interiors.app.manager;

import java.util.List;

import com.interiors.app.valueobjects.PartyInfo;
import com.interiors.app.valueobjects.SearchPartyForm;

public interface PartyManager {
	public List<PartyInfo> searchParty(SearchPartyForm searchPartyForm);
	
	 public int insertParty(PartyInfo partyInfo);  
	 public List<PartyInfo> getPartyList();  
	 public void updatePARTY(PartyInfo partyInfo);  
	 public void deletePARTY(String partyId);  
	 public PartyInfo getParty(String partyId);
}
