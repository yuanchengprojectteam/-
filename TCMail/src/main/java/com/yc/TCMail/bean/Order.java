package com.yc.TCMail.bean;

import javax.persistence.*;

@Entity
@Table(name="order",catalog="tcmail")
public class Order {
	private Integer id;
	private Integer uid;
	private Integer gid;
	private String paytype;
	private Integer num;
	private String paystatu;
	private String orderstatu;
	private String tcomp;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
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
	@Column(name="gid",length=11)
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	@Column(name="paytype",length=20)
	public String getPaytype() {
		return paytype;
	}
	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}
	@Column(name="num",length=10)
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	@Column(name="paystatu",length=20)
	public String getPaystatu() {
		return paystatu;
	}
	public void setPaystatu(String paystatu) {
		this.paystatu = paystatu;
	}
	@Column(name="orderstatu",length=20)
	public String getOrderstatu() {
		return orderstatu;
	}
	public void setOrderstatu(String orderstatu) {
		this.orderstatu = orderstatu;
	}
	@Column(name="tcomp",length=20)
	public String getTcomp() {
		return tcomp;
	}
	public void setTcomp(String tcomp) {
		this.tcomp = tcomp;
	}
	
}
