package pos.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="order")
public class Order {
	
	@Id
	@GeneratedValue
	private Integer order_id;
	
	private Date order_date;
	
	@OneToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="order_cart")
	@Cascade({CascadeType.SAVE_UPDATE})
	private Cart orderCart;
	
	@OneToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="order_status")
	@Cascade({CascadeType.SAVE_UPDATE})
	private OrderStatus orderStatus;
	
	@NotEmpty
	private String order_street;
	@NotEmpty
	private String order_street_number;
	@NotEmpty
	private String order_first_name;
	@Email @NotEmpty
	private String order_email;
	@NotEmpty
	private String order_phone;
	private String order_delivery_instructions;
	
	//Constructors
	public Order() {
		super();
	}
	
	public Order(Integer order_id, Date order_date, Cart orderCart, OrderStatus orderStatus, String order_street,
			String order_street_number, String order_first_name, String order_email, String order_phone, String order_delivery_instructions) {
		super();
		this.order_id = order_id;
		this.order_date = order_date;
		this.orderCart = orderCart;
		this.orderStatus = orderStatus;
		this.order_street = order_street;
		this.order_street_number = order_street_number;
		this.order_first_name = order_first_name;
		this.order_email = order_email;
		this.order_phone = order_phone;
		this.order_delivery_instructions = order_delivery_instructions;
	}
	
	//Getters & Setters
	public Integer getOrder_id() {
		return order_id;
	}

	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}

	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

	public Cart getOrderCart() {
		return orderCart;
	}

	public void setOrderCart(Cart orderCart) {
		this.orderCart = orderCart;
	}

	public OrderStatus getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(OrderStatus orderStatus) {
		this.orderStatus = orderStatus;
	}

	public String getOrder_street() {
		return order_street;
	}

	public void setOrder_street(String order_street) {
		this.order_street = order_street;
	}

	public String getOrder_street_number() {
		return order_street_number;
	}

	public void setOrder_street_number(String order_street_number) {
		this.order_street_number = order_street_number;
	}

	public String getOrder_first_name() {
		return order_first_name;
	}

	public void setOrder_first_name(String order_first_name) {
		this.order_first_name = order_first_name;
	}

	public String getOrder_delivery_instructions() {
		return order_delivery_instructions;
	}

	public void setOrder_delivery_instructions(String order_delivery_instructions) {
		this.order_delivery_instructions = order_delivery_instructions;
	}

	public String getOrder_email() {
		return order_email;
	}

	public void setOrder_email(String order_email) {
		this.order_email = order_email;
	}

	public String getOrder_phone() {
		return order_phone;
	}

	public void setOrder_phone(String order_phone) {
		this.order_phone = order_phone;
	}
}
