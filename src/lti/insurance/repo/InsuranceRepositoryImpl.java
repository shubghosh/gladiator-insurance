package lti.insurance.repo;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lti.insurance.bean.AadharBean;
import lti.insurance.bean.CustomerBean;
import lti.insurance.bean.ExistingCustomerBean;
import lti.insurance.bean.InvoiceBean;
import lti.insurance.bean.LoginBean;
import lti.insurance.bean.SignupBean;
import lti.insurance.bean.StaffBean;
import lti.insurance.bean.StaffLogin;
import lti.insurance.bean.TicketBean;
import lti.insurance.bean.UserBean;
import lti.insurance.bean.VehicleBean;

@Repository
public class InsuranceRepositoryImpl implements InsuranceRepository {

	@Autowired
	private SessionFactory factory;

	@Override // For login validation
	public CustomerBean validate(LoginBean login) {
		Session session = factory.openSession();

		CustomerBean cust = (CustomerBean) session.get(CustomerBean.class, login.getEmail());
		if (cust != null) {
			return cust;
		} else {
			return null;
		}
	}

	// To verify aadhar exists or not2
	public UserBean verify(long aadhar) {
		Session session = factory.openSession();

		UserBean sign = (UserBean) session.get(UserBean.class, aadhar);
		System.out.println("In Repo:" + sign);

		if (sign != null) {
			return sign;
		} else {
			return null;
		}
	}

	@Override
	public boolean save(CustomerBean cust) {
		Session session = factory.openSession();
		Transaction txn = session.getTransaction();

		try {
			txn.begin();
			session.save(cust);
			txn.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			txn.rollback();
			return false;
		}
	}

	public boolean check(UserBean user) {
		Session session = factory.openSession();
		Transaction txn = session.getTransaction();
		try {
			txn.begin();
			session.save(user);
			txn.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			txn.rollback();
			return false;
		}
	}

	@Override
	public boolean checkExisting(long aadhar) {
		String hql = "from CustomerBean where aadhar=:adr";
		Session session = factory.openSession();

		Query query = session.createQuery(hql);
		query.setParameter("adr", aadhar);
		if (query.uniqueResult() != null)
			return true;
		else
			return false;
	}

	@SuppressWarnings("unused")
	@Override
	public VehicleBean getQuote(VehicleBean vehicle) {

		Session session = factory.openSession();

		VehicleBean myVehicle = (VehicleBean) session.get(VehicleBean.class, vehicle.getRegisterNo());

		System.out.println("In repo-----------------------------------");
		

		if(myVehicle!=null) {
			System.out.println("In Repo:" + myVehicle.getManufactureYear());
			System.out.println("In Repo:" + myVehicle.getPrice());
			System.out.println("In repo:" + myVehicle.getVehicleType());
			return myVehicle;}
		else
			return null;

	}

	@Override
	public boolean saveExisting(TicketBean ticket) {

		Session session = factory.openSession();
		Transaction txn = session.getTransaction();

		try {
			txn.begin();
			session.save(ticket);
			txn.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			txn.rollback();
			return false;
		}

	}

	@Override
	public List<ExistingCustomerBean> getCustomerInformation() {
		Session session = factory.openSession();
		String hql = "from ExistingCustomerBean";

		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<ExistingCustomerBean> customerDetails = query.list();
		if (customerDetails.size() != 0) {
			System.out.println("----------------------");
			return customerDetails;
		} else
			return null;
	}

	@Override
	public StaffBean staffValidate(StaffLogin staffLogin) {

		Session session = factory.openSession();

		StaffBean staff = (StaffBean) session.get(StaffBean.class, staffLogin.getStaffEmail());
		if (staff != null && staff.getStaffPassword().equals(staffLogin.getStaffPassword())) {
			System.out.println("In repo staff validate-----------");
			return staff;
		} else {
			return null;
		}

	}

	@Override
	public UserBean fetchCustomerInformation(String email) {
		Session session = factory.openSession();
		UserBean user = null;
		CustomerBean customer = (CustomerBean) session.get(CustomerBean.class, email);
		if (customer != null) {
			user = (UserBean) session.get(UserBean.class, customer.getAadhar());
			System.out.println("In fetchCustomerInformation-----" + user);
		}
		if (user != null)
			return user;
		else
			return null;
	}

	@Override
	public boolean buy(ExistingCustomerBean cust) {

		Session session = factory.openSession();
		Transaction txn = session.getTransaction();

		try {
			txn.begin();
			session.save(cust);
			txn.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			txn.rollback();
			return false;
		}

	}

	@Override
	public List<TicketBean> getTicketInformation() {
		Session session = factory.openSession();
		String hql = "from TicketBean";

		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<TicketBean> ticket = query.list();
		if (ticket.size() != 0) {
			System.out.println("----------------------");
			return ticket;
		} else
			return null;

	}

	@Override
	public TicketBean changeStatus(long ticketId, int status) {
		Session session = factory.openSession();
		Transaction txn = session.getTransaction();
		TicketBean tkt = (TicketBean) session.get(TicketBean.class, ticketId);

		try {
			txn.begin();
			tkt.setStatus(status);
			session.saveOrUpdate(tkt);
			txn.commit();
			return tkt;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			txn.rollback();
			return null;
		}
	}

	@Override
	public boolean save(InvoiceBean invoice) {
		Session session = factory.openSession();
		Transaction txn = session.getTransaction();

		try {
			txn.begin();
			session.save(invoice);
			txn.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			txn.rollback();
			return false;
		}

	}

	@Override
	public List<InvoiceBean> getPolicyName(String customerId) {
		Session session = factory.openSession();
		String hql="from InvoiceBean where customerId=:em";
		Query query=session.createQuery(hql);
		query.setParameter("em", customerId);
		
		System.out.println("in repo try--------------");
		return query.list();

	}

	@Override
	public List<TicketBean> getPolicyStatus(String customerId) {
		Session session=factory.openSession();
		String hql="from TicketBean where raisedBy=:em";
		Query query=session.createQuery(hql);
		query.setParameter("em", customerId);
		System.out.println("oooooooo");
		return query.list();
	}

	@Override
	public boolean updatePassword(CustomerBean cust) {
		Session session=factory.openSession();
		Transaction txn = session.getTransaction();
		System.out.println("------------------------------------------------------"+cust.getPassword());
		System.out.println("------------------------------------------------------"+cust.getEmail());

		String hql="";
		try {
			txn.begin();
			hql="update CustomerBean c set c.password=:pass where c.email=:em";
			Query query=session.createQuery(hql);
			query.setParameter("pass", cust.getPassword());
			query.setParameter("em", cust.getEmail());
			int res = query.executeUpdate();

			if(res!=0)
				return true;
		} catch (Exception e) {
			e.printStackTrace();
			txn.rollback();
			return false;
		}
		return false;
	}	
}
