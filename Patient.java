package com.hospitalmanagement.model;



import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;



@Entity
@Table(name="patient")
public class Patient { 
	
	
    @Id
    @Column(name="PAT_ID")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int patientId; 
    
    @Column(name="Age")
    private int age;
    
    @Column(name="Blood_Group")
    private String blood;
    
    @Column(name="Name")
    private String name;
    
    @Column(name="Gender")
    private String gender;
    
    @Column(name="Email")
    private String email;
    
    @Column(name="Contact")
    private String contact;
    
    @Column(name="Address")
    private String address;
    
    @Column(name="Disease")
    private String disease;
    
    @Column(name="Reg_Date")
    private String registeredDate;
    

    @Column(name="DOC_ID")
    private int doctorId;

	public int getPatientId() {
		return patientId;
	}

	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getBlood() {
		return blood;
	}

	public void setBlood(String blood) {
		this.blood = blood;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDisease() {
		return disease;
	}

	public void setDisease(String disease) {
		this.disease = disease;
	}

	public String getRegisteredDate() {
		return registeredDate;
	}

	public void setRegisteredDate(String registeredDate) {
		this.registeredDate = registeredDate;
	}

	public int getDoctorId() {
		return doctorId;
	}

	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}

	
    
    
	
   
        
   
	
	
	
}