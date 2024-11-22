package com.hospitalmanagement.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hospitalmanagement.model.Patient;
import com.hospitalmanagement.repository.PatientRepository;

@Service
public class PatientServiceImpl implements PatientService {

    @Autowired
    private PatientRepository patientRepository;

    @Override
    public Patient createPatient(Patient patient) {
       return patientRepository.save(patient);
       
    }

    @Override
    public List<Patient> getAllPatients() {
        return patientRepository.findAll();
    }

    @Override
	public Patient getPatientById(int id) {
		Optional<Patient> isUserExist=patientRepository.findById(id);
	 if(isUserExist.isPresent())
	 {
		 Patient patient =isUserExist.get();
		 
		 return patient;
	 }
	 return null;
	}

	@Override
	public Patient updatePatient(int id, Patient patient) {
		Optional<Patient> existingPatientOptional = patientRepository.findById(id);

        if (existingPatientOptional.isPresent()) {
            Patient existingPatient = existingPatientOptional.get();
            existingPatient.setPatientId(patient.getPatientId());
            existingPatient.setAge(patient.getAge());
            existingPatient.setBlood(patient.getBlood());
            existingPatient.setName(patient.getName());
            existingPatient.setGender(patient.getGender());
            existingPatient.setEmail(patient.getEmail());
            existingPatient.setContact(patient.getContact());
            existingPatient.setAddress(patient.getAddress());
            existingPatient.setDisease(patient.getDisease());
            existingPatient.setDoctorId(patient.getDoctorId());
            

            return patientRepository.save(existingPatient);
        } else {
            return null; 
        }
	}

	@Override
	public void deletePatient(int id) {
		patientRepository.deleteById(id);
		
	}

	@Override
	public List<Patient> getPatientByDoctorId(int doctorId) {
		return patientRepository.findPatientByDoctorId(doctorId);
	}

	
	
    
}