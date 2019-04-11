package com.bysj.fy.controller;

import com.bysj.fy.bean.User;
import com.bysj.fy.service.UserService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;


@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping("/login")
    public void login(HttpServletRequest request, HttpServletResponse response,String userName,String password) {
        response.setCharacterEncoding("UTF-8");
        PrintWriter pw =null;
        boolean flag = false;
        Map<String,Object> resultMap = new HashMap<String,Object>();
        try {
            flag = userService.isLogin(request,userName,password);
            pw = response.getWriter();
            if (flag){
                resultMap.put("flag",true);
            }else {
                resultMap.put("flag",false);
                resultMap.put("msg","账号密码不匹配，请重新输入！");
            }
            JSONObject jsonObject = JSONObject.fromObject(resultMap);
            pw.write(jsonObject.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            pw.flush();
            pw.close();
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
