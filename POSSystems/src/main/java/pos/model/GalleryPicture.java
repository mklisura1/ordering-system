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
@Table(name="gallery_picture")
public class GalleryPicture {
	
	@Id
	@GeneratedValue
	private Integer picture_id;
	
	private String picture_name;
	
	private String picture_thumb;
	
	private String picture_full;
	
	private Integer picture_width;
	
	private Integer picture_height;
	
	private String picture_caption;
	
	private String picture_author;
	
	@ManyToMany(fetch=FetchType.EAGER)
	@Cascade ({CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
	    @JoinTable(name="gallery_has_gallery_picture",
	            joinColumns=@JoinColumn(name="picture_id"),
	            inverseJoinColumns=@JoinColumn(name="gallery_id")
	        )
	private Set<Gallery> galleries = new HashSet<Gallery>();
	
	//Constructors
	public GalleryPicture() {
		super();
	}
	
	public GalleryPicture(Integer picture_id, String picture_name, String picture_thumb, String picture_full, String picture_caption, Integer picture_width, Integer picture_height, String picture_author, Set<Gallery> galleries) {
		super();
		this.picture_id = picture_id;
		this.picture_name = picture_name;
		this.picture_thumb = picture_thumb;
		this.picture_full = picture_full;
		this.picture_width = picture_width;
		this.picture_height = picture_height;
		this.picture_caption = picture_caption;
		this.picture_author = picture_author;
		this.galleries = galleries;
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
	
	public Integer getPicture_width() {
		return picture_width;
	}

	public void setPicture_width(Integer picture_width) {
		this.picture_width = picture_width;
	}

	public Integer getPicture_height() {
		return picture_height;
	}

	public void setPicture_height(Integer picture_height) {
		this.picture_height = picture_height;
	}
	
	public String getPicture_caption() {
		return picture_caption;
	}

	public void setPicture_caption(String picture_caption) {
		this.picture_caption = picture_caption;
	}
	
	public String getPicture_author() {
		return picture_author;
	}

	public void setPicture_author(String picture_author) {
		this.picture_author = picture_author;
	}

	public Set<Gallery> getGalleries() {
		return galleries;
	}

	public void setGalleries(Set<Gallery> galleries) {
		this.galleries = galleries;
	}	
}
