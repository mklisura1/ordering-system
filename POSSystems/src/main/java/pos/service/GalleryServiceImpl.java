package pos.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pos.dao.GalleryDAO;
import pos.model.Gallery;

@Service
@Transactional
public class GalleryServiceImpl implements GalleryService {

	@Autowired
	private GalleryDAO galleryDAO;

	public void addGallery(Gallery gallery) {
		galleryDAO.addGallery(gallery);
	}

	public void updateGallery(Gallery gallery) {
		galleryDAO.updateGallery(gallery);
	}

	public Gallery getGallery(int gallery_id) {
		try {

			return galleryDAO.getGallery(gallery_id);
		} catch (Exception e) {
			System.out.println("GalleryServiceImpl : " + e.toString());
			return null;
		}
	}

	public void deleteGallery(int gallery_id) {

		try {
			galleryDAO.deleteGallery(gallery_id);
		} catch (Exception e) {
			System.out.println("GalleryServiceImpl delete : " + e.toString());

		}
	}

	@Override
	public List<Gallery> getGalleries() {
		return galleryDAO.getGalleries();
	}

}
