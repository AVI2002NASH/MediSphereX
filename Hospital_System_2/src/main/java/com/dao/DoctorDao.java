package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Doctor;

@Repository
public class DoctorDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public boolean registerDoctor(Doctor doctor) {
        try {
            sessionFactory.getCurrentSession().save(doctor);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Transactional(readOnly = true)
    public List<Doctor> getAllDoctor() {
        try {
            Session session = sessionFactory.getCurrentSession();
            Query<Doctor> query = session.createQuery("from Doctor order by id desc", Doctor.class);
            return query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Transactional(readOnly = true)
    public Doctor getDoctorById(int id) {
        try {
            Session session = sessionFactory.getCurrentSession();
            return session.get(Doctor.class, id);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Transactional
    public boolean updateDoctor(Doctor doctor) {
        try {
            sessionFactory.getCurrentSession().update(doctor);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Transactional
    public boolean deleteDoctor(int id) {
        try {
            Session session = sessionFactory.getCurrentSession();
            Doctor doctor = session.get(Doctor.class, id);
            if (doctor != null) {
                session.delete(doctor);
                return true;
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Transactional(readOnly = true)
    public Doctor login(String email, String password) {
        try {
            Session session = sessionFactory.getCurrentSession();
            Query<Doctor> query = session.createQuery("from Doctor where email = :email and password = :password", Doctor.class);
            query.setParameter("email", email);
            query.setParameter("password", password);
            return query.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Transactional(readOnly = true)
    public int countAppointment() {
        try {
            Session session = sessionFactory.getCurrentSession();
            Query<Long> query = session.createQuery("select count(a) from Appointment a", Long.class);
            return query.getSingleResult().intValue();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Transactional(readOnly = true)
    public int countUser() {
        try {
            Session session = sessionFactory.getCurrentSession();
            Query<Long> query = session.createQuery("select count(u) from User u", Long.class);
            return query.getSingleResult().intValue();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Transactional(readOnly = true)
    public int countDoctor() {
        try {
            Session session = sessionFactory.getCurrentSession();
            Query<Long> query = session.createQuery("select count(d) from Doctor d", Long.class);
            return query.getSingleResult().intValue();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Transactional(readOnly = true)
    public int countSpecialist() {
        try {
            Session session = sessionFactory.getCurrentSession();
            Query<Long> query = session.createQuery("select count(s) from Specialist s", Long.class);
            return query.getSingleResult().intValue();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Transactional(readOnly = true)
    public int countAppointmentByDoctorId(int doctorId) {
        try {
            Session session = sessionFactory.getCurrentSession();
            Query<Long> query = session.createQuery("select count(a) from Appointment a where a.doctorId = :doctorId", Long.class);
            query.setParameter("doctorId", doctorId);
            return query.getSingleResult().intValue();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }
}
