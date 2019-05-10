package com.yc.TCMail.util;


import javax.persistence.EntityManagerFactory;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
@Component
public class HbUtil {

	@Autowired
	private EntityManagerFactory emf;
	
	private Session session;
	
	
	public  Session getSession() {
		if(session==null) {
			session=emf.unwrap(SessionFactory.class).openSession();
		}
		return session;
	}

	public void Before() {
		if(session==null) {
			session=emf.unwrap(SessionFactory.class).openSession();
		}
		session.beginTransaction();
	}
	
	public  void close() {
		if(session==null) {
			session=emf.unwrap(SessionFactory.class).openSession();
		}
		session.getTransaction().commit();
		session.close();
	}
	
	@SuppressWarnings("deprecation")
	public Criteria getCriteria(Class<?> cls ) {
		if(session==null) {
			session=emf.unwrap(SessionFactory.class).openSession();
		}
		return session.createCriteria(cls);
	}
	
	public Transaction getTransaction() {
		if(session==null) {
			session=emf.unwrap(SessionFactory.class).openSession();
		}
		return (Transaction) session.getTransaction();
	}
	
	
}
