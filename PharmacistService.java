package com.hospitalmanagement.service;


import java.util.List;
import java.util.Optional;
import com.hospitalmanagement.model.Pharmacist;


public interface PharmacistService  {
	
	Pharmacist createPharmacist(Pharmacist pharmacist);
    List<Pharmacist>  getAllPharmacist();
    Optional<Pharmacist> getPharmacistById(int id);
    Pharmacist updatePharmacist(int id,Pharmacist pharmacist);
    void deletePharmacist(int id);
    public Pharmacist validateUser(Pharmacist pharmacist);
    public Pharmacist register(Pharmacist pharmacist);
    public boolean checkIfExist(String email);

} 