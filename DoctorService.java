package com.hospitalmanagement.service;


import java.util.List;

import com.hospitalmanagement.model.Doctor;


public interface DoctorService  {
	
	Doctor createDoctor(Doctor doctor);
    List<Doctor>  getAllDoctor();
    Doctor getDoctorById(int id);
    Doctor updateDoctor(int id,Doctor doctor);
    void deleteDoctor(int id);
    public Doctor validateUser(Doctor doctor);
    public Doctor register(Doctor doctor);
    public boolean checkIfExist(String email);
    public Doctor getUserByName(String name);
} 