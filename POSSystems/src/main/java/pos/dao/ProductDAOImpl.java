package pos.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pos.model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	

	public void addProduct(Product product) 
	{
		getCurrentSession().save(product);
	}
	
	public void updateProduct(Product product) 
	{
		getCurrentSession().update(product);
	}


	public Product getProduct(int product_id) {
		try {
			
		Product c = (Product) getCurrentSession().get(Product.class, product_id);
		return c;
		}
		catch (Exception e) {
			System.out.println("Error ProductDAOImpl : " + e.toString());
			return null;
		}
	}


	public void deleteProduct(int product_id) {
		try {
			
		Product product = getProduct(product_id);
		if (product != null) {
			getCurrentSession().delete(product);
		}
		}
		catch (Exception e) {
			System.out.println("Error ProductDAOImpl delete: " + e.toString());
		}
		
	}

	@SuppressWarnings("unchecked")
	public List<Product> getProducts() {
		return getCurrentSession().createQuery("from Product").list();
	}
}
