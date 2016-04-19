package pos.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pos.model.ProductCategory;
import pos.service.ProductCategoryService;

@Controller
public class MenuController {
	
	@Autowired
	private ProductCategoryService productCategoryService;
	
	@RequestMapping(value="/menu", method = RequestMethod.GET)
	public ModelAndView menuPage(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("Menu");
		
		List<ProductCategory> productCategories = productCategoryService.getProductCategories();
		
		modelAndView.addObject("productCategories", productCategories);
		return modelAndView;
	}

}
