package pos.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pos.model.ProductCategory;

@Repository
public class ProductCategoryDAOImpl implements ProductCategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	

	public void addProductCategory(ProductCategory productCategory) 
	{
		getCurrentSession().save(productCategory);
	}
	
	public void updateProductCategory(ProductCategory productCategory) 
	{
		getCurrentSession().update(productCategory);
	}


	public ProductCategory getProductCategory(int productCategory_id) {
		try {
			
		ProductCategory c = (ProductCategory) getCurrentSession().get(ProductCategory.class, productCategory_id);
		return c;
		}
		catch (Exception e) {
			System.out.println("Error ProductCategoryDAOImpl : " + e.toString());
			return null;
		}
	}


	public void deleteProductCategory(int productCategory_id) {
		try {
			
		ProductCategory productCategory = getProductCategory(productCategory_id);
		if (productCategory != null) {
			getCurrentSession().delete(productCategory);
		}
		}
		catch (Exception e) {
			System.out.println("Error ProductCategoryDAOImpl delete: " + e.toString());
		}
		
	}

	@SuppressWarnings("unchecked")
	public List<ProductCategory> getProductCategorys() {
		return getCurrentSession().createQuery("from ProductCategory").list();
	}
}
