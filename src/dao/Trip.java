package dao;

public class Trip {
	public String city;
	public String state;
	public String country;
	public String code;
	public String purpose;
	public int duration;
	
	
	public Trip() {
		super();
	}


	public Trip(String city, String state, String country, String code, String purpose, int duration) {
		super();
		this.city = city;
		this.state = state;
		this.country = country;
		this.code = code;
		this.purpose = purpose;
		this.duration = duration;
	}


	public String getCity() {
		return city;
	}
	public String getState() {
		return state;
	}
	public String getCountry() {
		return country;
	}
	public String getCode() {
		return code;
	}
	public String getPurpose() {
		return purpose;
	}
	public int getDuration() {
		return duration;
	}


	public void setCity(String city) {
		this.city = city;
	}
	public void setState(String state) {
		this.state = state;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	
	
}