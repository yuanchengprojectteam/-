package com.yc.TCMail.bean;

import javax.persistence.*;

@Entity
@Table(name="address",catalog="tcmail")
public class Address {
	private Integer id;
	private Integer uid;
	private String name;
	private String phone;
	private String recvaddr;
	private String level;
	private  String  detailaddr;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
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
	@Column(name="level",length=20)
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	
	
	@Column(name="recvaddr",length=50)
	public String getRecvaddr() {
		return recvaddr;
	}

	public void setRecvaddr(String recvaddr) {
		this.recvaddr = recvaddr;
	}

	
	@Column(name="detailaddr",length=50)
	public String getDetailaddr() {
		return detailaddr;
	}
	
	
	public void setDetailaddr(String detailaddr) {
		this.detailaddr = detailaddr;
	}
	
	@Override
	public String toString() {
		return "detailaddress [id=" + id + ", uid=" + uid + ", name=" + name + ", phone=" + phone + ", detailaddr=" + detailaddr
				+ ", level=" + level + "]";

	}
	
	
}
