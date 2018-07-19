package lti.insurance.service;

import java.util.List;

import lti.insurance.bean.AadharBean;
import lti.insurance.bean.CustomerBean;
import lti.insurance.bean.ExistingCustomerBean;
import lti.insurance.bean.InvoiceBean;
import lti.insurance.bean.LoginBean;
import lti.insurance.bean.StaffBean;
import lti.insurance.bean.StaffLogin;
import lti.insurance.bean.TicketBean;
import lti.insurance.bean.UserBean;
import lti.insurance.bean.VehicleBean;

public interface InsuranceService {

	CustomerBean authenticate(LoginBean login);

	boolean persist(CustomerBean cust);

	UserBean verify(long aadhar) throws ExistingAccountException, AadharNotFoundException;

	Double getQuote(VehicleBean vehicle, String policy) throws VehicleNotFoundException;

	boolean claim(TicketBean ticket);

	String sendOTP(long contactNumber);

	List<ExistingCustomerBean> attribute();

	UserBean showAttribute(String email);

	StaffBean staffAuthenticate(StaffLogin login);

	boolean buy(ExistingCustomerBean cust);

	TicketBean updateStatus(long ticketId, int status);

	List<TicketBean> showTicketDetails();

	boolean save(InvoiceBean invoice);

	List<InvoiceBean> getPolicyName(String policyType);

	List<TicketBean> getpolicyStatus(String customerId);

	boolean updatePassword(CustomerBean cust);
}
