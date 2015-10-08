package com.david.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class IndexController {

    @RequestMapping("/index")
    public String getIndexPage() {
        return "index";
        //return message 返回指定的页面
    }
}