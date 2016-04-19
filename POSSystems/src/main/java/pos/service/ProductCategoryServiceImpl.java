package pos.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pos.dao.ProductCategoryDAO;
import pos.model.ProductCategory;

@Service
@Transactional
public class ProductCategoryServiceImpl implements ProductCategoryService {

	@Autowired
	private ProductCategoryDAO productCategoryDAO;

	public void addProductCategory(ProductCategory productCategory) {
		productCategoryDAO.addProductCategory(productCategory);
	}

	public void updateProductCategory(ProductCategory productCategory) {
		productCategoryDAO.updateProductCategory(productCategory);
	}

	public ProductCategory getProductCategory(int productCategory_id) {
		try {

			return productCategoryDAO.getProductCategory(productCategory_id);
		} catch (Exception e) {
			System.out.println("ProductCategoryServiceImpl : " + e.toString());
			return null;
		}
	}

	public void deleteProductCategory(int productCategory_id) {

		try {
			productCategoryDAO.deleteProductCategory(productCategory_id);
		} catch (Exception e) {
			System.out.println("ProductCategoryServiceImpl delete : " + e.toString());

		}
	}

	@Override
	public List<ProductCategory> getProductCategories() {
		return productCategoryDAO.getProductCategorys();
	}

}
