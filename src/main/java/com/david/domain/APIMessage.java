package com.david.domain;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by Administrator on 2015/10/11.
 */
@Entity
@Table(name = "apimessage")
public class APIMessage {
    @Id
    @GeneratedValue
    @Column(name="id",nullable = false, insertable = true, updatable = true)
    private Integer id;
    @Column(name="name")
    private String name;
    @Column(name="summary")
    private String summary;
    @Column(name="httpmethod")
    private String httpMethod;
    @Column(name="url")
    private String url;

    @ManyToOne(targetEntity = Project.class)
    @JoinColumn(name="projectid",updatable=false)
    private Project project;

    @OneToMany(targetEntity=RequestParam.class,cascade = CascadeType.ALL)
    @Fetch(FetchMode.JOIN)
    @JoinColumn(name="apiid",updatable=false)
    private Set<RequestParam> param = new HashSet<>();


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getHttpMethod() {
        return httpMethod;
    }

    public void setHttpMethod(String httpMethod) {
        this.httpMethod = httpMethod;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Project getProject() {
        return project;
    }

    public void setProject(Project project) {
        this.project = project;
    }

    public Set<RequestParam> getParam() {
        return param;
    }

    public void setParam(Set<RequestParam> param) {
        this.param = param;
    }
}
