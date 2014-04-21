package com.interiors.app.dap.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class UserRowMapper implements RowMapper {

  public Object mapRow(ResultSet rs, int line) throws SQLException {
    UserResultExtractor extractor = new UserResultExtractor();
    return extractor.extractData(rs);
  }

}
