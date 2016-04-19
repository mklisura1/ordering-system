package pos.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
@Table(name="customer")
public class Customer {
	
	@Id
	@GeneratedValue
	private Integer customer_id;
	
	private String customer_name;
	
	private String customer_phone;
	
	private String customer_email;
	
	@OneToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="customer_address")
	@Cascade({CascadeType.SAVE_UPDATE})
	private Address customerAddress;
	
	//Constructors
	public Customer() {
		super();
	}

	public Customer(Integer customer_id, String customer_name, String customer_phone, String customer_email,
			Address customerAddress) {
		super();
		this.customer_id = customer_id;
		this.customer_name = customer_name;
		this.customer_phone = customer_phone;
		this.customer_email = customer_email;
		this.customerAddress = customerAddress;
	}

	//Getters & Setters
	public Integer getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(Integer customer_id) {
		this.customer_id = customer_id;
	}

	public String getCustomer_name() {
		return customer_name;
	}

	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}

	public String getCustomer_phone() {
		return customer_phone;
	}

	public void setCustomer_phone(String customer_phone) {
		this.customer_phone = customer_phone;
	}

	public String getCustomer_email() {
		return customer_email;
	}

	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}

	public Address getCustomerAddress() {
		return customerAddress;
	}

	public void setCustomerAddress(Address customerAddress) {
		this.customerAddress = customerAddress;
	}	
}
