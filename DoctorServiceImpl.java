package com.hospitalmanagement.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hospitalmanagement.model.Doctor;
import com.hospitalmanagement.repository.DoctorRepository;


@Service
public class DoctorServiceImpl implements DoctorService {

    @Autowired
    private DoctorRepository doctorRepository;
    
    @Override
	public Doctor getUserByName(String name) {
		return doctorRepository.getByName(name);
	}

	@Override
	public Doctor createDoctor(Doctor doctor) {
	       return doctorRepository.save(doctor);
	}

	@Override
	public List<Doctor> getAllDoctor() {
        return doctorRepository.findAll();
	}

	@Override
	public Doctor getDoctorById(int id) {
		Optional<Doctor> isUserExist=doctorRepository.findById(id);
	 if(isUserExist.isPresent())
	 {
		 Doctor doctor =isUserExist.get();
		 
		 return doctor;
	 }
	 return null;
	}

	@Override
	public Doctor updateDoctor(int id, Doctor doctor) {
		Optional<Doctor> existingDoctorOptional = doctorRepository.findById(id);

        if (existingDoctorOptional.isPresent()) {
            Doctor existingDoctor = existingDoctorOptional.get();
            existingDoctor.setDoctorId(doctor.getDoctorId());
            existingDoctor.setName(doctor.getName());
            existingDoctor.setEmail(doctor.getEmail());
            existingDoctor.setMobile(doctor.getMobile());
            existingDoctor.setSpecialist(doctor.getSpecialist());
            existingDoctor.setUsername(doctor.getUsername());
            existingDoctor.setPassword(doctor.getPassword());
            existingDoctor.setAddress(doctor.getAddress());

            return doctorRepository.save(existingDoctor);
        } else {
            return null; 
        }
	}

	@Override
	public void deleteDoctor(int id) {
		doctorRepository.deleteById(id);
		
	}
	

	@Override
	public Doctor validateUser(Doctor doctor) {
		
    Optional<Doctor>  isUserExist=doctorRepository.findByEmail(doctor.getEmail());
	 if(isUserExist.isPresent())
	 {
		 Doctor getDetailsUser=isUserExist.get();
		 
		 if(getDetailsUser.getPassword().equals(doctor.getPassword()))
		 {
			 return getDetailsUser;
		 }
	 }
	
	 return null;
	 
		
	}
	
	@Override
	public boolean checkIfExist(String email) {
		
		Optional<Doctor> user= doctorRepository.findByEmail(email);
		return user.isPresent();
	
		
	}

	@Override
	public Doctor register(Doctor doctor) {
		return doctorRepository.save(doctor);
		
	}
	
	  

}
    
