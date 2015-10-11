package com.david.domain;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.springframework.stereotype.Component;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by ZhengDaPeng on 2015/10/9.
 */
@Entity
@Table(name = "project")
public class Project {

    @Id
    @GeneratedValue
    @Column(name="id",nullable = false, insertable = true, updatable = true)
    private Integer id;
    @Column(name="name")
    private String name;
    @Column(name="summary")
    private String summary;
    @Column(name="level")
    private Integer level;
    @Column(name="createtime")
    private Date createTime;

    @ManyToOne(targetEntity = User.class)
    @JoinColumn(name="userid",updatable=false)
    private User user;

    @OneToMany(targetEntity=APIMessage.class,cascade = CascadeType.ALL)
    @Fetch(FetchMode.JOIN)
    @JoinColumn(name="projectid",updatable=false)
    private Set<APIMessage> apiMessageSet= new HashSet<>();

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Set<APIMessage> getApiMessageSet() {
        return apiMessageSet;
    }

    public void setApiMessageSet(Set<APIMessage> apiMessageSet) {
        this.apiMessageSet = apiMessageSet;
    }
}
