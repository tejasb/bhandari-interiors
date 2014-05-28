package com.interiors.app.valueobjects;

public class PartyInfo {
	private int partyId;
	private String partyName;
	private String partyAddressLine1;
	private String partyAddressLine2;
	private String partyEmailId;
	private long partyMobileNo;
	private long partyTelNo;
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
	public String getPartyAddressLine1() {
		return partyAddressLine1;
	}
	public void setPartyAddressLine1(String partyAddressLine1) {
		this.partyAddressLine1 = partyAddressLine1;
	}
	public String getPartyAddressLine2() {
		return partyAddressLine2;
	}
	public void setPartyAddressLine2(String partyAddressLine2) {
		this.partyAddressLine2 = partyAddressLine2;
	}
	public long getPartyMobileNo() {
		return partyMobileNo;
	}
	public void setPartyMobileNo(long partyMobileNo) {
		this.partyMobileNo = partyMobileNo;
	}
	public long getPartyTelNo() {
		return partyTelNo;
	}
	public void setPartyTelNo(long partyTelNo) {
		this.partyTelNo = partyTelNo;
	}
	public String getPartyEmailId() {
		return partyEmailId;
	}
	public void setPartyEmailId(String partyEmailId) {
		this.partyEmailId = partyEmailId;
	}
}
