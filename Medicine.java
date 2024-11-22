package com.hospitalmanagement.model;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;



@Entity
@Table(name="medicine")

public class Medicine{
	  
	  @Id
	  @Column(name="ID")
	  @GeneratedValue(strategy=GenerationType.IDENTITY)
	  private int medicineId;
	  
	  @Column(name="MAN_DATE")
	  private String manufDate;
	  
	  @Column(name="EXP_DATE")
	  private String expDate;
	  
	  @Column(name="NAME")
	  private String medicineName;
	  
	  @Column(name="PRICE")
	  private int price;
	  
	  @Column(name="QUANTITY")
	  private int quantity;
	  
	  @Column(name="TYPE")
	  private String type;

	public int getMedicineId() {
		return medicineId;
	}

	public void setMedicineId(int medicineId) {
		this.medicineId = medicineId;
	}

	public String getManufDate() {
		return manufDate;
	}

	public void setManufDate(String manufDate) {
		this.manufDate = manufDate;
	}

	public String getExpDate() {
		return expDate;
	}

	public void setExpDate(String expDate) {
		this.expDate = expDate;
	}

	public String getMedicineName() {
		return medicineName;
	}

	public void setMedicineName(String medicineName) {
		this.medicineName = medicineName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	  
	  
	  
	  
	  
}