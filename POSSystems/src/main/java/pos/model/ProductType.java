package pos.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="product_type")
public class ProductType {
	
	@Id
	@GeneratedValue
	private Integer type_id;
	
	private String type_name;
	
	//Constructors
	public ProductType() {
		super();
	}

	public ProductType(Integer type_id, String type_name) {
		super();
		this.type_id = type_id;
		this.type_name = type_name;
	}

	//Getters & Setters
	public Integer getType_id() {
		return type_id;
	}

	public void setType_id(Integer type_id) {
		this.type_id = type_id;
	}

	public String getType_name() {
		return type_name;
	}

	public void setType_name(String type_name) {
		this.type_name = type_name;
	}	
}
