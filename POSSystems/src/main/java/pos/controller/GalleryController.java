package pos.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pos.model.Gallery;
import pos.service.GalleryService;

@Controller
public class GalleryController {
	
	@Autowired
	private GalleryService galleryService;

	/*
	 * GET Metoda za prikazivanje galerije
	 */
	@RequestMapping(value="/gallery", method = RequestMethod.GET)
	public ModelAndView galeryPage(HttpServletRequest request) {
		
		ModelAndView modelAndView = new ModelAndView("Gallery");
		
		List<Gallery> galleries = new ArrayList<Gallery>();
		
		galleries = galleryService.getGalleries();
		
		modelAndView.addObject("galleries", galleries);
		
		return modelAndView;
	}
}
