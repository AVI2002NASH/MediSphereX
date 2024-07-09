package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Specialist {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

	private int id;
    private String specialistName;

public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSpecialistName() {
		return specialistName;
	}
	public void setSpecialistName(String specialistName) {
		this.specialistName = specialistName;
	}
	public Specialist(int id, String specialistName) {
		super();
		this.id = id;
		this.specialistName = specialistName;
	}
	public Specialist() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Specialist(String spec) {
		this.specialistName = spec;

		// TODO Auto-generated constructor stub
	}
     


}
