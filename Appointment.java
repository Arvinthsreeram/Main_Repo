package com.hospitalmanagement.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;



@Entity
@Table(name="appointment")

public class Appointment{
	 
	  @Id
	  @Column(name="APP_ID")
	  @GeneratedValue(strategy=GenerationType.IDENTITY)
	  private int appointmentId;
	  
	  @Column(name="DOC_ID")
	  private int doctorId;
	  
	  @Column(name="PAT_ID")
	  private int patientId;
	  
	  @Column(name="APP_DATE")
	  private String appointmentDate;
	  
	  @Column(name="APP_TIME")
	  private String appointmentTime;
	  
	  @Column(name="Treatment")
	  private String treatmentStatus;
	  
	public int getAppointmentId() {
		return appointmentId;
	}
	public void setAppointmentId(int appointmentId) {
		this.appointmentId = appointmentId;
	}
	public int getDoctorId() {
		return doctorId;
	}
	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}
	public int getPatientId() {
		return patientId;
	}
	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}
	public String getAppointmentDate() {
		return appointmentDate;
	}
	public void setAppointmentDate(String appointmentDate) {
		this.appointmentDate = appointmentDate;
	}
	public String getAppointmentTime() {
		return appointmentTime;
	}
	public void setAppointmentTime(String appointmentTime) {
		this.appointmentTime = appointmentTime;
	}
	public String getTreatmentStatus() {
		return treatmentStatus;
	}
	public void setTreatmentStatus(String treatmentStatus) {
		this.treatmentStatus = treatmentStatus;
	}
	  
	  
}