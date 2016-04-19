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
@Table(name="gallery")
public class Gallery {
	
	@Id
	@GeneratedValue
	private Integer gallery_id;
	
	private String gallery_name;
		
	@ManyToMany(fetch=FetchType.EAGER)
	@Cascade({CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
    @JoinTable(name="gallery_has_gallery_picture",
            joinColumns=@JoinColumn(name="gallery_id"),
            inverseJoinColumns=@JoinColumn(name="picture_id")
        )
	private Set<GalleryPicture> pictures = new HashSet<GalleryPicture>();

	//Constructors
	public Gallery() {
		super();
	}
	
	public Gallery(Integer gallery_id, String gallery_name, Set<GalleryPicture> pictures) {
		super();
		this.gallery_id = gallery_id;
		this.gallery_name = gallery_name;
		this.pictures = pictures;
	}

	//Getters & Setters
	public Integer getGallery_id() {
		return gallery_id;
	}

	public void setGallery_id(Integer gallery_id) {
		this.gallery_id = gallery_id;
	}

	public String getGallery_name() {
		return gallery_name;
	}

	public void setGallery_name(String gallery_name) {
		this.gallery_name = gallery_name;
	}

	public Set<GalleryPicture> getPictures() {
		return pictures;
	}

	public void setPictures(Set<GalleryPicture> pictures) {
		this.pictures = pictures;
	}
}
