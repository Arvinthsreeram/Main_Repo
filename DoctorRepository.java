package com.hospitalmanagement.repository;





import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.hospitalmanagement.model.Doctor;


@Repository
public interface DoctorRepository extends JpaRepository<Doctor, Integer>{

	Doctor getByName(String name);
	
	Optional<Doctor> findByEmail(String email);
	
	

      
}