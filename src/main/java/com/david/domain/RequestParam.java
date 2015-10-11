package com.david.domain;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;

/**
 * Created by Administrator on 2015/10/11.
 */
@Entity
@Table(name = "requestparam")
public class RequestParam {
    @Id
    @GeneratedValue
    @Column(name="id",nullable = false, insertable = true, updatable = true)
    private Integer id;
    @Column(name="paramstring")
    private String paramString;

    @ManyToOne(targetEntity = APIMessage.class, cascade = CascadeType.ALL)
    @Fetch(FetchMode.JOIN)
    @JoinColumn(name="apiid",updatable=false)
    private APIMessage apiMessage;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public APIMessage getApiMessage() {
        return apiMessage;
    }

    public void setApiMessage(APIMessage apiMessage) {
        this.apiMessage = apiMessage;
    }

    public String getParamString() {
        return paramString;
    }

    public void setParamString(String paramString) {
        this.paramString = paramString;
    }
}
