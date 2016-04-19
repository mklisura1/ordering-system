package pos.service;

import java.util.List;

import pos.model.ProductType;

public interface ProductTypeService {
	public void addProductType(ProductType productType);
	public void updateProductType(ProductType productType);
	public ProductType getProductType(int productType_id);
	public void deleteProductType(int productType_id);
	public List<ProductType> getProductTypes();
}
