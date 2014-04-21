package com.interiors.app.security.dao;

import javax.sql.DataSource;

import com.interiors.app.security.domain.DbUser;

public interface UserDAO_old {
	public DbUser searchDatabase(String username);
	
	public void setDataSource(DataSource dataSource);
}
