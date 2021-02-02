package com.registration.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.registration.entity.User;
import com.registration.service.UserService;

@Controller
public class RegistrationController {

	@Autowired
	private UserService userService;

	@GetMapping("/")
	public String getRegister(Model m) {
		m.addAttribute("userAction", "/register");
		m.addAttribute("user", new User());
		return "views/auth/registration.jsp";
	}

	@PostMapping("/register")
	public String postRegister(@ModelAttribute("user") @Valid User user, BindingResult br, Model m) {
		List<String> errors = performValidation(user);
		if (errors.size() > 0) {
			m.addAttribute("errors", errors);
			return "redirect:/register";
		}
		user.setCountry("US");
		user.setDate(String.valueOf(new Timestamp(new Date().getTime())));
		userService.save(user);
		return "redirect:?success=true";
	}

	private List<String> performValidation(User user) {
		List<String> errors = new ArrayList<String>();

		if (user.getFirst_name() == "") {
			errors.add("first_name is required");
		}

		if (user.getLast_name() == "") {
			errors.add("last_name is required");
		}

		if (user.getAddress_1() == "") {
			errors.add("address_1 is required");
		}

		if (user.getAddress_2() == "") {
			errors.add("address_2 is required");
		}

		if (user.getCity() == "") {
			errors.add("city is required");
		}

		if (user.getState() == "") {
			errors.add("state is required");
		}

		if (user.getZip() == "") {
			errors.add("zip is required");
		}

		if (user.getCountry() == "") {
			errors.add("country is required");
		}

		return errors;
	}
}