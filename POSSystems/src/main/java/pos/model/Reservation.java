package pos.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Future;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="reservation")
public class Reservation {
	
	@Id
	@GeneratedValue
	private Integer reservation_id;
	
	@NotEmpty
	private String customer_name;
	@Email @NotEmpty
	private String customer_email;
	@NotEmpty
	private String customer_phone;
	@NotNull
	private Integer customer_number_person;
	@Future
	@NotNull
	@DateTimeFormat(pattern = "dd/MM/yyyy") 
	private Date customer_reservation_date;
	@NotEmpty
	//@NotNull
	private String customer_reservation_time;
	
	//Constructors
	public Reservation() {
		super();
	}
	public Reservation(Integer reservation_id, String customer_name, String customer_email, String customer_phone,
			Integer customer_number_person, Date customer_reservation_date, String customer_reservation_time) {
		super();
		this.reservation_id = reservation_id;
		this.customer_name = customer_name;
		this.customer_email = customer_email;
		this.customer_phone = customer_phone;
		this.customer_number_person = customer_number_person;
		this.customer_reservation_date = customer_reservation_date;
		this.customer_reservation_time = customer_reservation_time;
	}
	
	//Getters & Setters
	public Integer getReservation_id() {
		return reservation_id;
	}
	public void setReservation_id(Integer reservation_id) {
		this.reservation_id = reservation_id;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
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
	public Integer getCustomer_number_person() {
		return customer_number_person;
	}
	public void setCustomer_number_person(Integer customer_number_person) {
		this.customer_number_person = customer_number_person;
	}
	public Date getCustomer_reservation_date() {
		return customer_reservation_date;
	}
	public void setCustomer_reservation_date(Date customer_reservation_date) {
		this.customer_reservation_date = customer_reservation_date;
	}
	public String getCustomer_reservation_time() {
		return customer_reservation_time;
	}
	public void setCustomer_reservation_time(String customer_reservation_time) {
		this.customer_reservation_time = customer_reservation_time;
	}
}
