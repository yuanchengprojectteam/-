package com.yc.TCMail.bean;

import java.util.List;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="gtype",catalog="tcmail")
public class Gtype {
	private Integer id;
	private String name;
	private Integer pid;
	
	private List<Gtype> childType;
	
	
	@Transient
	public List<Gtype> getChildType() {
		return childType;
	}
	public void setChildType(List<Gtype> childType) {
		this.childType = childType;
	}
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
	@Override
	public String toString() {
		return "Gtype [id=" + id + ", name=" + name + ", pid=" + pid + ", childType=" + childType + "]";
	}
	
	
}
