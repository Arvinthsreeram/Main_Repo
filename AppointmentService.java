package com.hospitalmanagement.service;


import java.util.List;


import com.hospitalmanagement.model.Appointment;


public interface AppointmentService  {
	
	Appointment createAppointment(Appointment appointment);
    List<Appointment>  getAllAppointment();
    Appointment getAppointmentById(int id);
    Appointment updateAppointment(Appointment appointment);
    void deleteAppointment(int id);
    List<Appointment> getAppointmentsByDoctorIdAndAppointmentDate(int doctorId, String appointmentDate);

} 