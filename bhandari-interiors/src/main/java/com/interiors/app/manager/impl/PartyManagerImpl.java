package com.interiors.app.manager.impl;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.PlatformTransactionManager;

import com.interiors.app.manager.PartyManager;
import com.interiors.app.valueobjects.PartyInfo;
import com.interiors.app.valueobjects.SearchPartyForm;
@Component
public class PartyManagerImpl implements PartyManager{

	protected JdbcTemplate jdbcTemplate;
	
	protected PlatformTransactionManager transactionManager;
	
	@Autowired
	protected DataSource datasource;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public List<PartyInfo> searchParty(SearchPartyForm searchPartyForm) {
		List<PartyInfo> partyInfoList = null;
		
		return partyInfoList;
	}

	public int insertParty(PartyInfo partyInfo) {
		System.out.println("Datasource --> " + datasource);
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
		// TODO Auto-generated method stub
		
	}

	public void deletePARTY(String partyId) {
		// TODO Auto-generated method stub
		
	}

	public PartyInfo getParty(String partyId) {
		// TODO Auto-generated method stub
		return null;
	}
}
