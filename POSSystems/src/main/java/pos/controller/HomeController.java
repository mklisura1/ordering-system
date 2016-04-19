package pos.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;


import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public ModelAndView indexPage() {
		return new ModelAndView("Index");
	}
	
	@RequestMapping(value="/index", method = RequestMethod.GET)
	public ModelAndView indexPageRedirect() {
		return new ModelAndView("Index");
	}
}
