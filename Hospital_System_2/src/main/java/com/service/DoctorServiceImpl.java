package com.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.dao.DoctorDao;
import com.model.Doctor;

@Service
public class DoctorServiceImpl implements DoctorService {

    @Autowired
    private DoctorDao doctorDao;

    @Override
    @Transactional
    public boolean registerDoctor(Doctor doctor) {
        return doctorDao.registerDoctor(doctor);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Doctor> getAllDoctors() {
        return doctorDao.getAllDoctor();
    }

    @Override
    @Transactional(readOnly = true)
    public Doctor getDoctorById(int id) {
        return doctorDao.getDoctorById(id);
    }

    @Override
    @Transactional
    public boolean updateDoctor(Doctor doctor) {
        return doctorDao.updateDoctor(doctor);
    }

    @Override
    @Transactional
    public boolean deleteDoctor(int id) {
        return doctorDao.deleteDoctor(id);
    }

    @Override
    @Transactional(readOnly = true)
    public Doctor login(String email, String password) {
        return doctorDao.login(email, password);
    }

    @Override
    @Transactional(readOnly = true)
    public int countAppointment() {
        return doctorDao.countAppointment();
    }

    @Override
    @Transactional(readOnly = true)
    public int countUser() {
        return doctorDao.countUser();
    }

    @Override
    @Transactional(readOnly = true)
    public int countDoctor() {
        return doctorDao.countDoctor();
    }

    @Override
    @Transactional(readOnly = true)
    public int countSpecialist() {
        return doctorDao.countSpecialist();
    }

    @Override
    @Transactional(readOnly = true)
    public int countAppointmentByDoctorId(int doctorId) {
        return doctorDao.countAppointmentByDoctorId(doctorId);
    }
}
