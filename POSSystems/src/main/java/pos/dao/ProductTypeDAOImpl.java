package pos.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pos.model.ProductType;

@Repository
public class ProductTypeDAOImpl implements ProductTypeDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	

	public void addProductType(ProductType productType) 
	{
		getCurrentSession().save(productType);
	}
	
	public void updateProductType(ProductType productType) 
	{
		getCurrentSession().update(productType);
	}


	public ProductType getProductType(int productType_id) {
		try {
			
		ProductType c = (ProductType) getCurrentSession().get(ProductType.class, productType_id);
		return c;
		}
		catch (Exception e) {
			System.out.println("Error ProductTypeDAOImpl : " + e.toString());
			return null;
		}
	}


	public void deleteProductType(int productType_id) {
		try {
			
		ProductType productType = getProductType(productType_id);
		if (productType != null) {
			getCurrentSession().delete(productType);
		}
		}
		catch (Exception e) {
			System.out.println("Error ProductTypeDAOImpl delete: " + e.toString());
		}
		
	}

	@SuppressWarnings("unchecked")
	public List<ProductType> getProductTypes() {
		return getCurrentSession().createQuery("from ProductType").list();
	}
}
