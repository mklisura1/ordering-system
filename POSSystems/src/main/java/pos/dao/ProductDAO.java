package pos.dao;

import java.util.List;

import pos.model.Product;

public interface ProductDAO {
	public void addProduct(Product product);
	public void updateProduct(Product product);
	public Product getProduct(int product_id);
	public void deleteProduct(int product_id);
	public List<Product> getProducts();
}
