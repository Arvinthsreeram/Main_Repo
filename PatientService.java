package com.hospitalmanagement.service;


import java.util.List;


import com.hospitalmanagement.model.Patient;


public interface PatientService  {
	
	Patient createPatient(Patient patient);
    List<Patient>  getAllPatients();
    Patient getPatientById(int id);
    Patient updatePatient(int id,Patient patient);
    void deletePatient(int id);
    List<Patient> getPatientByDoctorId(int doctorId);

} 