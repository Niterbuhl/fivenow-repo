package com.esiee.servlets;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.esiee.beans.*;
import com.esiee.exception.UserNotFound;
import com.esiee.repository.UserRepository;
import com.esiee.service.UserService;


@Controller
//@RequestMapping(value="/User")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/create", method=RequestMethod.GET)
    public ModelAndView newUserPage() {
        ModelAndView mav = new ModelAndView("monEquipe", "user", new User());
        return mav;
    }
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
    public ModelAndView createNewUser(@ModelAttribute User user, 
            final RedirectAttributes redirectAttributes) {
         
        ModelAndView mav = new ModelAndView();
        String message = "New shop "+user.getNom()+" was successfully created.";
         
        userService.create(user);
        mav.setViewName("redirect:/create");
                 
        redirectAttributes.addFlashAttribute("message", message);   
        return mav;     
    }
     
	 @RequestMapping(value="/list", method=RequestMethod.GET)
	    public ModelAndView userListPage() {
	        ModelAndView mav = new ModelAndView("user-list");
	        List<User> userList = userService.findAll();
	        mav.addObject("userList", userList);
	        return mav;
    }

	 @RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	 public ModelAndView editUserPage(@PathVariable Integer id) {
		ModelAndView mav = new ModelAndView("user-edit");
		User user = userService.findById(id);
		mav.addObject("user", user);
		return mav;
	 }	
		
		@RequestMapping(value="/edit/{id}", method=RequestMethod.POST)
		public ModelAndView editUser(@ModelAttribute @Valid User user,
				BindingResult result,
				@PathVariable Integer id,
				final RedirectAttributes redirectAttributes) throws UserNotFound {
			
			if (result.hasErrors())
				return new ModelAndView("user-edit");
			
			ModelAndView mav = new ModelAndView("redirect:/");
			String message = "User was successfully updated.";
	
			userService.update(user);
			
			redirectAttributes.addFlashAttribute("message", message);	
			return mav;
		}
		
		@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
		public ModelAndView deleteUser(@PathVariable Integer id,
				final RedirectAttributes redirectAttributes) throws UserNotFound {
			
			ModelAndView mav = new ModelAndView("redirect:/");		
			
			User user = userService.delete(id);
			String message = "The shop "+user.getNom()+" was successfully deleted.";
			
			redirectAttributes.addFlashAttribute("message", message);
			return mav;
		}
	  
	}