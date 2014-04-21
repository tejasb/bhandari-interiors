package com.interiors.app.security.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.interiors.app.dap.mapper.UserRowMapper;
import com.interiors.app.security.domain.DbUser;

public class IDaoImpl implements IDao {
	
	  @Autowired
	  private DataSource dataSource;
	  
	  //private TransactionManager transactionManager;

	  public void create(String firstName, String lastName) {
	    JdbcTemplate insert = new JdbcTemplate(dataSource);
	    insert.update("INSERT INTO bi_users (username, password) VALUES(?,?)",
	        new Object[] { firstName, lastName });
	  }

	  public List<DbUser> select(String username, String password) {
	    JdbcTemplate select = new JdbcTemplate(dataSource);
	    return select
	        .query("select  username, password from bi_users where username = ? AND password= ?",
	            new Object[] { username, password },
	            new UserRowMapper());
	  }

	  public List<DbUser> selectAll() {
	    JdbcTemplate select = new JdbcTemplate(dataSource);
	    return select.query("select username, password from bi_users",
	        new UserRowMapper());
	  }

	  public void deleteAll() {
	    JdbcTemplate delete = new JdbcTemplate(dataSource);
	    delete.update("DELETE from PERSON");
	  }

	  public void delete(String firstName, String lastName) {
	    JdbcTemplate delete = new JdbcTemplate(dataSource);
	    delete.update("DELETE from PERSON where FIRSTNAME= ? AND LASTNAME = ?",
	        new Object[] { firstName, lastName });
	  }

	public void setDataSource(DataSource ds) {
		// TODO Auto-generated method stub
		
	}

	} 