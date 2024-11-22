package com.hospitalmanagement.repository;



import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hospitalmanagement.model.Pharmacist;

@Repository
public interface PharmacistRepository extends JpaRepository<Pharmacist, Integer>{

	Optional<Pharmacist> findByEmail(String email);
	
}