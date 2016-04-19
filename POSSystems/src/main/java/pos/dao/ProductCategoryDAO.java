package pos.dao;

import java.util.List;

import pos.model.ProductCategory;

public interface ProductCategoryDAO {
	public void addProductCategory(ProductCategory productCategory);
	public void updateProductCategory(ProductCategory productCategory);
	public ProductCategory getProductCategory(int productCategory_id);
	public void deleteProductCategory(int productCategory_id);
	public List<ProductCategory> getProductCategorys();
}
