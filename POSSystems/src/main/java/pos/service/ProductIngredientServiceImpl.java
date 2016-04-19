package pos.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pos.dao.ProductIngredientDAO;
import pos.model.ProductIngredient;

@Service
@Transactional
public class ProductIngredientServiceImpl implements ProductIngredientService {

	@Autowired
	private ProductIngredientDAO productIngredientDAO;

	public void addProductIngredient(ProductIngredient productIngredient) {
		productIngredientDAO.addProductIngredient(productIngredient);
	}

	public void updateProductIngredient(ProductIngredient productIngredient) {
		productIngredientDAO.updateProductIngredient(productIngredient);
	}

	public ProductIngredient getProductIngredient(int productIngredient_id) {
		try {

			return productIngredientDAO.getProductIngredient(productIngredient_id);
		} catch (Exception e) {
			System.out.println("ProductIngredientServiceImpl : " + e.toString());
			return null;
		}
	}

	public void deleteProductIngredient(int productIngredient_id) {

		try {
			productIngredientDAO.deleteProductIngredient(productIngredient_id);
		} catch (Exception e) {
			System.out.println("ProductIngredientServiceImpl delete : " + e.toString());

		}
	}

	@Override
	public List<ProductIngredient> getProductIngredients() {
		return productIngredientDAO.getProductIngredients();
	}

}
