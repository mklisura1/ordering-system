package pos.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pos.model.Contact;

@Controller
public class ContactController {

	/*
	 * GET Metoda za prikazivanje viewa za kontakt
	 */
	@RequestMapping(value="/contact", method = RequestMethod.GET)
	public ModelAndView reservationPage(@ModelAttribute("contact") Contact contact,
			HttpServletRequest request) 
	{
		ModelAndView modelAndView = new ModelAndView("Contact");
		modelAndView.addObject("contact", contact);
		return modelAndView;
	}
	
	
	/*
	 * POST Metoda za spremanje kontakta
	 */
	@RequestMapping(value="/contact", method = RequestMethod.POST)
	public ModelAndView reservationPage(@Valid @ModelAttribute("contact") Contact contact, BindingResult result,
			HttpServletRequest request) 
	{
		
		if (result.hasErrors()) 
		{
			ModelAndView modelAndView = new ModelAndView("Contact");
			modelAndView.addObject("contact", contact);
			return modelAndView;
		}

		try {
			
			/*
			 * Pozvati metodu za slanje maila
			 */
			
			return new ModelAndView("redirect:/index");
		} catch (Exception e) {
			System.out.println("E:" + e.toString());
		}
		return new ModelAndView("redirect:index");
	}

}
