package pos.model;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;


public class Contact {
	
	@NotEmpty
	private String customer_first_name;	
	@NotEmpty
	private String customer_last_name;
	@Email @NotEmpty
	private String customer_email;
	@NotEmpty
	private String customer_phone;
	@NotEmpty
	private String category;
	@NotEmpty
	private String subject;
	@NotEmpty
	private String message;
	
	
	//Constructors
	public Contact() {
		super();
	}

	public Contact(String customer_first_name, String customer_last_name, String customer_email, String customer_phone,
			String category, String subject, String message) {
		super();
		this.customer_first_name = customer_first_name;
		this.customer_last_name = customer_last_name;
		this.customer_email = customer_email;
		this.customer_phone = customer_phone;
		this.category = category;
		this.subject = subject;
		this.message = message;
	}

	//Getters & Setters
	public String getCustomer_first_name() {
		return customer_first_name;
	}
	public void setCustomer_first_name(String customer_first_name) {
		this.customer_first_name = customer_first_name;
	}
	public String getCustomer_last_name() {
		return customer_last_name;
	}
	public void setCustomer_last_name(String customer_last_name) {
		this.customer_last_name = customer_last_name;
	}
	public String getCustomer_email() {
		return customer_email;
	}
	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}
	public String getCustomer_phone() {
		return customer_phone;
	}
	public void setCustomer_phone(String customer_phone) {
		this.customer_phone = customer_phone;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
}
	
	