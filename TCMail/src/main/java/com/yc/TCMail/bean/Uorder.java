package com.yc.TCMail.bean;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="uorder",catalog="tcmail")
public class Uorder {
	private Integer id;
	private Integer uid;
	private Integer aid;
	private String paytype;
	
	private String paystatu;
	private String orderstatu;
	private String tcomp;
	private String ordertime;
	
	/*private User user;
	private Address addr;*/
	//private Goods goods;
	private List<Orderdetail> details;
	
	/**
	 * @Transient springmvc 扫描时跳过该属性
	 */
	/*@Transient
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	@Transient
	public Address getAddr() {
		return addr;
	}
	
	public void setAddr(Address addr) {
		this.addr = addr;
	}
	*/
	
	@Transient
	public List<Orderdetail> getDetails() {
		return details;
	}
	public void setDetails(List<Orderdetail> details) {
		this.details = details;
	}
	
	/**
	 * @GeneratedValue 主键生成策略
	 * IDENTITY 自动递增
	 * @Column 主键属性 nullable部位空  unique 不重复
	 */
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
	
	@Column(name="paytype",length=20)
	public String getPaytype() {
		return paytype;
	}
	public void setPaytype(String paytype) {
		this.paytype = paytype;
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
	@Column(name="aid",length=11)
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public String getOrdertime() {
		return ordertime;
	}
	public void setOrdertime(String ordertime) {
		this.ordertime = ordertime;
	}
	@Override
	public String toString() {
		return "Uorder [id=" + id + ", uid=" + uid + ", aid=" + aid + ", paytype=" + paytype + ", paystatu=" + paystatu
				+ ", orderstatu=" + orderstatu + ", tcomp=" + tcomp + ", ordertime=" + ordertime + ", details="
				+ details + "]";
	}
	
	
	
}
