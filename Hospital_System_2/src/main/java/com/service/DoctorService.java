package com.service;

import java.util.List;

import com.model.Doctor;

public interface DoctorService {
    
    boolean registerDoctor(Doctor doctor);
    
    List<Doctor> getAllDoctors();
    
    Doctor getDoctorById(int id);
    
    boolean updateDoctor(Doctor doctor);
    
    boolean deleteDoctor(int id);
    
    Doctor login(String email, String password);
    
    int countAppointment();
    
    int countUser();
    
    int countDoctor();
    
    int countSpecialist();
    
    int countAppointmentByDoctorId(int doctorId);
}
