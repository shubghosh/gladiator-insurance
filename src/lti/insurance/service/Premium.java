package lti.insurance.service;


/**
 * 
 * @author Vipul Maingi,Shubhankar ghosh 
 * @version1.0
 *
 */
public class Premium {
	public double value;
	public int year;
	public String type;
	public double premi;
	public String policyType;

	public String getPolicyType() {
		return policyType;
	}

	public void setPolicyType(String policyType) {
		this.policyType = policyType;
	}

	private static Premium premium;

	// Private constructor
	private Premium() {
	}
	
	// Singleton implementation
	public static Premium getInstance() {
		if (premium == null)
			premium = new Premium();
		
		return premium;
	}

	
	// Getters and Setters
	public double getPremi() {
		return premi;
	}

	public void setPremi(double premi) {
		this.premi = premi;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public double getValue() {
		return value;
	}

	public void setValue(double value) {
		this.value = value;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {

		this.year = year;
	}

}
