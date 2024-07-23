package com.tka.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Patient {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	String name;
	String contactNumber;
	String consultantDoctor;
	String username;
	String password;
	public Patient() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Patient(String name, String contactNumber, String consultantDoctor, String username, String password) {
		super();
		this.name = name;
		this.contactNumber = contactNumber;
		this.consultantDoctor = consultantDoctor;
		this.username = username;
		this.password = password;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getConsultantDoctor() {
		return consultantDoctor;
	}
	public void setConsultantDoctor(String consultantDoctor) {
		this.consultantDoctor = consultantDoctor;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Patient [id=" + id + ", name=" + name + ", contactNumber=" + contactNumber + ", consultantDoctor="
				+ consultantDoctor + ", username=" + username + "]";
	}
	
}
