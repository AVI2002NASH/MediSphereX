package com.service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.dao.AppointmentDAO;
import com.model.Appointment;

@Service
public class AppointmentServiceImpl implements AppointmentService {

    @Autowired
    private AppointmentDAO appointmentDAO;

    @Override
    @Transactional
    public boolean saveAppointment(Appointment appointment) {
        return appointmentDAO.saveAppointment(appointment);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Appointment> getAllAppointmentByLoginUser(int userId) {
        return appointmentDAO.getAllAppointmentByLoginUser(userId);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Appointment> getAllAppointmentByDoctorLogin(int doctorId) {
        return appointmentDAO.getAllAppointmentByDoctorLogin(doctorId);
    }

    @Override
    @Transactional(readOnly = true)
    public Appointment getAppointmentById(int id) {
        return appointmentDAO.getAppointmentById(id);
    }

    @Override
    @Transactional
    public boolean updateCommentStatus(int id, int doctorId, String status) {
        return appointmentDAO.updateCommentStatus(id, doctorId, status);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Appointment> getAllAppointment() {
        return appointmentDAO.getAllAppointment();
    }
}
