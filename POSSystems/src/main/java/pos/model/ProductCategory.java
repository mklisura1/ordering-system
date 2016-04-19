package pos.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
@Table(name="product_category")
public class ProductCategory {
	
	@Id
	@GeneratedValue
	private Integer category_id;
	
	private String category_name;
	
	@OneToMany(mappedBy = "productCategory", fetch=FetchType.EAGER)
	@Cascade({CascadeType.ALL})
	private Set<Product> products = new HashSet<Product>();
	
	//Constructors
	public ProductCategory() {
		super();
	}
	
	public ProductCategory(Integer category_id, String category_name, Set<Product> products) {
		super();
		this.category_id = category_id;
		this.category_name = category_name;
		this.products = products;
	}
	
	//Getters & Setters
	public Integer getCategory_id() {
		return category_id;
	}

	public void setCategory_id(Integer category_id) {
		this.category_id = category_id;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public Set<Product> getProducts() {
		return products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}
}
