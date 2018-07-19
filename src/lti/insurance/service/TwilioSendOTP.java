package lti.insurance.service;


import com.twilio.exception.TwilioException;
import com.twilio.Twilio; 
import com.twilio.rest.api.v2010.account.Message; 
import com.twilio.type.PhoneNumber; 

/**
 * 
 * @author Shubhankar Ghosh
 * 
 */
public class TwilioSendOTP { 
    private final static String ACCOUNT_SID = "ACde59e457135ef0c07a9638b726636cfc"; 
    private final static String AUTH_TOKEN = "c560cbbc753f31a2829ca98cec2247fd"; 
    
    public static void sendMessage(String to, String msg) {
    	Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
    	try {
        	@SuppressWarnings("unused")
			Message message = Message.creator(
            	    new PhoneNumber(to),  // To number
            	    new PhoneNumber( "+61418127181"),  // From number
            	    msg                    // SMS body
            	).create();
            System.out.println(message.getSid());
        } catch (TwilioException exception) {
            exception.printStackTrace();
        }
    }
}