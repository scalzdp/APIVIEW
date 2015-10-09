package com.david.controller;

import com.david.domain.User;
import com.david.dto.Result;
import com.david.exception.DAOException;
import com.david.service.IRegisterService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * Created by ZhengDaPeng on 2015/10/9.
 */
@Controller
@RequestMapping("/")
public class RegisterController {

    @Resource(name="registerService")
    private IRegisterService service;



    @RequestMapping(value = "register",method= RequestMethod.POST)
    public @ResponseBody
    Result<User>
    PostRegister(@RequestBody User user){
        Result<User> result = new Result<User>();
        try {
            service.Register(user);
            result.setReturnCode("0001");
            result.setSuccess(true);
            result.setGetResult(user);
        }catch(DAOException e){
            result.setReturnCode("0000");
            result.setSuccess(false);
        }
        return result;
    }

    @RequestMapping(value="register",method=RequestMethod.GET)
    public String GetRegister(){
        return "welcome/register";
    }
}
