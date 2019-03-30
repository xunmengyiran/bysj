package com.bysj.fy.service.impl;

import com.bysj.fy.bean.User;
import com.bysj.fy.dao.UserDao;
import com.bysj.fy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;


@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    /**
     * 登录
     *
     * @param request
     * @return
     * @throws Exception
     */
    @Override
    public boolean isLogin(HttpServletRequest request) throws Exception {
        System.out.println("==========>>");
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        User user = userDao.isLogin(userName,password);
//        System.out.println("count"+count);
        if(user != null && !"".equals(user)) {
            request.getSession().setAttribute("user",user);
            return true;
        } else {
            return false;
        }
    }

    /**
     * 注销
     *
     * @param request
     * @return
     * @throws Exception
     */
    @Override
    public boolean logOut(HttpServletRequest request) throws  Exception {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String telPhone = request.getParameter("telPhone");
        Date now = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //获取String类型的时间
        String createDate = sdf.format(now);

        int id = userDao.logOut(userName,password,telPhone,createDate);
        if (id > 0){
            return  true;
        }else{
            return false;
        }
    }
}
