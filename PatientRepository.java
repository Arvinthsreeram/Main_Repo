package com.hospitalmanagement.repository;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.hospitalmanagement.model.Patient;

@Repository
public interface PatientRepository extends JpaRepository<Patient, Integer>{

	List<Patient> findAllByOrderByNameAsc();
	
	List<Patient> findPatientByDoctorId(int doctorId);
	
}