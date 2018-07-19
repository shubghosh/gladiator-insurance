package lti.insurance.service;
import java.util.*;

public class OTPGeneration
{

	
	private OTPGeneration() {}
	static String OTP()
	{	
		final int OTPLENGTH = 4;
		String numbers = "0123456789";
		String keygen="";
		Random rndm_method = new Random();
		char[] otp = new char[OTPLENGTH];
		for (int i = 0; i < OTPLENGTH; i++) {
			otp[i] =numbers.charAt(rndm_method.nextInt(numbers.length()));
			keygen=keygen+otp[i];
		}
		return keygen;
	}
	
	/*public static void main(String[] args)
	{
		
		System.out.println(OTP());
	}*/
}
