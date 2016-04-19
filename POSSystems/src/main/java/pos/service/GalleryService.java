package pos.service;

import java.util.List;

import pos.model.Gallery;

public interface GalleryService {
	public void addGallery(Gallery gallery);
	public void updateGallery(Gallery gallery);
	public Gallery getGallery(int gallery_id);
	public void deleteGallery(int gallery_id);
	public List<Gallery> getGalleries();
}
