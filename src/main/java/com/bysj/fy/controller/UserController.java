package com.bysj.fy.controller;

import com.bysj.fy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;


@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/login.do")
    public String login(HttpServletRequest request ){
        try {
            userService.isLogin(request);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "index";
    }
}
