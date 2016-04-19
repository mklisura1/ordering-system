package pos.controller;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pos.helper.PasswordValidator;
import pos.model.User;

@Controller
public class AdminController {

	@Autowired
	private pos.service.UserService userService;

	@Autowired
	private pos.service.EncryptionService encryptionService;
	
	/*
	 * Metoda za admina da prikaze sve usere
	 */
	@RequestMapping(value = "/admin")
	public ModelAndView adminPage(HttpServletRequest request) {
/*
		User user = (User) request.getSession().getAttribute("user");

		if (user == null) {
			return new ModelAndView("LogIn");
		}
*/
		ModelAndView modelAndView = new ModelAndView("AdminPanel");
		//modelAndView.addObject("users", userService.getUsers());

		return modelAndView;
	}

	/*
	 * Metoda za admina da prikaze sve usere
	 */
	@RequestMapping(value = "/admin/list")
	public ModelAndView listOfUsers(HttpServletRequest request) {

		User user = (User) request.getSession().getAttribute("user");

		if (user == null) {
			return new ModelAndView("LogIn");
		}

		ModelAndView modelAndView = new ModelAndView("userlist");
		modelAndView.addObject("users", userService.getUsers());

		return modelAndView;
	}

	// Otvaranje stranice za registraciju korisnika
	@RequestMapping(value = "/admin/registration", method = RequestMethod.GET)
	public ModelAndView registrationPage() {
		return new ModelAndView("Registration");
	}

	// Pohrana podataka o registraciji korisnika
	@RequestMapping(value = "/admin/registration", method = RequestMethod.POST)
	public @ResponseBody ModelAndView registration(@RequestParam("username") String username,
			@RequestParam("password") String password) {

		ModelAndView modelAndView = null;

		if (username.equals("")) {
			modelAndView = new ModelAndView("Registration");
			modelAndView.addObject("error", " * Username required!");
			return modelAndView;
		}

		User user = userService.getUserByUsername(username);

		// Ako postoji vratiti ponovo na stranicu registration
		if (user != null) {
			modelAndView = new ModelAndView("Registration");
			modelAndView.addObject("error", " * Username already exists!");
			return modelAndView;
		}

		// Funkcija koja vraca validator (tj. regex uslov za provjeru passworda)
		PasswordValidator validator = new PasswordValidator();

		boolean passwordOK = validator.validate(password);

		// Ako password nije u ispravnom formatu vraca ponovo na stranicu za
		// registraciju
		if (!passwordOK) {
			modelAndView = new ModelAndView("Registration");
			modelAndView.addObject("error", "Password must have:");
			modelAndView.addObject("errorLength", " * 6 or more characters");
			modelAndView.addObject("errorLetters", " * Upper & lower case letters");
			modelAndView.addObject("errorNumbers", " * At least one number");
			modelAndView.addObject("errorSpecialCharacters", " * One of these special characters (@#$%)");
			modelAndView.addObject("username", username);
			return modelAndView;
		}

		// Generisanje salta i hasha za korisnika
		String user_password_salt = null;
		String user_password_hash = null;

		try {
			user_password_salt = encryptionService.getSalt();
		} catch (NoSuchAlgorithmException e) {
			// System.out.println("SALT NIJE GENERISAN!");
			e.printStackTrace();
		}

		try {
			user_password_hash = encryptionService.generatePasswordHash(password);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (InvalidKeySpecException e) {
			// System.out.println("PASSWORD HASH NIJE GENERISAN!");
			e.printStackTrace();
		}

		User novi = new User(username, user_password_salt, user_password_hash);

		modelAndView = new ModelAndView("LogIn");
		userService.addUser(novi);
		modelAndView.addObject("users", userService.getUsers());
		return modelAndView;
	}

}
