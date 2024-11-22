package com.hospitalmanagement.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hospitalmanagement.model.Medicine;
import com.hospitalmanagement.service.MedicineService;



@RestController 
public class MedicineController { 

 

    @Autowired
    private MedicineService medicineservice; 
    
 


   
    @GetMapping("/allmedicine")
   	public ModelAndView allMedicines() {
   		ModelAndView mv = new ModelAndView();
   		mv.addObject("medicineservice",medicineservice);
   		mv.setViewName("allmedicine");
   		return mv;
   	}
    
	
    @PostMapping("/addmedicine")
	public ModelAndView add(Medicine medicine)
	{
		ModelAndView mView=new ModelAndView();
		
		 mView.setViewName("addmedicine");
		 medicineservice.createMedicine(medicine);
		 mView.addObject("message", "Medicine Added Successfully!");
		 return mView;
		
	}
	
	
	@GetMapping("/addmedicine")
	public ModelAndView addMedicine() {
		return new ModelAndView("addmedicine");
		
	}
	
	  @GetMapping("/viewmedicine")
	    public ModelAndView getViewMedicines() {
	    	ModelAndView mv = new ModelAndView();
			mv.addObject("medicineservice",medicineservice);
			mv.setViewName("viewmedicine");
	        return mv;
	    }
	  @GetMapping("/updatemedicine")
	    public ModelAndView getUpdateMedicine(@RequestParam int medicineId) {
	    	ModelAndView mv = new ModelAndView();
	    	Medicine medicine = medicineservice.getMedicineById(medicineId);
			mv.addObject("medicine",medicine);
			mv.setViewName("updatemedicine");
	        return mv;
	    }
	

		@GetMapping("/updatemed")
		public ModelAndView updateMedicine1(@RequestParam int medicineId,@RequestParam int quantity) {
			ModelAndView mv=new ModelAndView();
			
			Medicine medicine = medicineservice.getMedicineById(medicineId);
			medicine.setQuantity(quantity);
			
			medicineservice.updateMedicine(medicine);
			mv.addObject("medicine",medicine);
			mv.addObject("message","Medicine updated");
			mv.setViewName("updatemedicine");
			return mv;
		}
		
		@GetMapping("/deletemedicine")
		public ModelAndView deleteMedicine(@RequestParam int  medicineId) {
			
			ModelAndView mv = new ModelAndView();
	        medicineservice.deleteMedicine(medicineId);
		
			mv.addObject("medicineservice",medicineservice);
			mv.addObject("message", "Selected Medicine Deleted!");
			mv.setViewName("viewmedicine");
			
			return mv;
		}
    

} 	


