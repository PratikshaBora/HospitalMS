package com.tka.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tka.model.Patient;
import com.tka.service.HospitalService;

@Controller
public class HospitalController {
	
	@Autowired
	HospitalService service;
	
	@GetMapping("/welcome")
	public String welcomePage() {
		System.out.println("Inside controller");
		return "Welcome";
	}
	
	@PostMapping("/loginPatient")
	public String loginPatient(@RequestParam String uname, @RequestParam String password, Model m) {
		Patient p = service.loginPatient(uname,password);
		String result=null;
		if(p!=null) {
			result = "PatientProfile";
			m.addAttribute("Patient",p);
		}
		else
			result = "Invalid";
		return result;
	}
	
	@PostMapping("/registerPatient")
	public String registerPatient(@ModelAttribute Patient p) {
		System.out.println(p);
		String msg = service.registerPatient(p);
		
		if(msg.equalsIgnoreCase("Patient is Registered Successfully.")) {
			return "PatientLogin";
		}
		else
			return "Invalid";	
	}
	
	@GetMapping("/allData")
	public String getAllPatientData(Model m){
		 m.addAttribute("list", service.getAllPatientData());
		 return "AllPatients";
	}
}
