package com.example.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;
import lombok.NoArgsConstructor;
import jakarta.validation.constraints.*;

@Entity
@Data
@NoArgsConstructor
public class Employee {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int eid;
	
	@NotBlank(message="Employee name is required")
	@Size(min=3,max=30,message="Name must contain 3 to 20 Characters")
	private String ename;
	
	@NotNull(message="Salary is required")
	@Positive(message="Salary must be greater than Zero")
	private double sal;

}
