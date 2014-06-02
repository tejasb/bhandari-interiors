package com.interiors.app.security.encoder;

import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.password.PasswordEncoder;

public class BCryptPasswordEncoder implements PasswordEncoder {
/*	 
    public String encodePassword(String rawPass, Object salt) throws DataAccessException {
        //logger.debug("Encoding password.");
        return BCrypt.hashpw(rawPass, BCrypt.gensalt());
    }
 
    public boolean isPasswordValid(String encPass, String rawPass, Object salt) throws DataAccessException {
        //logger.debug("Validating password.");
        return BCrypt.checkpw(rawPass, encPass);
    }*/

	public String encode(CharSequence rawPassword) {
		System.out.println("Inside custom encode methor");
		  return BCrypt.hashpw(rawPassword.toString(), BCrypt.gensalt());
	}

	public boolean matches(CharSequence rawPassword, String encodedPassword) {
		// TODO Auto-generated method stub
		System.out.println("Inside custom matches method");
		return BCrypt.checkpw(rawPassword.toString(), encodedPassword);
	}
}
