package lti.insurance.repo;

import java.util.List;

import lti.insurance.bean.CustomerBean;
import lti.insurance.bean.ExistingCustomerBean;
import lti.insurance.bean.InvoiceBean;
import lti.insurance.bean.LoginBean;
import lti.insurance.bean.StaffBean;
import lti.insurance.bean.StaffLogin;
import lti.insurance.bean.TicketBean;
import lti.insurance.bean.UserBean;
import lti.insurance.bean.VehicleBean;

public interface InsuranceRepository {

	CustomerBean validate(LoginBean login);

	boolean save(CustomerBean cust);

	boolean checkExisting(long aadhar);

	UserBean verify(long aadhar);

	VehicleBean getQuote(VehicleBean vehicle);

	boolean saveExisting(TicketBean ticket);

	List<ExistingCustomerBean> getCustomerInformation();

	UserBean fetchCustomerInformation(String email);

	StaffBean staffValidate(StaffLogin staffLogin);

	boolean buy(ExistingCustomerBean cust);

	TicketBean changeStatus(long ticketId, int status);

	List<TicketBean> getTicketInformation();

	boolean save(InvoiceBean invoice);

	List<InvoiceBean> getPolicyName(String policyType);

	List<TicketBean> getPolicyStatus(String customerId);

	boolean updatePassword(CustomerBean cust);

}
