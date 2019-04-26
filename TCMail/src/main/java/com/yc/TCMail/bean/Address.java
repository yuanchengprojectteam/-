package com.yc.TCMail.bean;

import javax.persistence.*;

@Entity
@Table(name="address",catalog="tcmail")
public class Address {
	private Integer id;
	private Integer uid;
	private String name;
	private String phone;
	private String addr;
	private User user;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id",unique=true,nullable=false)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name="uid",length=11)
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	@Column(name="name",length=20)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column(name="phone",length=20)
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Column(name="addr",length=50)
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	@ManyToOne
	@JoinColumn(name="id",insertable=false,updatable=false)
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
}
