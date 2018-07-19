package lti.insurance.service;

import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import lti.insurance.bean.CustomerBean;
import lti.insurance.bean.ExistingCustomerBean;
import lti.insurance.bean.InvoiceBean;
import lti.insurance.bean.LoginBean;
import lti.insurance.bean.StaffBean;
import lti.insurance.bean.StaffLogin;
import lti.insurance.bean.TicketBean;
import lti.insurance.bean.UserBean;
import lti.insurance.bean.VehicleBean;
import lti.insurance.repo.InsuranceRepository;

@Service
// @Transactional
public class InsuranceServiceImpl implements InsuranceService {

	@Autowired
	public InsuranceRepository repo;

	/*
	 * Customer Authentication
	 */
	@Override
	public CustomerBean authenticate(LoginBean login) {

		ModelAndView mav = new ModelAndView();
		CustomerBean cust = repo.validate(login);

		System.out.println("In Service-----" + cust);
		return cust;
	}

	/**
	 * AAdhar Verification
	 */
	@Override
	public UserBean verify(long aadhar) throws ExistingAccountException, AadharNotFoundException {
		if (repo.checkExisting(aadhar))
			throw new ExistingAccountException("Account already exist with same aadhar no");
		if (repo.verify(aadhar) == null)
			throw new AadharNotFoundException("Please get a Aadhar Number...!!!");

		UserBean l_user = repo.verify(aadhar);
		System.out.println("In Service:" + l_user);
		return l_user;
	}

	/**
	 * saving data to database
	 */
	@Override
	public boolean persist(CustomerBean cust) {
		boolean flag = repo.save(cust);
		return flag;
	}

	/**
	 * fetching premium
	 */
	@Override
	public Double getQuote(VehicleBean vehicle, String policy) throws VehicleNotFoundException {
		VehicleBean myVehicle = repo.getQuote(vehicle);
		Calendar now = Calendar.getInstance(); // Gets the current date and time
		int currentYear = now.get(Calendar.YEAR);

		if (myVehicle != null) {
			System.out.println(currentYear);
			Premium premium = Premium.getInstance();
			System.out.println(policy);
			premium.setPolicyType(policy);
			premium.setType(myVehicle.getVehicleType());
			premium.setValue(myVehicle.getPrice());
			premium.setYear(currentYear - (myVehicle.getPurchaseYear()));
			System.out.println(premium.getYear());

			PremiumCalculator premiumCalculator = new PremiumCalculator();

			premiumCalculator.calculatePremium();
			System.out.println(premium.getPremi());
			return premium.getPremi();
		} else {
			throw new VehicleNotFoundException("Sorry, the registration number is invalid.");
		}
	}

	/**
	 * Saving TicketId
	 */
	@Override
	public boolean claim(TicketBean ticket) {

		boolean flag = repo.saveExisting(ticket);

		return flag;
	}

	/**
	 * Sending OTP
	 */
	@Override
	public String sendOTP(long contactNumber) {

		String toNumber = "+91" + contactNumber;
		System.out.println("in service---" + toNumber);
		String c = OTPGeneration.OTP();
		System.out.println(c);
		TwilioSendOTP.sendMessage(toNumber, c); 
		return c;

	}

	/**
	 * Customer Details
	 */
	@Override
	public List<ExistingCustomerBean> attribute() {
		List<ExistingCustomerBean> cust = repo.getCustomerInformation();
		System.out.println("In Service:" + cust);
		return cust;

	}

	/**
	 * staff validation
	 */
	@Override
	public StaffBean staffAuthenticate(StaffLogin staffLogin) {
		StaffBean staff = repo.staffValidate(staffLogin);
		return staff;
	}

	/*
	 * Getting details from aadhar table
	 */
	@Override
	public UserBean showAttribute(String email) {
		UserBean user = repo.fetchCustomerInformation(email);
		return user;
	}

	@Override
	public boolean buy(ExistingCustomerBean cust) {

		boolean flag = repo.buy(cust);
		return flag;

	}

	/**
	 * showing customer details
	 */
	@Override
	public List<TicketBean> showTicketDetails() {
		List<TicketBean> ticket = repo.getTicketInformation();
		System.out.println("in staff controller under ticket.ins");
		return ticket;
	}

	@Override
	public TicketBean updateStatus(long ticketId, int status) {
		TicketBean tkt = repo.changeStatus(ticketId, status);
		if (tkt != null)
			return tkt;
		else
			return null;

	}

	@Override
	public boolean save(InvoiceBean invoice) {
		boolean flag = repo.save(invoice);
		return false;
	}

	@Override
	public List<InvoiceBean> getPolicyName(String customerId) {
		List<InvoiceBean> invoiceBean = repo.getPolicyName(customerId);

		if (invoiceBean != null) {
			System.out.println("code nai phata");
			Iterator itr = invoiceBean.iterator();
			while (itr.hasNext()) {
				System.out.println(itr.next());
			}
			return invoiceBean;
		}

		else {
			System.out.println("code phata");
			return null;
		}

	}

	@Override
	public List<TicketBean> getpolicyStatus(String customerId) {
		List<TicketBean> policyStatus=repo.getPolicyStatus(customerId);
		return policyStatus;
	}

	@Override
	public boolean updatePassword(CustomerBean cust) {
		boolean check=repo.updatePassword(cust);
		return false;
	}

}
