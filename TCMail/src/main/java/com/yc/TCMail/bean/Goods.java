package com.yc.TCMail.bean;

import java.util.List;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="goods",catalog="tcmail")
public class Goods {
	private Integer id;
	private Integer tid;
	private Integer sid;
	private String name;
	private String color;
	private String size;
	private Integer price;
	private Integer num;
	private Integer point;
	private Integer commnum;
	private String image;

	//private String intime;
	
	private Shop shop;
	private Gtype type;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id",nullable=false,unique=true)
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	@Transient
	public Shop getShop() {
		return shop;
	}
	
	public void setShop(Shop shop) {
		this.shop = shop;
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
	@Column(name="name",length=20)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column(name="color",length=20)
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	@Column(name="size",length=20)
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	@Column(name="price",length=10)
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	@Column(name="num",length=10)
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	@Column(name="point",length=10)
	public Integer getPoint() {
		return point;
	}
	public void setPoint(Integer point) {
		this.point = point;
	}
	@Column(name="commnum",length=10)
	public Integer getCommnum() {
		return commnum;
	}
	public void setCommnum(Integer commnum) {
		this.commnum = commnum;
	}
	@Column(name="image",length=2000)
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	@Transient
	public Gtype getType() {
		return type;
	}

	public void setType(Gtype type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Goods [id=" + id + ", tid=" + tid + ", sid=" + sid + ", name=" + name + ", color=" + color + ", size="
				+ size + ", price=" + price + ", num=" + num + ", point=" + point + ", commnum=" + commnum + ", image="
				+ image + ", shop=" + shop + ", type=" + type + "]";
	}

	
	
}
