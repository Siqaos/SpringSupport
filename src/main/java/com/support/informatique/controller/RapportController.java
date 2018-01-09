package com.support.informatique.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.support.informatique.entities.Rapport;
import com.support.informatique.entities.Ticket;
import com.support.informatique.entities.User;
import com.support.informatique.service.RapportService;
import com.support.informatique.service.TicketService;
import com.support.informatique.service.UserService;

@Controller
public class RapportController {
	 
	
	 @Autowired
	 private RapportService rapportService;
	 @Autowired
	 private TicketService ticketService;
	 @Autowired
	 private UserService userService;
	 @RequestMapping(value = { "/newRapport" }, method = RequestMethod.GET)
	    public String newTicket(ModelMap model,HttpServletRequest request) {
	        Rapport rapport = new Rapport();
	        model.addAttribute("rapport", rapport);
	        model.addAttribute("edit", false);
	        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	        
	         if (request.isUserInRole("ADMIN"))
			  {	
				  UserDetails userDetail = (UserDetails) auth.getPrincipal();
					model.addAttribute("username", userDetail.getUsername());	
				  return "admin/rapport"; 
				  
			  }
			  else if (request.isUserInRole("TECH"))
			  {
				  UserDetails userDetail = (UserDetails) auth.getPrincipal();
					model.addAttribute("username", userDetail.getUsername());
				  return "tech/rapport"; 
				  	
			  }
			return "/403";
	    }
	 @RequestMapping(value = { "/newRapport" }, method = RequestMethod.POST)
	    public String saveTicket(@Valid Rapport rapport, BindingResult result,ModelMap model,HttpServletRequest request) {
	    	if (request.isUserInRole("ADMIN"))
			  {	
			        if (result.hasErrors()) {
			            return "admin/rapport";
			        }
					rapportService.save(rapport);
			        return "redirect:admin/rapport";   
				  
			  }
			  else if (request.isUserInRole("TECH"))
			  {		  
			        if (result.hasErrors()) {
			            return "tech/rapport";
			        }
			        rapportService.save(rapport);
			        return "redirect:tech/rapport";   
	
				  	
			  }
			return "/403";
	 }
	    @RequestMapping(value = { "/add-{idTicket}-Rapport" }, method = RequestMethod.GET)
	    public String addRapport(@PathVariable int idTicket, ModelMap model) {
	    	Rapport rapport = new Rapport();
	    	model.addAttribute("rapport", rapport);
	        model.addAttribute("idTicket", idTicket);
	        
	        return "/admin/rapport"; // ajouter la redirection par role
	    }
	    @RequestMapping(value = { "/add-{idTicket}-Rapport" }, method = RequestMethod.POST)
	    public String updateUser(@Valid Rapport rapport, BindingResult result,
	            ModelMap model, @PathVariable int idTicket) {
	    	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    	UserDetails userDetail = (UserDetails) auth.getPrincipal();
	    	User user = userService.findByUsername(userDetail.getUsername());
	    	Ticket ticket = ticketService.findOne(idTicket);
	    	rapport.setTicket(ticket);
	    	rapport.setUser(user);
	        rapportService.save(rapport);        
	        return "redirect:admin/report";
	 }
}
