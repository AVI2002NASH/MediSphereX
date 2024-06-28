package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Specialist;

import java.util.List;

@Repository
public class SpecialistDAOImpl implements SpecialistDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public boolean addSpecialist(String spec) {
        try {
            Session session = sessionFactory.getCurrentSession();
            Specialist specialist = new Specialist(spec);
            session.save(specialist);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    @Transactional
    public List<Specialist> getAllSpecialists() {
        try {
            Session session = sessionFactory.getCurrentSession();
            Query<Specialist> query = session.createQuery("from Specialist", Specialist.class);
            return query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
