package com.david.controller;

import com.david.domain.Train;
import com.david.domain.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by ZhengDaPeng on 2015/9/30.
 */
@Controller
@RequestMapping("/")
public class LoginController {

    @RequestMapping(value="login",method= RequestMethod.POST)
    public @ResponseBody
    User postUserByLoginMessage(@RequestBody User user){
        return new User();
    }

    @RequestMapping(value="login",method= RequestMethod.GET)
    public String getLogin(){
        return "welcome/login";
    }
}
