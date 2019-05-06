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
	private  String  descr;
	private  String  rimage;
	

	/**
	 * @return the descr
	 */
	@Column(name="descr",length=50)
	public String getDescr() {
		return descr;
	}
	/**
	 * @param descr the descr to set
	 */
	public void setDescr(String descr) {
		this.descr = descr;
	}
	/**
	 * @return the rimage
	 */
	@Column(name="rimage",length=50)
	public String getRimage() {
		return rimage;
	}
	/**
	 * @param rimage the rimage to set
	 */
	public void setRimage(String rimage) {
		this.rimage = rimage;
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
	
}
