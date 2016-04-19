package pos.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name="b_address")
public class Address {
	
	@Id
	@GeneratedValue
	private Integer address_id;
	
	@Size(min=3, max=20)
	private String state;
	
	@Size(min=3, max=20)
	private String city;
	
	@Size(min=3, max=20)
	private String address_street;
	
	@Pattern(regexp="[0-9]+")
	private String address_number;
	
	@Pattern(regexp="[0-9]+")
	private String zip_code;
	
	
	public Address() { }
	
	public Address(Integer address_id, String state, String city, String address_street, String address_number, String zip_code) {
		this.address_id = address_id;
		this.state = state;
		this.city = city;
		this.address_street = address_street;
		this.address_number = address_number;
		this.zip_code = zip_code;
	}


	//Getters & Setters
	public Integer getAddress_id() {
		return address_id;
	}
	public void setAddress_id(Integer address_id) {
		this.address_id = address_id;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress_street() {
		return address_street;
	}
	public void setAddress_street(String address_street) {
		this.address_street = address_street;
	}
	public String getAddress_number() {
		return address_number;
	}
	public void setAddress_number(String address_number) {
		this.address_number = address_number;
	}
	public String getZip_code() {
		return zip_code;
	}
	public void setZip_code(String zip_code) {
		this.zip_code = zip_code;
	}
}
