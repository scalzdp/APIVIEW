package com.david.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by Administrator on 2015/10/11.
 */
public class APIMessage {
    private Integer id;
    private String name;
    private String summary;
    private String httpMethod;
    private String url;
    private Set<RequestParam> param = new HashSet<>();

}
