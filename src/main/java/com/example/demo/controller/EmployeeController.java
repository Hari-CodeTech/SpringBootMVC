package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Employee;
import com.example.demo.repo.EmployeeRepo;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/employees")
public class EmployeeController {
	
	@Autowired
	EmployeeRepo er;

	// it returns the view
	@GetMapping("/addEmp")
	public String addEmp() {
		return "addEmployee";
		
	}
	
	
	@PostMapping("/saveEmp")
	public ModelAndView saveEmp(@Valid @ModelAttribute Employee emp, BindingResult result) {
		
		if(result.hasErrors()) {
			ModelAndView mv = new ModelAndView("addEmployee");
	        mv.addObject("employee", emp);
	        return mv;
		}
		er.save(emp);
		System.out.println("Employee Register Successfully");
		return new ModelAndView("redirect:/employees/addEmp");
	}
	
	@GetMapping("/getEmp")
	public ModelAndView getAllEmployee() {
		List<Employee> emps=er.findAll();
		ModelAndView mv=new ModelAndView();
		mv.addObject("employees",emps);
		mv.setViewName("employeelist");
		return mv;
	}
	
	@GetMapping("/{eid}/delete")
	public ModelAndView deleteEid(@PathVariable int eid){
		
		er.deleteById(eid);
		System.out.println("Delete Employee successfully");
		return new ModelAndView("redirect:/employees/getEmp");
		
	}
	
	@GetMapping("/{eid}/edit")
	public ModelAndView editEmployee(@PathVariable int eid) {

	    Employee emp = er.findById(eid).orElse(null);

	    if (emp == null) {
	        return new ModelAndView("redirect:/employees/getEmp");
	    }

	    ModelAndView mv = new ModelAndView();
	    mv.addObject("employee", emp);
	    mv.setViewName("editEmployee");

	    return mv;
	}
	
	@PostMapping("/updateEmp")
	public ModelAndView updateEmployee(@ModelAttribute Employee emp) {

	    er.save(emp);

	    System.out.println("Employee Updated Successfully");

	    return new ModelAndView("redirect:/employees/getEmp");
	}
}
