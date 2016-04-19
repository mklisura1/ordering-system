package pos.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pos.model.ProductPicture;

@Repository
public class ProductPictureDAOImpl implements ProductPictureDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	

	public void addProductPicture(ProductPicture productPicture) 
	{
		getCurrentSession().save(productPicture);
	}
	
	public void updateProductPicture(ProductPicture productPicture) 
	{
		getCurrentSession().update(productPicture);
	}


	public ProductPicture getProductPicture(int productPicture_id) {
		try {
			
		ProductPicture c = (ProductPicture) getCurrentSession().get(ProductPicture.class, productPicture_id);
		return c;
		}
		catch (Exception e) {
			System.out.println("Error ProductPictureDAOImpl : " + e.toString());
			return null;
		}
	}


	public void deleteProductPicture(int productPicture_id) {
		try {
			
		ProductPicture productPicture = getProductPicture(productPicture_id);
		if (productPicture != null) {
			getCurrentSession().delete(productPicture);
		}
		}
		catch (Exception e) {
			System.out.println("Error ProductPictureDAOImpl delete: " + e.toString());
		}
		
	}

	@SuppressWarnings("unchecked")
	public List<ProductPicture> getProductPictures() {
		return getCurrentSession().createQuery("from ProductPicture").list();
	}
}
