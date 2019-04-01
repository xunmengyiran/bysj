package com.bysj.fy.controller;

import com.bysj.fy.bean.User;
import com.bysj.fy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/login.do")
    public String login(HttpServletRequest request) {
        boolean flag = false;
        try {
            flag = userService.isLogin(request);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (flag){
            return "index";
        }else {
            return "login";
        }
    }

    @RequestMapping("/goToLogin.do")
    public String goToLogin() {
        return "login";
    }

    /**
     * 首页
     * @return
     */
    @RequestMapping("/goToIndex.do")
    public  String goToIndex() {
        return "index";
    }

    /**
     * 注销
     * @param request
     * @return
     */
    @RequestMapping("/logOut.do")
    public String logOut(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if(user == null){
            return "login";
        }
        request.getSession().removeAttribute("user");
        return "login";
    }

    @RequestMapping("/goToRegist.do")
    public String goToRegist() {
        return "regist";
    }

    /**
     * 注册
     * @param request
     * @return
     */
    @RequestMapping("/regist.do")
    public String regist(HttpServletRequest request){
        boolean flag = false;
        try {
            flag = userService.regist(request);
        }catch (Exception e){
            e.printStackTrace();
        }
         if (flag){
             return  "login";
         }else{
             return  "";
         }
    }

}
