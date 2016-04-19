package pos.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pos.dao.ProductTypeDAO;
import pos.model.ProductType;

@Service
@Transactional
public class ProductTypeServiceImpl implements ProductTypeService {

	@Autowired
	private ProductTypeDAO productTypeDAO;

	public void addProductType(ProductType productType) {
		productTypeDAO.addProductType(productType);
	}

	public void updateProductType(ProductType productType) {
		productTypeDAO.updateProductType(productType);
	}

	public ProductType getProductType(int productType_id) {
		try {

			return productTypeDAO.getProductType(productType_id);
		} catch (Exception e) {
			System.out.println("ProductTypeServiceImpl : " + e.toString());
			return null;
		}
	}

	public void deleteProductType(int productType_id) {

		try {
			productTypeDAO.deleteProductType(productType_id);
		} catch (Exception e) {
			System.out.println("ProductTypeServiceImpl delete : " + e.toString());

		}
	}

	@Override
	public List<ProductType> getProductTypes() {
		return productTypeDAO.getProductTypes();
	}

}
