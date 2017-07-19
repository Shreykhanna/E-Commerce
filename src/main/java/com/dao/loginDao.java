/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.Registration;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author shrey
 */
@Repository
public class loginDao {
    @Autowired
    private SessionFactory sessionFactory;
    public Session getSession()
    {
        return sessionFactory.openSession();
    }
    public boolean validateUser(String username,String password)
    {
        Session session=getSession();
        Query query=session.createQuery("from Registration where username=:username and password=:password");
        query.setParameter("username",username);
        query.setParameter("password",password);
        List<Registration> list=query.list();
        System.out.println("Size of list"+list.size());
        if(list.size()>0)
        {
            return true;
        }else
        {
            return false;
        }
    }
}
