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
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public Integer getLevel() {
		return level;
	}
	public void setLevel(Integer level) {
		this.level = level;
	}
	public String getBustime() {
		return bustime;
	}
	public void setBustime(String bustime) {
		this.bustime = bustime;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}
