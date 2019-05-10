package com.yc.TCMail.bean;

import javax.persistence.*;

@Entity
@Table(name="shop",catalog="tcmail")
public class Shop {
    private Integer id;

    private String addr;

    private String bustime;

    private Integer level;

    private String name;

    private String type;

    private Integer uid;
    
    private  String  describe;
   
   
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id",unique=true,nullable=false)
	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Column(name="addr",length=200)
    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    @Column(name="bustime",length=50)
    public String getBustime() {
        return bustime;
    }

    public void setBustime(String bustime) {
        this.bustime = bustime;
    }
    @Column(name="level",length=5)
    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }
    @Column(name="name",length=50)
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    @Column(name="type",length=50)
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    @Column(name="uid",length=11)
    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
    
    @Column(name="describe",length=500)
   	public String getDescribe() {
   		return describe;
   	}

   	public void setDescribe(String describe) {
   		this.describe = describe;
   	}
   	
}