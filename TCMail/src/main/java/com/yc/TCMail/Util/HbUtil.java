package com.yc.TCMail.util;

import java.util.List;

import javax.persistence.EntityManagerFactory;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
@Component
public class HbUtil {

	@Autowired
	private EntityManagerFactory emf;
	
	
	public  Session getSession() {
		return emf.unwrap(SessionFactory.class).openSession();
	}

	public void Before() {
		emf.unwrap(SessionFactory.class).openSession().beginTransaction();
	}
	
	public  void close() {
		emf.unwrap(SessionFactory.class).openSession().close();
	}
	
	public Criteria getCriteria(Class<?> cls ) {
		return emf.unwrap(SessionFactory.class).openSession().createCriteria(cls);
	}
	
}
