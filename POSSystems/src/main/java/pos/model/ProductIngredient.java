package pos.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
@Table(name="product_ingredient")
public class ProductIngredient {
	
	@Id
	@GeneratedValue
	private Integer ingredient_id;
	
	private String ingredient_name;
	
	@ManyToMany(fetch=FetchType.EAGER)
	@Cascade ({CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
	    @JoinTable(name="product_has_product_ingredient",
	            joinColumns=@JoinColumn(name="product_ingredient_id"),
	            inverseJoinColumns=@JoinColumn(name="product_id")
	        )
	private Set<Product> products = new HashSet<Product>();
	
	//Constructors
	public ProductIngredient() {
		super();
	}
	
	public ProductIngredient(Integer ingredient_id, String ingredient_name, Set<Product> products) {
		super();
		this.ingredient_id = ingredient_id;
		this.ingredient_name = ingredient_name;
		this.products = products;
	}
	
	//Getters & Setters
	public Integer getIngredient_id() {
		return ingredient_id;
	}
	
	public void setIngredient_id(Integer ingredient_id) {
		this.ingredient_id = ingredient_id;
	}
	
	public String getIngredient_name() {
		return ingredient_name;
	}
	
	public void setIngredient_name(String ingredient_name) {
		this.ingredient_name = ingredient_name;
	}	
	
	public Set<Product> getProducts() {
		return products;
	}
	
	public void setProducts(Set<Product> products) {
		this.products = products;
	}
}
