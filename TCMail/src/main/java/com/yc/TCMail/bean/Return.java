package com.yc.TCMail.bean;

import javax.persistence.*;

@Entity
@Table(name="return",catalog="tcmail")
public class Return {
	private Integer id;
	private Integer oid;
	private String reason;
	private Integer money;
	private String date;
	private String statu;
	private Uorder order;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id",unique=true,nullable=false)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name="oid",length=11)
	public Integer getOid() {
		return oid;
	}
	public void setOid(Integer oid) {
		this.oid = oid;
	}
	@Column(name="reason",length=600)
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	@Column(name="money",length=11)
	public Integer getMoney() {
		return money;
	}
	public void setMoney(Integer money) {
		this.money = money;
	}
	@Column(name="date",length=20)
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Column(name="statu",length=20)
	public String getStatu() {
		return statu;
	}
	public void setStatu(String statu) {
		this.statu = statu;
	}
	@OneToOne
	@JoinColumn(name="id")
	public Uorder getOrder() {
		return order;
	}
	public void setOrder(Uorder order) {
		this.order = order;
	}
	
}
