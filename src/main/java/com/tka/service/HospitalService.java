package com.tka.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tka.dao.HospitalDAO;
import com.tka.model.Patient;

@Service
public class HospitalService {

	@Autowired
	HospitalDAO dao;
	
	public Patient loginPatient(String uname, String password) {
		
		List<Patient> plist = dao.getAllPatientData();
		Patient profilePatient = null;
		for(Patient p : plist) {
			if(p.getUsername().equals(uname) && p.getPassword().equals(password)) {
				profilePatient = p;
			}
		}
		return profilePatient;
	}

	public String registerPatient(Patient p) {
		String msg = dao.registerPatient(p);
		return msg;
	}

	public List<Patient> getAllPatientData() {
		// TODO Auto-generated method stub
		return dao.getAllPatientData();
	}
	
}
