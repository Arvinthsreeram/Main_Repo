package com.hospitalmanagement.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.hospitalmanagement.model.Pharmacist;
import com.hospitalmanagement.repository.PharmacistRepository;

@Service
public class PharmacistServiceImpl implements PharmacistService {

    @Autowired
    private PharmacistRepository pharmacistRepository;

	@Override
	public Pharmacist createPharmacist(Pharmacist pharmacist) {
	    return pharmacistRepository.save(pharmacist);
	}

	@Override
	public List<Pharmacist> getAllPharmacist() {
        return pharmacistRepository.findAll();
	}

	@Override
	public Optional<Pharmacist> getPharmacistById(int id) {
		return pharmacistRepository.findById(id);
	}

	@Override
	public Pharmacist updatePharmacist(int id, Pharmacist pharmacist) {
		Optional<Pharmacist> existingPharmacistOptional = pharmacistRepository.findById(id);

        if (existingPharmacistOptional.isPresent()) {
        	Pharmacist existingPharmacist = existingPharmacistOptional.get();
            existingPharmacist.setPharmacistId(pharmacist.getPharmacistId());
            existingPharmacist.setName(pharmacist.getName());
            existingPharmacist.setMobile(pharmacist.getMobile());
            existingPharmacist.setEmail(pharmacist.getEmail());
            existingPharmacist.setUsername(pharmacist.getUsername());
            existingPharmacist.setPassword(pharmacist.getPassword());
            existingPharmacist.setAddress(pharmacist.getAddress());
            
            return pharmacistRepository.save(existingPharmacist);
        } else {
            return null; 
        }
	}

	@Override
	public void deletePharmacist(int id) {
		pharmacistRepository.deleteById(id);
		
	}
	@Override
	public Pharmacist validateUser(Pharmacist pharmacist) {
		Optional<Pharmacist> isUserExist=pharmacistRepository.findByEmail(pharmacist.getEmail());
		System.out.println(isUserExist.get().getPassword());
		
	 if(isUserExist.isPresent())
	 {
		 Pharmacist getDetailsUser=isUserExist.get();
		 
		 if(getDetailsUser.getPassword().equals(pharmacist.getPassword()))
		 {
			 return getDetailsUser;
		 }
	 }
	 return null;
		
	}
	
	@Override
	public boolean checkIfExist(String email) {
		
		Optional<Pharmacist> user= pharmacistRepository.findByEmail(email);
		return user.isPresent();
		
		
		
		
	}

	@Override
	public Pharmacist register(Pharmacist pharmacist) {
		return pharmacistRepository.save(pharmacist);
		
	}
    
}