package com.support.informatique.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.support.informatique.service.TicketService;

@Controller
public class TechController {
	@Autowired
	TicketService ticketService;
	@RequestMapping("/tech/index")
	public String users(ModelMap model) {
		  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		  if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			model.addAttribute("username", userDetail.getUsername());
		  }
		return "/tech/index";
	}
	
	@RequestMapping(value="/tech/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
		    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		    if (auth != null){    
		        new SecurityContextLogoutHandler().logout(request, response, auth);
		    }
		    return "redirect:/";
		}
		
	@RequestMapping("/tech/tests")
	public String tests(ModelMap model) {
		  
		return "/tests/welcome";
	}
	@RequestMapping("/tech/users")
	public String Users(ModelMap model) {
		  
		return "/tech/users";
	}
	@RequestMapping("/tech/ticket")
	public String Tickets(ModelMap model) {
		model.addAttribute("tickets",ticketService.findAll() );
		return "tech/tickets";
	}
	@RequestMapping("/tech/parc")
	public String materiel(ModelMap model) {
		  
		return "/tech/materiels";
	}
}
