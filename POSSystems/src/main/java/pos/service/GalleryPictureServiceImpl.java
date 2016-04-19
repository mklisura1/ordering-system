package pos.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pos.dao.GalleryPictureDAO;
import pos.model.GalleryPicture;

@Service
@Transactional
public class GalleryPictureServiceImpl implements GalleryPictureService {

	@Autowired
	private GalleryPictureDAO galleryPictureDAO;

	public void addGalleryPicture(GalleryPicture galleryPicture) {
		galleryPictureDAO.addGalleryPicture(galleryPicture);
	}

	public void updateGalleryPicture(GalleryPicture galleryPicture) {
		galleryPictureDAO.updateGalleryPicture(galleryPicture);
	}

	public GalleryPicture getGalleryPicture(int picture_id) {
		try {

			return galleryPictureDAO.getGalleryPicture(picture_id);
		} catch (Exception e) {
			System.out.println("GalleryPictureServiceImpl : " + e.toString());
			return null;
		}
	}

	public void deleteGalleryPicture(int picture_id) {

		try {
			galleryPictureDAO.deleteGalleryPicture(picture_id);
		} catch (Exception e) {
			System.out.println("GalleryPictureServiceImpl delete : " + e.toString());

		}
	}

	@Override
	public List<GalleryPicture> getGalleryPictures() {
		return galleryPictureDAO.getGalleryPictures();
	}

}
