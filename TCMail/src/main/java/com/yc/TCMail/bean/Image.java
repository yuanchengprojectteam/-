package com.yc.TCMail.bean;


import javax.persistence.*;

@Entity
@Table(name="image",catalog="tcmail")
public class Image {
	private Integer id;
	private Integer gid;
	private String path;
	private Integer sid;

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
	@Column(name="path",length=50)
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	@Column(name="sid",length=11)
	public Integer getSid() {
		return sid;
	}
	
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	
}
