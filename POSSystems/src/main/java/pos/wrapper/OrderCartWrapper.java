package pos.wrapper;

import javax.validation.Valid;

import pos.model.Cart;
import pos.model.Order;

public class OrderCartWrapper {
	
	private Cart cart;
	
	@Valid
	private Order order;
	
	private String cart_data;
	
	//Constructors
	public OrderCartWrapper() {
		super();
	}
	
	public OrderCartWrapper(Cart cart, Order order, String cart_data) {
		super();
		this.cart = cart;
		this.order = order;
		this.cart_data = cart_data;
	}
	
	//Getters & Setters
	public Cart getCart() {
		return cart;
	}
	
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	
	public Order getOrder() {
		return order;
	}
	
	public void setOrder(Order order) {
		this.order = order;
	}

	public String getCart_data() {
		return cart_data;
	}

	public void setCart_data(String cart_data) {
		this.cart_data = cart_data;
	}
}
