package com.interiors.app.dap.mapper;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.ResultSetExtractor;

import com.interiors.app.security.domain.DbUser;
import com.interiors.app.valueobjects.PartyInfo;

public class PartyResultExtractor implements ResultSetExtractor {
	
	public Object extractData(ResultSet rs) throws SQLException {
	   /* DbUser person = new DbUser();
	    person.setUsername(rs.getString(1));
	    person.setPassword(rs.getString(2));*/
		PartyInfo partyInfo = new PartyInfo();
		partyInfo.setPartyId(rs.getInt(1));
		partyInfo.setPartyName(rs.getString(2));
		partyInfo.setPartyAddressLine1(rs.getString(3));
		partyInfo.setPartyAddressLine2(rs.getString(4));
		partyInfo.setPartyMobileNo(rs.getLong(5));
		partyInfo.setPartyTelNo(rs.getLong(6));
		partyInfo.setPartyTypeId(rs.getString(7));
		partyInfo.setPartyDetailTypeId(rs.getString(8));
	    return partyInfo;
	  }
}
