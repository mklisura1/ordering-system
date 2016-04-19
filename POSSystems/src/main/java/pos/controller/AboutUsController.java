package pos.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class AboutUsController {

	/*
	 * GET Metoda za prikazivanje viewa za about us
	 */
	@RequestMapping(value="/aboutus", method = RequestMethod.GET)
	public ModelAndView reservationPage(HttpServletRequest request) 
	{
		ModelAndView modelAndView = new ModelAndView("AboutUs");
		return modelAndView;
	}
}
