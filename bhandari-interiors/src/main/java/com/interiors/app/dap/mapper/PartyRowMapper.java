package com.interiors.app.dap.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class PartyRowMapper implements RowMapper {

  public Object mapRow(ResultSet rs, int line) throws SQLException {
	  PartyResultExtractor extractor = new PartyResultExtractor();
    return extractor.extractData(rs);
  }

}
