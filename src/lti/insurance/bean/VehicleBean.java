package lti.insurance.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "vehicle")
public class VehicleBean {

	@Id
	@Column(name = "REGISTER_NO")
	String registerNo;

	@Column(name = "VEH_PRICE")
	long price;

	@Column(name = "MODEL")
	String model;

	@Column(name = "CHASIS_NO")
	String chasis;

	@Column(name = "MANUFACTURE_YEAR")
	int manufactureYear;

	@Column(name = "PURCHASE_YEAR")
	int purchaseYear;

	@Column(name = "VEHICLE_TYPE")
	String vehicleType;

	@Column(name = "ENGINE_CC")
	int engineCc;

	@Column(name = "BRAND")
	String brand;

	// long quote;

	/*
	 * public long getQuote() { return quote; } public void setQuote(long quote) {
	 * this.quote = quote; }
	 */
	public String getRegisterNo() {
		return registerNo;
	}

	public void setRegisterNo(String registerNo) {
		this.registerNo = registerNo;
	}

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getChasis() {
		return chasis;
	}

	public void setChasis(String chasis) {
		this.chasis = chasis;
	}

	public int getManufactureYear() {
		return manufactureYear;
	}

	public void setManufactureYear(int manufactureYear) {
		this.manufactureYear = manufactureYear;
	}

	public int getPurchaseYear() {
		return purchaseYear;
	}

	public void setPurchaseYear(int purchaseYear) {
		this.purchaseYear = purchaseYear;
	}

	public String getVehicleType() {
		return vehicleType;
	}

	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}

	public int getEngineCc() {
		return engineCc;
	}

	public void setEngineCc(int engineCc) {
		this.engineCc = engineCc;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}
	
	

}
