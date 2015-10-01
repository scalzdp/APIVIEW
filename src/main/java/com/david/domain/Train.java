package com.david.domain;

import java.util.Date;



public class Train {

    private Long id;
    private String name;
    private Integer speed;
    private Boolean diesel;
    private Date date;

    public Train() {
    }

    public Train(Long id, String name, Integer speed, Boolean diesel, Date date) {
        this.id = id;
        this.name = name;
        this.speed = speed;
        this.diesel = diesel;
        this.date = date;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getSpeed() {
        return speed;
    }

    public void setSpeed(Integer speed) {
        this.speed = speed;
    }

    public Boolean getDiesel() {
        return diesel;
    }

    public void setDiesel(Boolean diesel) {
        this.diesel = diesel;
    }

    //@JsonSerialize(using = CustomDateSerializer.class)
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
}