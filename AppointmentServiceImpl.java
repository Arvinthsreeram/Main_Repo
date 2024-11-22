package com.hospitalmanagement.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hospitalmanagement.model.Appointment;
import com.hospitalmanagement.repository.AppointmentRepository;

@Service
public class AppointmentServiceImpl implements AppointmentService {

    @Autowired
    private AppointmentRepository appointmentRepository;

	@Override
	public Appointment createAppointment(Appointment appointment) {
	    return appointmentRepository.save(appointment);
	}

	@Override
	public List<Appointment> getAllAppointment() {
        return appointmentRepository.findAll();
	}

	@Override
	public Appointment getAppointmentById(int id) {
		Optional<Appointment> isUserExist=appointmentRepository.findById(id);
		 if(isUserExist.isPresent())
		 {
			 Appointment appointment =isUserExist.get();
			 
			 return appointment;
		 }
		 return null;
	}

	
		@Override
		public Appointment updateAppointment(Appointment appointment) {
			return appointmentRepository.save(appointment);
		}


	@Override
	public void deleteAppointment(int id) {
		appointmentRepository.deleteById(id);
		
	}
    
    
	@Override
	public List<Appointment> getAppointmentsByDoctorIdAndAppointmentDate(int doctorId, String appointmentDate) {
		return appointmentRepository.findByDoctorIdAndAppointmentDate(doctorId, appointmentDate);
	}
    
}