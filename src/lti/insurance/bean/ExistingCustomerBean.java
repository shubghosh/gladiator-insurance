package lti.insurance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "E_CUSTOMER")
@SequenceGenerator(name="PolicyId",sequenceName="POLICY_SEQ")
public class ExistingCustomerBean {

	@Id
	@GeneratedValue( generator ="PolicyId")
	@Column(name = "POLICY_ID")
	private long policyId;
	@Column(name = "EMAIL")
	private String email;

	public long getPolicyId() {
		return policyId;
	}

	public void setPolicyId(long policyId) {
		this.policyId = policyId;
	}
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
