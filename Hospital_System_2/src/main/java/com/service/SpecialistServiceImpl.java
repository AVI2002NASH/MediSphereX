package com.service;

import com.dao.SpecialistDAO;
import com.model.Specialist;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class SpecialistServiceImpl implements SpecialistService {

    @Autowired
    private SpecialistDAO specialistDAO;

    @Override
    @Transactional
    public boolean addSpecialist(String spec) {
        return specialistDAO.addSpecialist(spec);
    }

    @Override
    @Transactional
    public List<Specialist> getAllSpecialists() {
        return specialistDAO.getAllSpecialists();
    }
}
