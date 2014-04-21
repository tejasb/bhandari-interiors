package com.interiors.app.security.dao;

import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.PlatformTransactionManager;

import com.interiors.app.security.domain.DbUser;


public class UserDao {
	 
	protected JdbcTemplate jdbcTemplate;
	
	protected PlatformTransactionManager transactionManager;
	
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	 //DataSource dataSource;
	
	/*public void setDataSource(DataSource dataSource) {
		//this.jdbcTemplate = new JdbcTemplate(dataSource);
		this.dataSource = dataSource;
	}*/
	
	/*String message;
	 
	public String getMessage() {
	  return message;
	}
 
	public void setMessage(String message) {
	  this.message = message;
	}*/
	
	/*@PostConstruct
	public void initIt() throws Exception {
	  System.out.println("Init method after properties are set : " + dataSource);
	}*/

/*	public void setTransactionManager(PlatformTransactionManager transactionManager)
	{
		this.transactionManager = transactionManager;
	}
	*/
	
	 public DbUser searchDatabase(String username) {
		  // Retrieve all users from the database
		  List<DbUser> users = getUserInfo();
		   
		  // Search user based on the parameters
		  for(DbUser dbUser:users) {
		   if ( dbUser.getUsername().equals(username)  == true ) {
		    //logger.debug("User found");
		    // return matching user
			  // dbUser.setAccess(1);
		    return dbUser;
		   }
		   
		   
		  }
		   
		  //logger.error("User does not exist!");
		  throw new RuntimeException("User does not exist!");
		 }
	 
	public List<DbUser>  getUserInfo()  {
		//String sql="SELECT user_name, user_password FROM users where user_name = ?";
		/*System.out.println(sql);
		List<Map<String,Object>> rows = this.jdbcTemplate.queryForList(sql);
		return rows;*/
		
		return jdbcTemplate
		        .query("select username, password, access from users",
		        		new BeanPropertyRowMapper(DbUser.class));
	}
}
