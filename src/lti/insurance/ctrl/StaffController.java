package lti.insurance.ctrl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lti.insurance.bean.ExistingCustomerBean;
import lti.insurance.bean.TicketBean;
import lti.insurance.bean.UserBean;
import lti.insurance.service.InsuranceService;

@Controller
public class StaffController {

	@Autowired
	private InsuranceService service;

	@RequestMapping(value = "customer.ins", method = RequestMethod.GET)
	public ModelAndView showExistingCustomer(HttpSession session) {

		// System.out.println(session.getAttribute("email"));
		ModelAndView mav = new ModelAndView();
		List<ExistingCustomerBean> cust = service.attribute();
		if (cust.size() != 0) {
			 System.out.println("---------------------------------------------------------------------------------");
			mav.setViewName("customers");
			mav.addObject("Customer", cust);
			return mav;
		} else
			return null;
	}

	@RequestMapping(value = "customerDetails.ins", method = RequestMethod.GET)
	public ModelAndView showCustomerDetails(@RequestParam("email") String email) {

		System.out.println("In customerDetails method-------------");
		System.out.println(email);
		ModelAndView mav = new ModelAndView();
		UserBean user = service.showAttribute(email);
		if (user != null) {
			System.out.println(user.getAadhar());
			mav.setViewName("details");
			mav.addObject("Users", user);
			return mav;
		} else {
			System.out.println("null aaraha hai");
			return null;
		}
	}
	@RequestMapping(value = "tickets.ins", method = RequestMethod.GET)
	public ModelAndView showTicket(HttpSession session) {

		System.out.println("In customerDetails method-------------");
		// System.out.println(email);
		ModelAndView mav = new ModelAndView();
		List<TicketBean> ticket = service.showTicketDetails();
		if (ticket != null) {
			System.out.println("in staff controller under ticket.ins");
			mav.setViewName("tickets");
			mav.addObject("Tickets", ticket);
			return mav;
		} else {
			System.out.println("null aaraha hai");
			return null;
		}

	}
	
	@RequestMapping(value = "updateStatus.ins", method = RequestMethod.GET)
	public ModelAndView changeStatus(@RequestParam("ticketId") long ticketId, @RequestParam("status") int status, HttpSession session) {

		System.out.println("In change status method-------------"+ticketId+"----"+status);
		// System.out.println(email);
		ModelAndView mav = new ModelAndView();
		TicketBean tkt=service.updateStatus(ticketId,status);
		mav.setViewName("dashboard");
	    System.out.println(tkt+"----------");
		return mav;

	}
}
