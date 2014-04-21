package com.interiors.app.security.dao;

import java.util.List;

import javax.sql.DataSource;

import com.interiors.app.security.domain.DbUser;

public interface IDao {

	  void setDataSource(DataSource ds);

	  void create(String username, String password);

	  List<DbUser> select(String username, String password);

	  List<DbUser> selectAll();

	  void deleteAll();

	  void delete(String firstName, String lastName);
}
