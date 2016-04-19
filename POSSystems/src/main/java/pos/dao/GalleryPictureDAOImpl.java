package pos.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pos.model.GalleryPicture;

@Repository
public class GalleryPictureDAOImpl implements GalleryPictureDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	

	public void addGalleryPicture(GalleryPicture galleryPicture) 
	{
		getCurrentSession().save(galleryPicture);
	}
	
	public void updateGalleryPicture(GalleryPicture galleryPicture) 
	{
		getCurrentSession().update(galleryPicture);
	}


	public GalleryPicture getGalleryPicture(int picture_id) {
		try {
			
		GalleryPicture c = (GalleryPicture) getCurrentSession().get(GalleryPicture.class, picture_id);
		return c;
		}
		catch (Exception e) {
			System.out.println("Error GalleryPictureDAOImpl : " + e.toString());
			return null;
		}
	}


	public void deleteGalleryPicture(int picture_id) {
		try {
			
		GalleryPicture galleryPicture = getGalleryPicture(picture_id);
		if (galleryPicture != null) {
			getCurrentSession().delete(galleryPicture);
		}
		}
		catch (Exception e) {
			System.out.println("Error GalleryPictureDAOImpl delete: " + e.toString());
		}
		
	}

	@SuppressWarnings("unchecked")
	public List<GalleryPicture> getGalleryPictures() {
		return getCurrentSession().createQuery("from GalleryPicture").list();
	}
}
