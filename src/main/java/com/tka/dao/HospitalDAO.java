package com.tka.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tka.model.Patient;

@Repository
public class HospitalDAO {
	
	@Autowired
	SessionFactory factory;

	public List<Patient> getAllPatientData() {
		
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Patient.class);
		
		List<Patient> plist = criteria.list();
		
		return plist;
	}

	public String registerPatient(Patient p) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		
		session.save(p);
		transaction.commit();
		session.close();
		String msg = "Patient is Registered Successfully.";
		return msg;
	}
}
