package com.yc.TCMail.bean;

import javax.persistence.*;

@Entity
@Table(name="goodsmsg",catalog="tcmail")
public class Goodsmsg {
	private Integer id;
	private Integer tid;
	private Integer sid;
	private String color;
	private String size;
	private Gtype type;
	private Shop shop;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id",nullable=false,unique=true)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name="tid",length=11)
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	@Column(name="sid",length=11)
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	@Column(name="color",length=50)
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	@Column(name="size",length=50)
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	@OneToOne
	@JoinColumn(name="id")
	public Gtype getType() {
		return type;
	}
	
	public void setType(Gtype type) {
		this.type = type;
	}
	@OneToOne
	@JoinColumn(name="id")
	public Shop getShop() {
		return shop;
	}
	public void setShop(Shop shop) {
		this.shop = shop;
	}
	
}
