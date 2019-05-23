package com.yc.TCMail.bean;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="gtype",catalog="tcmail")
public class Gtype  implements java.io.Serializable{
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String name;
	private Integer pid;
	private Integer sunid;
	private List<Gtype> childType;
	private Gtype superType;
	private List<Gtype> gsonType;
	private List<Goods> goodsList;
	
	
	@Transient
	public List<Goods> getGoodsList() {
		return goodsList;
	}
	public void setGoodsList(List<Goods> goodsList) {
		this.goodsList = goodsList;
	}
	@Transient
	public List<Gtype> getGsonType() {
		return gsonType;
	}
	public void setGsonType(List<Gtype> gsonType) {
		this.gsonType = gsonType;
	}
	@Transient
	public Gtype getSuperType() {
		return superType;
	}
	public void setSuperType(Gtype superType) {
		this.superType = superType;
	}
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

	@Column(name="sunid",length=11)
	public Integer getSunid() {
		return sunid;
	}
	public void setSunid(Integer sunid) {
		this.sunid = sunid;
	}
	@Override
	public String toString() {

		return "Gtype [id=" + id + ", name=" + name + ", pid=" + pid + ", sunid=" + sunid + ", childType=" + childType
				+ "]";


	}
}
