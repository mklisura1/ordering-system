package pos.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pos.dao.ProductDAO;
import pos.model.Product;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;

	public void addProduct(Product product) {
		productDAO.addProduct(product);
	}

	public void updateProduct(Product product) {
		productDAO.updateProduct(product);
	}

	public Product getProduct(int product_id) {
		try {

			return productDAO.getProduct(product_id);
		} catch (Exception e) {
			System.out.println("ProductServiceImpl : " + e.toString());
			return null;
		}
	}

	public void deleteProduct(int product_id) {

		try {
			productDAO.deleteProduct(product_id);
		} catch (Exception e) {
			System.out.println("ProductServiceImpl delete : " + e.toString());

		}
	}

	@Override
	public List<Product> getProducts() {
		return productDAO.getProducts();
	}

}
