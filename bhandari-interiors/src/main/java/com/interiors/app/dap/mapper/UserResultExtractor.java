package com.interiors.app.dap.mapper;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.ResultSetExtractor;

import com.interiors.app.security.domain.DbUser;

public class UserResultExtractor implements ResultSetExtractor {
	
	public Object extractData(ResultSet rs) throws SQLException {
	    DbUser person = new DbUser();
	    person.setUsername(rs.getString(1));
	    person.setPassword(rs.getString(2));
	    return person;
	  }
}
