package com.interiors.app.dap.mapper;



import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;


import com.interiors.app.security.dao.UserDao;
import com.interiors.app.security.domain.DbUser;
;

public class TestManagerImpl implements TestManager{

/*	@Autowired
	DbUser userInfoObj;*/
	
	@Autowired
	UserDao userDao;
	

	/*private LdapTemplate ldapTemplate;
	
	public TestManagerImpl(LdapTemplate ldapTemplate) {
		this.ldapTemplate = ldapTemplate;
	}*/
	
	public TestManagerImpl() {
		
	}
	
	
	public String checkLogin(String userName, String password)
	{
		/*if (userName.equals(userInfoObj.getUserName()) && password.equals(userInfoObj.getPassword())) {
			return "{\"TEST\" : \"true\"}";
		}*/
		
		
		 List<DbUser> userInfo = userDao.getUserInfo();
		 for (DbUser map : userInfo)
		{
			System.out.println(map.getUsername());
			
		}
		return "{\"TEST\" : \"false\"}";
	}
	
	/*public boolean login(String username, String password){
		  AndFilter filter = new AndFilter();
		  filter.and(new EqualsFilter("objectclass", "person")).and(new EqualsFilter("cn", username));
		  return ldapTemplate.authenticate(DistinguishedName.EMPTY_PATH, filter.toString(), password);
		}*/

}
