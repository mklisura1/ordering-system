package pos.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pos.dao.ProductPictureDAO;
import pos.model.ProductPicture;

@Service
@Transactional
public class ProductPictureServiceImpl implements ProductPictureService {

	@Autowired
	private ProductPictureDAO productPictureDAO;

	public void addProductPicture(ProductPicture productPicture) {
		productPictureDAO.addProductPicture(productPicture);
	}

	public void updateProductPicture(ProductPicture productPicture) {
		productPictureDAO.updateProductPicture(productPicture);
	}

	public ProductPicture getProductPicture(int productPicture_id) {
		try {

			return productPictureDAO.getProductPicture(productPicture_id);
		} catch (Exception e) {
			System.out.println("ProductPictureServiceImpl : " + e.toString());
			return null;
		}
	}

	public void deleteProductPicture(int productPicture_id) {

		try {
			productPictureDAO.deleteProductPicture(productPicture_id);
		} catch (Exception e) {
			System.out.println("ProductPictureServiceImpl delete : " + e.toString());

		}
	}

	@Override
	public List<ProductPicture> getProductPictures() {
		return productPictureDAO.getProductPictures();
	}

}
