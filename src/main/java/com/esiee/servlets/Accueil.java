package com.esiee.servlets;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
public class Accueil {

	@RequestMapping(value = "/jouer", method = RequestMethod.GET)
	   public String JouerPage() {
	     
	      return "jouer";
	}
	
	@RequestMapping(value = "/monEquipe", method = RequestMethod.GET)
	   public String MonEquipePage() {
	     
	      return "monEquipe";
	}
	
	@RequestMapping(value = "/contacts", method = RequestMethod.GET)
	   public String ContactsPage() {
	     
	      return "contacts";
	}
	
	
	String message = "Welcome to Spring MVC!";
	 
	@RequestMapping("/hello")
	public ModelAndView showMessage(
			@RequestParam(value = "name", required = false, defaultValue = "World") String name) {
		System.out.println("in controller");
 
		ModelAndView mv = new ModelAndView("helloworld");
		mv.addObject("message", message);
		mv.addObject("name", name);
		return mv;
	}
}