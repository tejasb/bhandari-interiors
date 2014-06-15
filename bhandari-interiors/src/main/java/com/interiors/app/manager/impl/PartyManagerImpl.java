package com.interiors.app.manager.impl;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.PlatformTransactionManager;

import com.google.gson.Gson;
import com.interiors.app.manager.PartyManager;
import com.interiors.app.valueobjects.PartyInfo;
import com.interiors.app.valueobjects.PartySearchInfo;
import com.interiors.app.valueobjects.SearchPartyForm;
import com.interiors.app.valueobjects.UserInfo;
@Component
public class PartyManagerImpl implements PartyManager{

	protected JdbcTemplate jdbcTemplate;
	
	protected PlatformTransactionManager transactionManager;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public List<PartyInfo> searchParty(SearchPartyForm searchPartyForm) {
		List<PartyInfo> partyInfoList = new ArrayList<PartyInfo>();
		PartyInfo partyInfo = new PartyInfo();
		partyInfo.setPartyId(1);
		partyInfo.setPartyName("Tejas");
		partyInfo.setPartyMobileNo(8956972688L);
		partyInfo.setPartyAddressLine1("Dadar");
		partyInfo.setPartyAddressLine2("Dadar");
		partyInfo.setPartyDetailTypeId("1");
		partyInfo.setPartyEmailId("tejas.reva@gmail.com");
		partyInfo.setPartyTelNo(24318930L);
		partyInfo.setPartyTypeId("1");
		
		partyInfoList.add(partyInfo);
		
		return partyInfoList;
	}

	public int insertParty(PartyInfo partyInfo) {
		 String sql = "INSERT INTO PARTY_INFO "  
				    + "(PARTY_NAME, PARTY_ADDRESS_LINE_1, PARTY_ADDRESS_LINE_2, PARTY_EMAIL_ID, PARTY_MOBILE_NO," +
				    "PARTY_TEL_NO, FK_PARTY_TYPE_ID, FK_PARTY_DETAIL_TYPE_ID) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";  
				  
				  //JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);  
		 		 int partyId = 0;
				 int updateReturn =  jdbcTemplate.update(  
				    sql,  
				    new Object[] { partyInfo.getPartyName(),  
				    		partyInfo.getPartyAddressLine1(), partyInfo.getPartyAddressLine2(), partyInfo.getPartyEmailId(),
				    		partyInfo.getPartyMobileNo(), partyInfo.getPartyTelNo(), partyInfo.getPartyTypeId(),
				    		partyInfo.getPartyDetailTypeId()});
				 if (updateReturn == 1) {
					 partyId = jdbcTemplate.queryForInt("SELECT MAX(PK_PARTY_ID) from PARTY_INFO");
				 }
				 System.out.println("Party Id --> " + partyId);
				 return partyId;
	}

	public List<PartyInfo> getPartyList() {
		// TODO Auto-generated method stub
		return null;
	}

	public void updatePARTY(PartyInfo partyInfo) {
		String sql = "UPDATE PARTY_INFO SET"  
			    + "PARTY_NAME=?, PARTY_ADDRESS_LINE_1=?, PARTY_ADDRESS_LINE_2=?, PARTY_EMAIL_ID=?, PARTY_MOBILE_NO=?," +
			    "PARTY_TEL_NO=?, FK_PARTY_TYPE_ID=?, FK_PARTY_DETAIL_TYPE_ID=? where PK_PARTY_ID = ?";  
			  
			  //JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);  
	 		 int partyId = 0;
			 int updateReturn =  jdbcTemplate.update(  
			    sql,  
			    new Object[] { partyInfo.getPartyName(),  
			    		partyInfo.getPartyAddressLine1(), partyInfo.getPartyAddressLine2(), partyInfo.getPartyEmailId(),
			    		partyInfo.getPartyMobileNo(), partyInfo.getPartyTelNo(), partyInfo.getPartyTypeId(),
			    		partyInfo.getPartyDetailTypeId(), partyInfo.getPartyId()});
			 if (updateReturn == 1) {
				 partyId = jdbcTemplate.queryForInt("SELECT MAX(PK_PARTY_ID) from PARTY_INFO");
			 }
			 System.out.println("Party Id --> " + partyId);
	}

	public void deletePARTY(String partyId) {
		// TODO Auto-generated method stub
		
	}

	public PartyInfo getParty(String partyId) {
		// TODO Auto-generated method stub
		return null;
	}

	/*
	 * Method for adding a new user for accessing the website
	 * (non-Javadoc)
	 * @see com.interiors.app.manager.PartyManager#addUser(com.interiors.app.valueobjects.UserInfo)
	 */
	public int addUser(UserInfo userInfo) throws NoSuchAlgorithmException {
		String password = generateSecureHashPassword(userInfo.getPassword());
		String sql = "INSERT INTO USERS "  
			    + "(USERNAME, PASSWORD, ACCESS, FK_PARTY_ID) VALUES (?, ?, ?, ?)";  
			  
			  //JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);  
	 		 int partyId = 0;
			 int updateReturn =  jdbcTemplate.update(  
			    sql,  
			    new Object[] { userInfo.getUserName(),  
			    		password, userInfo.getAccess(), userInfo.getPartyId()});
			 if (updateReturn == 1) {
				 partyId = jdbcTemplate.queryForInt("SELECT MAX(PK_USER_ID) from USERS");
			 }
			 System.out.println("Party Id --> " + partyId);
			 return partyId;
	}

	/**
	 * Method for generating secure password using MD5 algorithm
	 * @param passwordToHash password for hashing
	 * @return secure hashed password
	 * @throws NoSuchAlgorithmException exception is thrown
	 */
	private String generateSecureHashPassword(String passwordToHash) throws NoSuchAlgorithmException {
		 MessageDigest md = MessageDigest.getInstance("MD5");
         //Add password bytes to digest
         md.update(passwordToHash.getBytes());
         //Get the hash's bytes
         byte[] bytes = md.digest();
         //This bytes[] has bytes in decimal format;
         //Convert it to hexadecimal format
         StringBuilder sb = new StringBuilder();
         for(int i=0; i< bytes.length ;i++)
         {
             sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
         }
         //Get complete hashed password in hex format
		return sb.toString();
	}

	public String getPartySearchList(String partyString, String isCode) {

		List<PartySearchInfo> partySearchInfos = new ArrayList<PartySearchInfo>();
		
		String sql = "select distinct ORG.PK_PARTY_ID, ORG.PARTY_NAME from PARTY_INFO ORG where";
		if(isCode.equals("true")){
			sql= sql + " ORG.PK_PARTY_ID like '%"+partyString +"%'";
		}else if(isCode.equals("false")){
			sql= sql +" ORG.PARTY_NAME like '%"+partyString +"%'";
		}
		
		List<Map<String, Object>> rows = this.jdbcTemplate.queryForList(sql);

		List<PartySearchInfo> partySearchInfoList = createPartySearchInfoResult(rows);
		
		List<Map<String, String>> partySearchList = new ArrayList<Map<String, String>>();
		for (PartySearchInfo partySearch : partySearchInfoList)
		{
			Map<String, String> partySearchMap = new HashMap<String, String>();
			partySearchMap.put("partyId", partySearch.getPartyId());
			partySearchMap.put("partyName",partySearch.getPartyName());
			partySearchMap.put("label",partySearch.getPartyName());
			partySearchMap.put("value",partySearch.getPartyName());
			partySearchList.add(partySearchMap);
		}
		Gson gson = new Gson();
		String partySearchResponseObject = gson.toJson(partySearchList);
		return partySearchResponseObject;
	}
	
	private List<PartySearchInfo> createPartySearchInfoResult(
			List<Map<String, Object>> rows) {
		
		List<PartySearchInfo> partySearchInfoList = new ArrayList<PartySearchInfo>();
		
		for(int i = 0; i< rows.size() ; i++){
			PartySearchInfo partySearchInfo = new PartySearchInfo();
			partySearchInfo.setPartyId(rows.get(i).get("PK_PARTY_ID").toString());
			partySearchInfo.setPartyName(rows.get(i).get("PARTY_NAME").toString());
			partySearchInfoList.add(partySearchInfo);
		}
		
		return partySearchInfoList;
	}
	
}
