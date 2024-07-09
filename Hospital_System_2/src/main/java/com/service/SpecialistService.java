package com.service;


import java.util.List;

import com.model.Specialist;

public interface SpecialistService {
    boolean addSpecialist(String spec);
    List<Specialist> getAllSpecialists();
}
