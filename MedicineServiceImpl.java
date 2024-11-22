package com.hospitalmanagement.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hospitalmanagement.model.Medicine;
import com.hospitalmanagement.repository.MedicineRepository;

@Service
public class MedicineServiceImpl implements MedicineService {

    @Autowired
    private MedicineRepository medicineRepository;

	@Override
	public Medicine createMedicine(Medicine medicine) {
	       return medicineRepository.save(medicine);
	}

	@Override
	public List<Medicine> getAllMedicines() {
        return medicineRepository.findAll();
	}
	
	

	@Override
	public Medicine getMedicineById(int id) {
		Optional<Medicine> isExist=medicineRepository.findById(id);
		 if(isExist.isPresent())
		 {
			 Medicine medicine =isExist.get();
			 
			 return medicine;
		 }
		 return null;
	}

	@Override
	public Medicine updateMedicine(Medicine medicine) {
		return medicineRepository.save(medicine);
	}

	@Override
	public void deleteMedicine(int id) {
		medicineRepository.deleteById(id);
		
	}
	
	
    
    
    
}