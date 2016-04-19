package pos.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
@Table(name="cart")
public class Cart {
	
	@Id
	@GeneratedValue
	private Integer cart_id;
	
	
	
	//Constructors
	public Cart() {
		super();
	}

	//Getters & Setters
	
}
