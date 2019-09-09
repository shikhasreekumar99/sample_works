package com.shikha.Sample;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
       Alien al=new Alien();
       al.setAid(102);
       al.setAname("sethu");
       al.setColor("blue");
       
       Configuration con=new Configuration().configure().addAnnotatedClass(Alien.class);
       ServiceRegistry reg=new ServiceRegistryBuilder().applySettings(con.getProperties()).buildServiceRegistry();
       SessionFactory sf=con.buildSessionFactory(reg);
    		   
       Session s=sf.openSession();
       Transaction tx=s.beginTransaction();
    
       s.save(al);
       
       tx.commit();
    }
}
