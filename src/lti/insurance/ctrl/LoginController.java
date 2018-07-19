package lti.insurance.ctrl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lti.insurance.bean.CustomerBean;
import lti.insurance.bean.Encryption;
import lti.insurance.bean.InvoiceBean;
import lti.insurance.bean.LoginBean;
import lti.insurance.bean.StaffBean;
import lti.insurance.bean.StaffLogin;
import lti.insurance.bean.UserBean;
import lti.insurance.service.AadharNotFoundException;
import lti.insurance.service.ExistingAccountException;
import lti.insurance.service.InsuranceService;

@Controller
public class LoginController {

	@Autowired
	private InsuranceService service;

	@SuppressWarnings("unused")
	@RequestMapping(value = "login.ins", method = RequestMethod.POST)
	public ModelAndView signin(LoginBean login, HttpSession session) {
		System.out.println("In Controller-----" + login.getPassword());
		ModelAndView mav = new ModelAndView();
		BCryptPasswordEncoder hashValue = Encryption.getPasswordEncoder();
		// login.setPassword(hashValue.encode(login.getPassword()));

		System.out.println("In Controller-----" + login.getPassword());
		CustomerBean cust = service.authenticate(login);
		InvoiceBean invoice = new InvoiceBean();

		if (cust != null) {
			if (cust.getEmail().equals(login.getEmail())
					&& hashValue.matches(login.getPassword(), cust.getPassword())) {
				session.setAttribute("Customer", cust);
				invoice.setCustomerId(cust.getEmail());

				session.setAttribute("Invoice", invoice);
				System.out.println(invoice.getCustomerId());
				mav.setViewName("profile");
			} else if (!hashValue.matches(login.getPassword(), cust.getPassword())) {
				mav.setViewName("login2");
				mav.addObject("invalid", "Entered Password is incorrect");
				System.out.println("Invalid password");
			}
		} else {
			mav.setViewName("login2");
			mav.addObject("invalid", "Entered Email is incorrect");
			System.out.println("Invalid email");
		}

		return mav;
	}

	// request coming from login1.jsp
	@SuppressWarnings("unused")
	@RequestMapping(value = "signup.ins", method = RequestMethod.POST)
	public ModelAndView signup(@RequestParam("aadhar") long aadhar, HttpSession session) {

		ModelAndView mav = new ModelAndView();
		UserBean user = null;
		try {
			user = service.verify(aadhar);
			System.out.println("in controller" + user.getAadhar());
		} catch (ExistingAccountException e) {
			e.printStackTrace();
			mav.setViewName("login2");
			mav.addObject("exist", e.getMessage());
			// System.out.println("in controller"+user.getAadhar());
			return mav;
		} catch (AadharNotFoundException e) {
			mav.setViewName("login1");
			System.out.println("Invalid aadhaar");
			mav.addObject("invalid", "Invalid Aadhar No...!!!");
			e.printStackTrace();
			return mav;
		}

		if (user != null) {
			session.setAttribute("User", user);
			mav.setViewName("signup");
			return mav; // Aadhar details matched. hence registration page
			// displayed. }
		} 
		return null;
	}
	
	@RequestMapping(value = "/staff.ins", method = RequestMethod.POST)
	public ModelAndView staffSignin(StaffLogin login, HttpSession session) {
		StaffBean staff = service.staffAuthenticate(login);
        
		ModelAndView mav=new ModelAndView();
		
		
		if (staff != null) {
			if (staff.getStaffEmail().equals(login.getStaffEmail()) && staff.getStaffPassword().equals(login.getStaffPassword())) {
				session.setAttribute("Staff", staff);
				mav.setViewName("dashboard");
			} else if (!(login.getStaffPassword().equals( staff.getStaffPassword()))) {
				mav.setViewName("stlogin");
				mav.addObject("invalid", "Entered Password is incorrect");
				System.out.println("Invalid password");
			}
		} else {
			mav.setViewName("stlogin");
			mav.addObject("invalid", "Entered Email is incorrect");
			System.out.println("Invalid email");
		}
		
		return mav;
	}

	@RequestMapping(value = "logout.ins", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "logged";

	}
}
