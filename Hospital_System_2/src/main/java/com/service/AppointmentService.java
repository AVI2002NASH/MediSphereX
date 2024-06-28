package com.service;

import java.util.List;

import com.model.Appointment;

public interface AppointmentService {

    boolean saveAppointment(Appointment appointment);

    List<Appointment> getAllAppointmentByLoginUser(int userId);

    List<Appointment> getAllAppointmentByDoctorLogin(int doctorId);

    Appointment getAppointmentById(int id);

    boolean updateCommentStatus(int id, int doctorId, String status);

    List<Appointment> getAllAppointment();
}
