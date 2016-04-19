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
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
@Table(name="product")
public class Product {
	
	@Id
	@GeneratedValue
	private Integer product_id;
	
	private String product_name;
	
	private Double product_price;
	
	private Double product_sale;
	
	@OneToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="product_type")
	@Cascade({CascadeType.SAVE_UPDATE})
	private ProductType productType;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name = "product_category")
	private ProductCategory productCategory;

	@OneToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="product_picture")
	@Cascade({CascadeType.SAVE_UPDATE})
	private ProductPicture productPicture;
	
	@ManyToMany(fetch=FetchType.EAGER)
	@Cascade({CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
    @JoinTable(name="product_has_product_ingredient",
            joinColumns=@JoinColumn(name="product_id"),
            inverseJoinColumns=@JoinColumn(name="product_ingredient_id")
        )
	private Set<ProductIngredient> productIngredients = new HashSet<ProductIngredient>();
	
	//Constructors
	public Product() {
		super();
	}
	
	public Product(Integer product_id, String product_name, Double product_price, Double product_sale,
			ProductType productType, ProductCategory productCategory, ProductPicture productPicture,
			Set<ProductIngredient> productIngredients) {
		super();
		this.product_id = product_id;
		this.product_name = product_name;
		this.product_price = product_price;
		this.product_sale = product_sale;
		this.productType = productType;
		this.productCategory = productCategory;
		this.productPicture = productPicture;
		this.productIngredients = productIngredients;
	}
	
	//Getters & Setters
	public Integer getProduct_id() {
		return product_id;
	}

	public void setProduct_id(Integer product_id) {
		this.product_id = product_id;
	}
	
	public String getProduct_name() {
		return product_name;
	}
	
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	
	public Double getProduct_price() {
		return product_price;
	}
	
	public void setProduct_price(Double product_price) {
		this.product_price = product_price;
	}
	
	public void setProduct_price(Double product_price, Double product_sale) {
		this.product_price -= product_price * product_sale;
	}
	
	public Double getProduct_sale() {
		return product_sale;
	}
	
	public void setProduct_sale(Double product_sale) {
		this.product_sale = product_sale;
	}
	
	public ProductType getProductType() {
		return productType;
	}
	
	public void setProductType(ProductType productType) {
		this.productType = productType;
	}
	
	public ProductCategory getProductCategory() {
		return productCategory;
	}
	
	public void setProductCategory(ProductCategory productCategory) {
		this.productCategory = productCategory;
	}
	
	public ProductPicture getProductPicture() {
		return productPicture;
	}
	
	public void setProductPicture(ProductPicture productPicture) {
		this.productPicture = productPicture;
	}	
	
	public Set<ProductIngredient> getProductIngredients() {
		return productIngredients;
	}
	
	public void setProductIngredients(Set<ProductIngredient> productIngredients) {
		this.productIngredients = productIngredients;
	}
}
