package com.interiors.app.security.dao;
 
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.PlatformTransactionManager;

//import org.apache.log4j.Logger;

import com.interiors.app.dap.mapper.UserRowMapper;
import com.interiors.app.security.domain.DbUser;
 
/**
 * A custom DAO for accessing data from the database.
 *
 */
public class UserDAOImpl extends BaseDAO_old implements UserDAO_old{
 
 //protected static Logger logger = Logger.getLogger("dao");
	//protected JdbcTemplate jdbcTemplate;
	//protected PlatformTransactionManager transactionManager;
	
	/*public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}*/

	/*public void setTransactionManager(PlatformTransactionManager transactionManager)
	{
		this.transactionManager = transactionManager;
	}*/
	
 /**
  * Simulates retrieval of data from a database.
  */
 public DbUser searchDatabase(String username) {
  // Retrieve all users from the database
  List<DbUser> users = internalDatabase();
   
  // Search user based on the parameters
  for(DbUser dbUser:users) {
   if ( dbUser.getUsername().equals(username)  == true ) {
    //logger.debug("User found");
    // return matching user
	   dbUser.setAccess(1);
	   
    return dbUser;
   }
   
   
  }
   
  //logger.error("User does not exist!");
  throw new RuntimeException("User does not exist!");
 }
 
 /**
  * Our fake database. Here we populate an ArrayList with a dummy list of users.
  */
 private List<DbUser> internalDatabase() {

	    return this.jdbcTemplate
	        .query("select  username, password from bi_users where username = ? ",
	        		new BeanPropertyRowMapper(DbUser.class));
 }
  
}