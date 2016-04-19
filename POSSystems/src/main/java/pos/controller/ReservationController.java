package pos.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pos.model.Reservation;
import pos.service.ReservationService;

@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService reservationService;
	
	/*
	 * GET Metoda za prikazivanje viewa za rezervacije
	 */
	@RequestMapping(value="/reservation", method = RequestMethod.GET)
	public ModelAndView reservationPage(@ModelAttribute("reservation") Reservation reservation,
			HttpServletRequest request) 
	{
		ModelAndView modelAndView = new ModelAndView("Reservation");
		modelAndView.addObject("reservation", reservation);
		return modelAndView;
	}
	
	
	/*
	 * POST Metoda za spremanje rezervacije
	 */
	@RequestMapping(value="/reservation", method = RequestMethod.POST)
	public ModelAndView reservationPage(@Valid @ModelAttribute("reservation") Reservation reservation, BindingResult result,
			HttpServletRequest request) 
	{
		
		if (result.hasErrors()) 
		{
			ModelAndView modelAndView = new ModelAndView("Reservation");
			modelAndView.addObject("reservation", reservation);
			return modelAndView;
		}

		try {
			reservationService.addReservation(reservation);

			return new ModelAndView("redirect:/index");
		} catch (Exception e) {
			System.out.println("E:" + e.toString());
		}
		return new ModelAndView("redirect:/index");
	}

}
