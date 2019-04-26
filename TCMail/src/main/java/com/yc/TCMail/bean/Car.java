package com.yc.TCMail.bean;

import java.util.List;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="car",catalog="tcmail")
public class Car {
	private Integer id;
	private Integer gid;
	private Integer uid;
	private Set<Goods> goods;
	private Goods good;
	private User user;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id",nullable=false,unique=true)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name="gid",length=11)
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	@Column(name="uid",length=11)
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	@OneToMany(mappedBy="car",cascade= {CascadeType.REMOVE})
	public Set<Goods> getGoods() {
		return goods;
	}
	
	
	public void setGoods(Set<Goods> goods) {
		this.goods = goods;
	}
	@OneToOne
	@JoinColumn(name="id")
	public User getUser() {
		return user;
	}
	
	public void setUser(User user) {
		this.user = user;
	}
	@OneToOne
	@JoinColumn(name="id")
	public Goods getGood() {
		return good;
	}
	public void setGood(Goods good) {
		this.good = good;
	}
	
	
}
