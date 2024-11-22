package com.hospitalmanagement.controller;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


import com.hospitalmanagement.model.Doctor;
import com.hospitalmanagement.repository.DoctorRepository;
import com.hospitalmanagement.service.AppointmentService;
import com.hospitalmanagement.service.DoctorService;
import com.hospitalmanagement.service.PatientService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;





@RestController 
public class DoctorController { 

	
    @Autowired
    private DoctorService doctorservice; 
    
    @Autowired
    private DoctorRepository doctorRepository;
    
    @Autowired
    private PatientService patientservice;
    
    @Autowired
    private AppointmentService appointmentservice;
    
    
    @GetMapping("/mypatient")
    public ModelAndView getMyPatients() {
    	ModelAndView mv = new ModelAndView();
    	mv.addObject("doctorservice",doctorservice);
		mv.addObject("patientservice",patientservice);
		mv.setViewName("mypatient");
        return mv;
    }
    
    @GetMapping("/myappointment")
    public ModelAndView getMyAppointments() {
    	ModelAndView mv = new ModelAndView();
		mv.addObject("patientservice",patientservice);
		mv.addObject("appointmentservice",appointmentservice);
		mv.setViewName("myappointment");
        return mv;
    }    
  
    @GetMapping("/doctorpage")
	public ModelAndView doctorpage() {
		return new ModelAndView("doctorpage");
	}
    
	@GetMapping("/doctorRegister")
	public ModelAndView register() {
		return new ModelAndView("doctorRegister");
	}
	
	@PostMapping("/doctorRegister")
	public ModelAndView register(Doctor doctor)
	{
		ModelAndView mView=new ModelAndView();
		
		mView.setViewName("doctorRegister");
		
		if(doctorservice.checkIfExist(doctor.getEmail()))
		{
			mView.addObject("msg","User alreday register!");
			return mView;
		}
		doctorservice.register(doctor);
		 mView.addObject("msg", "You Successfully register");
		 return mView;
		
	}
		
    
    @GetMapping("/doctorlogin")
	public ModelAndView login() {
		return new ModelAndView("doctorlogin");
	}
	
	

	
	@PostMapping("/doctorlogin")
	public ModelAndView login(HttpServletRequest request,Doctor doctor)
	
	{
		ModelAndView mv=new ModelAndView();
		Doctor validateUser=doctorservice.validateUser(doctor);
		//active-user
		Optional<Doctor> isUserExist=this.doctorRepository.findByEmail(doctor.getEmail());
		
		if(validateUser==null)
		{
			mv.setViewName("doctorlogin");
			mv.addObject("msg","Invalid Details");
			return mv;
			
		}
	
			mv.setViewName("doctorpage");
			mv.addObject("doctorservice",doctorservice);
			HttpSession session = request.getSession();
			session.setAttribute("active-user",isUserExist.get());
	
		return mv;
		
	
		
		
	}
	
	
	
       

} 	


