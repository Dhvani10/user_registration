package com.registration.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.registration.service.UserService;

@Controller
public class AdminController {

	@Autowired
	private UserService userService;
	
	@GetMapping("/admin")
	public String findAll(Model model) {
		model.addAttribute("users", userService.findAllByOrderByDateDesc());
		return "/views/admin/home.jsp";
	}
}
