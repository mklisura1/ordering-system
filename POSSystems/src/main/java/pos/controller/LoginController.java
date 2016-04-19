package pos.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pos.model.User;

@Controller
public class LoginController {

	@Autowired
	private pos.service.UserService userService;

	@Autowired
	private pos.service.EncryptionService encryptionService;

	// Logiranje korisnika na sistem
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginPage() {
		return new ModelAndView("LogIn");
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public @ResponseBody ModelAndView home(HttpServletRequest request, @RequestParam("username") String username,
			@RequestParam("password") String password) throws ServletException, IOException {

		ModelAndView modelAndView = null;

		try {

			User user = userService.getUserByUsername(username);

			if (user != null) {
				if (encryptionService.validatePassword(password, user.getUser_password_hash())) {

					// Kreiranje sesije za korisnika nakon uspjesnog logiranja
					HttpSession sess = request.getSession(true);
					
					sess.setAttribute("user", user);
					
					//limit trajanja sesije na 3 sata
					sess.setMaxInactiveInterval(10800);

					// Preuzimanje korisnika iz sesije
					//User user = (User)request.getSession().getAttribute("user");				
					
					modelAndView = new ModelAndView("home");
					modelAndView.addObject("user", user);
				} else {
					modelAndView = new ModelAndView("login");
					modelAndView.addObject("error", " * The username or password you entered is incorrect!");
				}

			} else {				
				modelAndView = new ModelAndView("login");
				modelAndView.addObject("error", " * The username or password you entered is incorrect!");
			}

		} catch (Exception e) {

			System.out.println(e.getMessage());
			modelAndView = new ModelAndView("LogIn");
		}
		 
		return modelAndView;
	}

	// Odjava sa sistema
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logoutPage(HttpServletRequest request) {

		HttpSession sess = request.getSession(true);
		sess.invalidate();

		return new ModelAndView("LogIn");
	}
}
