package com.yc.TCMail.controller;

import javax.persistence.EntityManagerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("orderAction")
public class OrderAction {
	
	@Autowired
    private EntityManagerFactory emf;
	
	
	

}
