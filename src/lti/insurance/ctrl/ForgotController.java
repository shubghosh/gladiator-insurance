package lti.insurance.ctrl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lti.insurance.service.InsuranceService;

@Controller
public class ForgotController {

	@Autowired
	private InsuranceService service;

	@RequestMapping(value="forgot.ins", method=RequestMethod.POST)
	public String forgetPassword(@RequestParam("email") String email, @RequestParam("contact") long contactNumber, HttpSession session)
	{
		ModelAndView mav= new ModelAndView();
		System.out.println("In Login controller----"+email);
		System.out.println("In Login controller----"+contactNumber);

		String otp=service.sendOTP(contactNumber);
		session.setAttribute("OTP", otp);
		session.setAttribute("Email", email);
		return "otp";
	}

	@RequestMapping(value="otp.ins", method=RequestMethod.POST)
	public String validateOTP(@RequestParam("otp") String otp, HttpSession session)
	{
		String sentOTP=(String) session.getAttribute("OTP");
		System.out.println("Sent OTP----"+sentOTP);
		System.out.println("Fetched OTP---"+otp);
		if(sentOTP.equalsIgnoreCase(otp)) {
			System.out.println("OTP matched");
			return "reset";
		}
			else return "error_page";
		
	}


}
