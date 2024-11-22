package com.hospitalmanagement.service;


import java.util.List;


import com.hospitalmanagement.model.Medicine;


public interface MedicineService  {
	
	Medicine createMedicine(Medicine medicine);
    List<Medicine>  getAllMedicines();
    Medicine getMedicineById(int id);
    Medicine updateMedicine(Medicine medicine);
    void deleteMedicine(int id);
  

} 