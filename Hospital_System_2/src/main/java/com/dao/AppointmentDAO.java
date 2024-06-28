package com.dao;

import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Appointment;

@Repository
public class AppointmentDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public boolean saveAppointment(Appointment appointment) {
        Transaction transaction = null;
        try (Session session = sessionFactory.getCurrentSession()) {
            transaction = session.beginTransaction();
            session.save(appointment);
            transaction.commit();
            return true;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
            return false;
        }
    }

    public ArrayList<Appointment> getAllAppointmentByLoginUser(int userId) {
        Transaction transaction = null;
        ArrayList<Appointment> list = null;
        try (Session session = sessionFactory.getCurrentSession()) {
            transaction = session.beginTransaction();
            Query<Appointment> query = session.createQuery("from Appointment where userId = :userId", Appointment.class);
            query.setParameter("userId", userId);
            list = (ArrayList<Appointment>) query.getResultList();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return list;
    }

    public ArrayList<Appointment> getAllAppointmentByDoctorLogin(int doctorId) {
        Transaction transaction = null;
        ArrayList<Appointment> list = null;
        try (Session session = sessionFactory.getCurrentSession()) {
            transaction = session.beginTransaction();
            Query<Appointment> query = session.createQuery("from Appointment where doctorId = :doctorId", Appointment.class);
            query.setParameter("doctorId", doctorId);
            list = (ArrayList<Appointment>) query.getResultList();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return list;
    }

    public Appointment getAppointmentById(int id) {
        Transaction transaction = null;
        Appointment appointment = null;
        try (Session session = sessionFactory.getCurrentSession()) {
            transaction = session.beginTransaction();
            appointment = session.get(Appointment.class, id);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return appointment;
    }

    public boolean updateCommentStatus(int id, int doctorId, String status) {
        Transaction transaction = null;
        boolean isSuccess = false;
        try (Session session = sessionFactory.getCurrentSession()) {
            transaction = session.beginTransaction();
            Appointment appointment = session.get(Appointment.class, id);
            if (appointment != null && appointment.getDoctorId() == doctorId) {
                appointment.setStatus(status);
                session.update(appointment);
                transaction.commit();
                isSuccess = true;
            } else {
                transaction.rollback();
            }
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return isSuccess;
    }

    public ArrayList<Appointment> getAllAppointment() {
        Transaction transaction = null;
        ArrayList<Appointment> appointments = null;
        try (Session session = sessionFactory.getCurrentSession()) {
            transaction = session.beginTransaction();
            Query<Appointment> query = session.createQuery("from Appointment order by id desc", Appointment.class);
            appointments = (ArrayList<Appointment>) query.getResultList();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return appointments;
    }
}
