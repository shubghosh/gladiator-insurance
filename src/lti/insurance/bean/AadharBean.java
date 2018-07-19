package lti.insurance.bean;

import javax.persistence.Entity;

@Entity
public class AadharBean {

	long uid;

	public long getUid() {
		return uid;
	}

	public void setUid(long uid) {
		this.uid = uid;
	}

}
