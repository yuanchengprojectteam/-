package com.yc.TCMail.bean;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="gtype",catalog="tcmail")
public class GType {
	private Integer id;
	private Integer name;
	private Integer pid;
	private List<Goods> goods;
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
	@OneToMany(mappedBy="")
	public List<Goods> getGoods() {
		return goods;
	}
	public void setGoods(List<Goods> goods) {
		this.goods = goods;
	}
	
}
