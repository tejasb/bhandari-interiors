package com.interiors.app.valueobjects;

public class SearchPartyForm {
	private int partyId;
	private String partyName;
	private String partyTypeId;
	private String partyDetailTypeId;
	public int getPartyId() {
		return partyId;
	}
	public void setPartyId(int partyId) {
		this.partyId = partyId;
	}
	public String getPartyName() {
		return partyName;
	}
	public void setPartyName(String partyName) {
		this.partyName = partyName;
	}
	public String getPartyTypeId() {
		return partyTypeId;
	}
	public void setPartyTypeId(String partyTypeId) {
		this.partyTypeId = partyTypeId;
	}
	public String getPartyDetailTypeId() {
		return partyDetailTypeId;
	}
	public void setPartyDetailTypeId(String partyDetailTypeId) {
		this.partyDetailTypeId = partyDetailTypeId;
	}
}
