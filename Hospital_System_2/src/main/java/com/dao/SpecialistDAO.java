package com.dao;
import java.util.List;

import com.model.Specialist;

	public interface SpecialistDAO {
	    boolean addSpecialist(String spec);
	    List<Specialist> getAllSpecialists();
	}


