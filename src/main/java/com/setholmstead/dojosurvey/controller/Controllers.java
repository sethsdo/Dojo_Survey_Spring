package com.setholmstead.dojosurvey.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class Controllers {
	public User currentUser;
	
	@RequestMapping("")
	public String index() {
		return "index";
		
	}
	@PostMapping(value = "/user")
	public String create(
			@RequestParam(value="name") String name, 
			@RequestParam(value="location") String location, 
			@RequestParam(value="language") String language, 
			@RequestParam(value="comment") String comment) {
		currentUser = new User(name, location, language, comment);
		
		return "redirect:/dashboard";
	}
	
	@RequestMapping("/dashboard")
	public String index(Model model) {
		model.addAttribute("user", currentUser);
		return "user";
		
	}

	
	
}
