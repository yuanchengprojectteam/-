package com.yc.TCMail.bean;

import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="gtype",catalog="tcmail")
public class Gtype {
	private Integer id;
	private String name;
	private Integer pid;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id",unique=true,nullable=false)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name="name",length=20)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column(name="pid",length=11)
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
}
