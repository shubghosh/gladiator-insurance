package lti.insurance.ctrl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lti.insurance.bean.CustomerBean;
import lti.insurance.bean.ExistingCustomerBean;
import lti.insurance.bean.InvoiceBean;
import lti.insurance.bean.TicketBean;

import lti.insurance.service.InsuranceService;

@Controller
public class CustomerController {

	@Autowired
	private InsuranceService service;

	@RequestMapping(value = "user.ins", method = RequestMethod.POST)
	public String registration(CustomerBean cust) {
		if (service.persist(cust)) {
			return "profile";
		} else {
			return "register";
		}

	}

	@RequestMapping(value = "claim.ins", method = RequestMethod.POST)
	public String claimPolicy(TicketBean ticket,HttpSession session) {
		System.out.println("hii in claim.ins");
		if (service.claim(ticket)) {
			InvoiceBean invoice = (InvoiceBean)session.getAttribute("Invoice");
			System.out.println(invoice.getCustomerId());
			invoice.setTicketId(ticket.getTicketId());
			System.out.println(invoice.getTicketId());
			session.setAttribute("Invoice", invoice);
			
			return "profile";
		} else {
			return "home";
		}
	}

	@RequestMapping(value = "generate.ins", method = RequestMethod.GET)
	public ModelAndView generateticket(@RequestParam("policyId") long policyId, HttpSession session) {
		System.out.println("hii in generate.ins--------------"+policyId);
		InvoiceBean invoice = (InvoiceBean)session.getAttribute("Invoice");
		ModelAndView mav= new ModelAndView();
		mav.addObject("PolicyId", policyId);
		mav.setViewName("claim");
		return mav;
	}

	@RequestMapping(value = "pay.ins", method = RequestMethod.GET)
	public String payment(ExistingCustomerBean cust, HttpSession session) {
		InvoiceBean invoice = (InvoiceBean)session.getAttribute("Invoice");
		
		cust.setEmail(invoice.getCustomerId());
		System.out.println(cust.getEmail());
		if (service.buy(cust)) {
			invoice.setPolicyId(cust.getPolicyId());
			session.setAttribute("Invoice", invoice);
			return "payment";
		} else {
			return "profile";
		}

	}
	@RequestMapping(value = "pdf.ins", method = RequestMethod.POST)
	public String invoice(InvoiceBean Invoice , HttpSession session) {
		InvoiceBean invoice = (InvoiceBean)session.getAttribute("Invoice");
		if (service.save(invoice)) {
			return "pdf";
		} else {
			return "pdf";
		}
	}
	
	@RequestMapping(value = "claimStatus.ins", method = RequestMethod.GET)
	public ModelAndView generateClaim( HttpSession session) {
		System.out.println("hii in claimStatus.ins--------------");
		InvoiceBean invoice = (InvoiceBean)session.getAttribute("Invoice");
		ModelAndView mav= new ModelAndView();
		System.out.println(invoice.getCustomerId());
		
		List<TicketBean> policyStatus=service.getpolicyStatus(invoice.getCustomerId());
		//mav.addObject("PolicyId", policyId);
		if(policyStatus.size()!=0) {
			mav.addObject("PolicyId", policyStatus);
			mav.setViewName("claimstatus");
			return mav;
		}
		else
			return null;
	}
}

