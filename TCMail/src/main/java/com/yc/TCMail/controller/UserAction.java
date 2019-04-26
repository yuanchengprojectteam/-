package com.yc.TCMail.controller;

import javax.persistence.EntityManagerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("loginedUser")
@RequestMapping("userAction")
public class UserAction {
	@Autowired
    private EntityManagerFactory emf;
	
	
	

}
