package com.karin.pomodoro.controllers;



import java.security.Principal;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.karin.pomodoro.models.User;
import com.karin.pomodoro.services.UserService;
import com.karin.pomodoro.validator.UserValidator;

@Controller
public class UserController {
	private final UserService uServ;
	private final UserValidator uVal;
	
	public UserController(UserService uServ,UserValidator uVal) {
		this.uServ = uServ;
		this.uVal = uVal;
	}
	
	@RequestMapping(value = {"/", "/home"})
    public String home(Principal principal, Model model,HttpSession session) {
        if(principal != null) {
        	User user = uServ.findByEmail(principal.getName());
        	session.setAttribute("userId", user.getId());
        	model.addAttribute("user", user);
        }
        return "landingPage.jsp";
    }
	
	@RequestMapping("/registration")
    public String registerForm(@Valid @ModelAttribute("user") User user) {
        return "registrationPage.jsp";
    }
    
    @PostMapping("/registration")
    public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model, HttpSession session) {
    	uVal.validate(user, result);
        if (result.hasErrors()) {
            return "registrationPage.jsp";
        }
        uServ.registerUser(user);
        return "redirect:/";
    }
    /*
     Metodo de try and catch para verificar si el usuario ya existe
    try {
        User registered = userService.registerNewUserAccount(userDto);
    } catch (UserAlreadyExistException uaeEx) {
        mav.addObject("message", "An account for that username/email already exists.");
        return mav;
    }
    */
  
    @RequestMapping("/login")
    public String login() {
        return "loginPage.jsp";
    }
   
    @RequestMapping("/perfil")
    public String userProfile(HttpSession session, Model model) {
    	Long userId = (Long) session.getAttribute("userId");
    	User user = uServ.findUserById(userId);
    	Date date = user.getCreatedAt();
    	SimpleDateFormat formatter = new SimpleDateFormat("MMMMM,YYYY");
    	String fecha = formatter.format(date);
    	int userProjects = user.getProjects().size();
    	model.addAttribute("userProjects",userProjects);
    	model.addAttribute("user", user);
    	model.addAttribute("fecha", fecha);
		return "userPage.jsp";
    	
    }
    @RequestMapping("/contacto")
    public String contact(Principal principal, Model model,HttpSession session) {
    	if(principal != null) {
        	User user = uServ.findByEmail(principal.getName());
        	session.setAttribute("userId", user.getId());
        	model.addAttribute("user", user);
        }
    	return "contacto.jsp";
    }
	
	

}
