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
	
	private Goods goods;
	
	
	
	@Transient
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
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
	
	
	@Column(name="ftime",length=20)
	public String getFtime() {
		return ftime;
	}
	public void setFtime(String ftime) {
		this.ftime = ftime;
	}
	
	
	
	
}
