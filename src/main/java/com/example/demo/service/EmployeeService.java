package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Employee;
import com.example.demo.repo.EmployeeRepo;

@Service
public class EmployeeService {
	
	@Autowired
	EmployeeRepo er;
	public void addEmployee(Employee emp) {
		er.save(emp);
		
	}
	public List<Employee>getAllEmp(){
		return er.findAll();
	}

}
