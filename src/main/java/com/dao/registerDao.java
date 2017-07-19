/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.Registration;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author shrey
 */
@Repository
public class registerDao {
    @Autowired
    private SessionFactory sessionFactory;
    
    public Session getsession()
    {
        return sessionFactory.openSession();
    }
    public void registerDetails(Registration registration)
    {
        Session session=getsession();
        Transaction transaction=session.beginTransaction();
        session.save(registration);
        transaction.commit();
        session.close();
    }
    
}
