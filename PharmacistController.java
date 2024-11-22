package com.hospitalmanagement.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hospitalmanagement.model.Pharmacist;
import com.hospitalmanagement.service.PharmacistService;

import jakarta.servlet.http.HttpServletRequest;



@RestController 
public class PharmacistController { 

 
	
    @Autowired
    private PharmacistService pharmacistservice;
    
  
    
    
   
    
  
    @GetMapping("/pharmacistlogin")
	public ModelAndView login() {
		return new ModelAndView("pharmacistlogin");
	}
	
    @GetMapping("/pharmacistregister")
	public ModelAndView register() {
		return new ModelAndView("pharmacistregister");
	}
    
   
    @GetMapping("/pharmacistpage")
   	public ModelAndView page() {
	 return new ModelAndView("doctorpage");
   	}
	
	@PostMapping("/pharmacistlogin")
	public ModelAndView login(HttpServletRequest request,Pharmacist pharmacist)
	
	{
		ModelAndView mv=new ModelAndView();
		Pharmacist validateUser=pharmacistservice.validateUser(pharmacist);
		
		
		if(validateUser==null)
		{
			mv.setViewName("pharmacistlogin");
			mv.addObject("msg","Invalid Details");
			return mv;
			
		}
		
			mv.setViewName("pharmacistpage");
			mv.addObject("user",validateUser);
			
		return mv;
		
	
		
		
	}
	
	
	@PostMapping("/pharmacistregister")
	public ModelAndView register(Pharmacist pharmacist)
	{
		ModelAndView mView=new ModelAndView();
		
		mView.setViewName("pharmacistregister");
		if(pharmacistservice.checkIfExist(pharmacist.getEmail()))
		{
			mView.addObject("msg","User already register!");
			return mView;
		}
		pharmacistservice.register(pharmacist);
		 mView.addObject("msg", "You Successfully register!");
		 return mView;
		
	}

   
   
  
  
    




} 	
