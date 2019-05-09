package com.yc.TCMail.bean;

import javax.persistence.*;

@Entity
@Table(name="shop",catalog="tcmail")
public class Shop {
	private Integer id;
	private Integer uid;
	private String name;
	private String addr;
	private Integer level;
	private String bustime;
	private String type;

	
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id",nullable=false,unique=true)
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
	@Column(name="addr",length=50)
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	@Column(name="level",length=2)
	public Integer getLevel() {
		return level;
	}
	public void setLevel(Integer level) {
		this.level = level;
	}
	@Column(name="bustime",length=20)
	public String getBustime() {
		return bustime;
	}
	public void setBustime(String bustime) {
		this.bustime = bustime;
	}
	@Column(name="type",length=10)
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "Shop [id=" + id + ", uid=" + uid + ", name=" + name + ", addr=" + addr + ", level=" + level
				+ ", bustime=" + bustime + ", type=" + type + "]";
	}
	
}
