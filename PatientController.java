package com.hospitalmanagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hospitalmanagement.model.Patient;
import com.hospitalmanagement.service.PatientService;


@RestController 
public class PatientController { 

 

    @Autowired
    private PatientService patientservice; 

    @GetMapping("/allpatient")
  		public ModelAndView allPatients() {
  			ModelAndView mv = new ModelAndView();
  			mv.addObject("patientservice",patientservice);
  			mv.setViewName("allpatient");
  			return mv;
  		}
  	    
  	
    
    @PostMapping("/addpatient")
	public ModelAndView add(Patient patient)
	{
		ModelAndView mView=new ModelAndView();
		
		mView.setViewName("addpatient");
		patientservice.createPatient(patient);
		 mView.addObject("message", "Patient Added Successfully!");
		 return mView;
		
	}
	
	
	@GetMapping("/addpatient")
	public ModelAndView addPatient() {
		return new ModelAndView ("addpatient");

	}
   
} 	


