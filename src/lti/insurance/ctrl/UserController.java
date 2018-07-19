package lti.insurance.ctrl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

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
import lti.insurance.bean.ExistingCustomerBean;
import lti.insurance.bean.InvoiceBean;
import lti.insurance.bean.LoginBean;
import lti.insurance.bean.VehicleBean;
import lti.insurance.service.InsuranceService;
import lti.insurance.service.VehicleNotFoundException;

@Controller
public class UserController {

	
	@Autowired
	private InsuranceService service;

	@RequestMapping(value = "register.ins", method = RequestMethod.POST)
	public String signin(CustomerBean cust, HttpSession session) {
		
		System.out.println("In user Controller---------------------"+cust.getPassword());
		BCryptPasswordEncoder hashValue= Encryption.getPasswordEncoder();
		cust.setPassword(hashValue.encode(cust.getPassword()));
		System.out.println("In user Controller-----"+cust.getPassword());
		
		@SuppressWarnings("unused")
		boolean flag = service.persist(cust);
		
		return "changed";
	}

	@RequestMapping(value = "update.ins", method = RequestMethod.POST)
	public String updatePassword(LoginBean login, HttpSession session) {
		CustomerBean cust=new CustomerBean();
		System.out.println("In user Controller---------------------"+login.getPassword());
		BCryptPasswordEncoder hashValue= Encryption.getPasswordEncoder();
		cust.setPassword(hashValue.encode(login.getPassword()));
		System.out.println(session.getAttribute("Email")+"---------");
		cust.setEmail((String)session.getAttribute("Email"));
		//System.out.println("In user Controller-----"+cust.getPassword());
		
		@SuppressWarnings("unused")
		boolean flag = service.updatePassword(cust);
		
		return "home";
	}

	@RequestMapping(value = "quote.ins", method = RequestMethod.POST)
	public ModelAndView quote(VehicleBean vehicle, @RequestParam("policyType") String policy, HttpSession session) {
		ModelAndView mav= new ModelAndView();
		Double premiumValue=0.0;
		try {
			premiumValue = service.getQuote(vehicle , policy);
		} catch (VehicleNotFoundException e) {
			// TODO Auto-generated catch block
			mav.setViewName("home");
			mav.addObject("VehicleNotFound", e.getMessage());
			e.printStackTrace();
		}
		String message="";
		System.out.println("In controller-----------------");
		System.out.println(premiumValue);
		if(premiumValue==0.0)
			message="Sorry...!!! You should buy a new car...!!!";
		else
			message="Policy starts at "+premiumValue+" per year...!!";
		
		mav.addObject("Quote",message);
		mav.setViewName("home");
		return mav;
	}
	@RequestMapping(value = "quote1.ins", method = RequestMethod.POST)
	public ModelAndView quote1(VehicleBean vehicle, @RequestParam("policyType") String policy, HttpSession session) {
		
		ModelAndView mav= new ModelAndView();
		Double premiumValue=0.0;
		try {
			premiumValue = service.getQuote(vehicle , policy);
		} catch (VehicleNotFoundException e) {
			mav.setViewName("buy");
			mav.addObject("VehicleNotFound", e.getMessage());
			e.printStackTrace();
		}
		String message="";
		System.out.println("In controller-----------------");
		System.out.println(premiumValue);
		if(premiumValue==0.0)
			message="Sorry...!!! You should buy a new car...!!!";
		else
			message="Policy starts at "+premiumValue+" per year...!!";
		mav.addObject("Quote",message);
		mav.setViewName("buy");
		//mav.setViewName("explore");
		session.setAttribute("Premium",premiumValue);
	
		InvoiceBean invoice = (InvoiceBean)session.getAttribute("Invoice");
		//System.out.println(invoice.getCustomerId());
		invoice.setRegisterNo(vehicle.getRegisterNo());
		System.out.println(invoice.getRegisterNo());
		
		invoice.setAmount(premiumValue);
		System.out.println(invoice.getAmount());
	
		System.out.println(invoice.getIssueDate());
		System.out.println("hii"+invoice.getIssueDate());
		invoice.setPolicyType(policy);
		System.out.println(invoice.getPolicyType());
		session.setAttribute("Invoice", invoice);
		mav.addObject("Quote",message);
		return mav;
	}

	@RequestMapping(value = "policy.ins", method = RequestMethod.GET)
	public ModelAndView fetchPolicyDetails(HttpSession session)
	{
		ModelAndView mav= new ModelAndView();
		InvoiceBean invoice = (InvoiceBean)session.getAttribute("Invoice");

		List<InvoiceBean> invoiceBean= service.getPolicyName(invoice.getCustomerId());
		
		if(invoiceBean.size()!=0)
		{
			System.out.println("null nai aaraha");
			mav.setViewName("mypolicies");
			mav.addObject("InvoiceBean", invoiceBean);
			return mav;
		}
		else {
			System.out.println("null aaraha hai");
			return null;
		}
	}

}
