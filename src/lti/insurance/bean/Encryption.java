package lti.insurance.bean;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class Encryption {
	private static BCryptPasswordEncoder encoder;
	
	//private constructor for single instance
	private Encryption() {
	}
	
	public static BCryptPasswordEncoder getPasswordEncoder() {
	    if(encoder == null)
	    	encoder = new BCryptPasswordEncoder();
		return encoder;
	}
}
