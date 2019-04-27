package com.yc.TCMail.bean;

import java.util.List;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="favorite",catalog="tcmail")
public class Favorite {
	private Integer id;
	private Integer uid;
	private Integer shopid;
	private Integer goodsid;
	private String ftime;
	private User user;
	private Shop shop;
	private Goods good;
	private Set<Shop> shops;
	private Set<Goods> goods;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id",unique=true,nullable=false)
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
	@Column(name="shopid",length=11)
	public Integer getShopid() {
		return shopid;
	}
	public void setShopid(Integer shopid) {
		this.shopid = shopid;
	}
	@Column(name="goodsid",length=11)
	public Integer getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(Integer goodsid) {
		this.goodsid = goodsid;
	}
	@OneToOne
	@JoinColumn(name="id")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@OneToMany(mappedBy="favorite",cascade= {CascadeType.REMOVE})
	public Set<Shop> getShops() {
		return shops;
	}
	public void setShops(Set<Shop> shop) {
		this.shops = shop;
	}
	@OneToMany(mappedBy="favorite",cascade= {CascadeType.REMOVE})
	public Set<Goods> getGoods() {
		return goods;
	}
	public void setGoods(Set<Goods> goods) {
		this.goods=goods;
	}
	@OneToOne
	@JoinColumn(name="id")
	public Shop getShop() {
		return shop;
	}
	public void setShop(Shop shop) {
		this.shop = shop;
	}
	@OneToOne
	@JoinColumn(name="id")
	public Goods getGood() {
		return good;
	}
	public void setGood(Goods good) {
		this.good = good;
	}
	@Column(name="ftime",length=20)
	public String getFtime() {
		return ftime;
	}
	public void setFtime(String ftime) {
		this.ftime = ftime;
	}
	
	
	
	
}
