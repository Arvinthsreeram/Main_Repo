package com.hospitalmanagement.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hospitalmanagement.model.Appointment;
import com.hospitalmanagement.service.AppointmentService;
import com.hospitalmanagement.service.DoctorService;
import com.hospitalmanagement.service.PatientService;


@RestController 
public class AppointmentController { 

 

    @Autowired
    private AppointmentService appointmentservice; 
    
    @Autowired 
    private DoctorService doctorservice;
    
    @Autowired 
    private PatientService patientservice;

   

	    @PostMapping("/addappointment")
		public ModelAndView add(Appointment appointment)
		{
			ModelAndView mView=new ModelAndView();
			
			mView.setViewName("addappointment");
			appointmentservice.createAppointment(appointment);
			 mView.addObject("message", "Appointment Assigned Successfully!");
			 return mView;
			
		}
		
		
		@GetMapping("/addappointment")
		public ModelAndView addAppointment() {
			return new ModelAndView("addappointment");
			
		}
		
		@GetMapping("/allappointment")
	   	public ModelAndView allAppointments() {
	   		ModelAndView mv = new ModelAndView();
	   		mv.addObject("appointmentservice",appointmentservice);
	   		mv.setViewName("allappointment");
	   		return mv;
	   	}
		
	    @GetMapping("/viewappointment")
	    public ModelAndView getViewAppointments(@RequestParam int appointmentId) {
	    	ModelAndView mv = new ModelAndView();
	    	Appointment appointment = appointmentservice.getAppointmentById(appointmentId);
	    	mv.addObject("doctorservice",doctorservice);
			mv.addObject("patientservice",patientservice);
			mv.addObject("appointmentservice",appointmentservice);
			mv.addObject("appointment",appointment);
			mv.setViewName("viewappointment");
	        return mv;
	    }
	    
	    @GetMapping("/updateappointment")
		public ModelAndView updatePatientAppointment(@RequestParam int appointmentId, @RequestParam String treatmentStatus) {
			ModelAndView mv=new ModelAndView();
			
			Appointment appointment = appointmentservice.getAppointmentById(appointmentId);
			appointment.setTreatmentStatus(treatmentStatus);
			
			appointmentservice.updateAppointment(appointment);
			mv.addObject("doctorservice",doctorservice);
			mv.addObject("patientservice",patientservice);
			mv.addObject("appointmentservice",appointmentservice);
			mv.addObject("appointment",appointment);
			mv.addObject("message","Appointment updated!!!");
			mv.setViewName("myappointment");
			return mv;
		}


} 	

