package com.yc.TCMail.bean;

import javax.persistence.*;

@Entity
@Table(name="car",catalog="tcmail")
public class Car  implements java.io.Serializable{
	private static final long serialVersionUID = 1L;
	
	private Integer id;
	private Integer gid;
	private Integer uid;
	private Integer num;
	private Integer sid;
	
	private Goods goods;
	private Integer totalPrice;
	/*private Integer checkedStatu;
	
	@Transient
	public Integer getCheckedStatu() {
		return checkedStatu;
	}
	public void setCheckedStatu(Integer checkedStatu) {
		this.checkedStatu = checkedStatu;
	}*/
	@Transient
	public Integer getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Integer totalPrice) {
		this.totalPrice = totalPrice;
	}
	@Transient
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods good) {
		this.goods = good;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
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
	@Column(name="num",length=11)
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	@Column(name="sid",length=11)
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	@Override
	public String toString() {
		return "Car [id=" + id + ", gid=" + gid + ", uid=" + uid + ", num=" + num + ", sid=" + sid + ", good=" + goods
				+ "]";
	}
	
	
	
}
