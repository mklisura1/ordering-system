package pos.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pos.model.ProductIngredient;

@Repository
public class ProductIngredientDAOImpl implements ProductIngredientDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	

	public void addProductIngredient(ProductIngredient productIngredient) 
	{
		getCurrentSession().save(productIngredient);
	}
	
	public void updateProductIngredient(ProductIngredient productIngredient) 
	{
		getCurrentSession().update(productIngredient);
	}


	public ProductIngredient getProductIngredient(int productIngredient_id) {
		try {
			
		ProductIngredient c = (ProductIngredient) getCurrentSession().get(ProductIngredient.class, productIngredient_id);
		return c;
		}
		catch (Exception e) {
			System.out.println("Error ProductIngredientDAOImpl : " + e.toString());
			return null;
		}
	}


	public void deleteProductIngredient(int productIngredient_id) {
		try {
			
		ProductIngredient productIngredient = getProductIngredient(productIngredient_id);
		if (productIngredient != null) {
			getCurrentSession().delete(productIngredient);
		}
		}
		catch (Exception e) {
			System.out.println("Error ProductIngredientDAOImpl delete: " + e.toString());
		}
		
	}

	@SuppressWarnings("unchecked")
	public List<ProductIngredient> getProductIngredients() {
		return getCurrentSession().createQuery("from ProductIngredient").list();
	}
}
