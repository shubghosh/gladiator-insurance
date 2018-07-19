package lti.insurance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table (name ="TICKET")
@SequenceGenerator(name = "TicketId", sequenceName = "TICKET_SEQ")
public class TicketBean {
	
	@Id 
	@GeneratedValue(generator = "TicketId")
	@Column(name="TICKET_ID")
	private long ticketId;
	
	@Column(name="POLICY_ID")
	private long policyId;
	
	@Column(name="STATUS")
	private  int status = 0;
	
	@Column(name="PROBLEM")
	private String problem;
	
	@Column(name="RAISED_BY")
	private  String raisedBy;
	
	public long getTicketId() {
		return ticketId;
	}
	public void setTicketId(long ticketId) {
		this.ticketId = ticketId;
	}
	public long getPolicyId() {
		return policyId;
	}
	public void setPolicyId(long policyId) {
		this.policyId = policyId;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getProblem() {
		return problem;
	}
	public void setProblem(String problem) {
		this.problem = problem;
	}
	public String getRaisedBy() {
		return raisedBy;
	}
	public void setRaisedBy(String raisedBy) {
		this.raisedBy = raisedBy;
	}
	

}
