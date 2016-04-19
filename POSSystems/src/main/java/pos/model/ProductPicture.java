package pos.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="product_picture")
public class ProductPicture {
	
	@Id
	@GeneratedValue
	private Integer picture_id;
	
	private String picture_name;
	
	private String picture_thumb;
	
	private String picture_full;
	
	//Constructors
	public ProductPicture() {
		super();
	}
	
	public ProductPicture(Integer picture_id, String picture_name, String picture_thumb, String picture_full) {
		super();
		this.picture_id = picture_id;
		this.picture_name = picture_name;
		this.picture_thumb = picture_thumb;
		this.picture_full = picture_full;
	}

	//Getters & Setters

	public Integer getPicture_id() {
		return picture_id;
	}

	public void setPicture_id(Integer picture_id) {
		this.picture_id = picture_id;
	}

	public String getPicture_name() {
		return picture_name;
	}

	public void setPicture_name(String picture_name) {
		this.picture_name = picture_name;
	}

	public String getPicture_thumb() {
		return picture_thumb;
	}

	public void setPicture_thumb(String picture_thumb) {
		this.picture_thumb = picture_thumb;
	}

	public String getPicture_full() {
		return picture_full;
	}

	public void setPicture_full(String picture_full) {
		this.picture_full = picture_full;
	}
}
