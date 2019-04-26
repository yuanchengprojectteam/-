package com.yc.TCMail.bean;

import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="gtype",catalog="tcmail")
public class Gtype {
	private Integer id;
	private Integer name;
	private Integer pid;
	private Set<Goods> goods;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id",unique=true,nullable=false)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name="name",length=20)
	public Integer getName() {
		return name;
	}
	public void setName(Integer name) {
		this.name = name;
	}
	@Column(name="pid",length=11)
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	@OneToMany(mappedBy="type",cascade= {CascadeType.REMOVE})
	public Set<Goods> getGoods() {
		return goods;
	}
	public void setGoods(Set<Goods> goods) {
		this.goods = goods;
	}
	
}
