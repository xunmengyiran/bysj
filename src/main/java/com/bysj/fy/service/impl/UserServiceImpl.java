package com.bysj.fy.service.impl;

import com.bysj.fy.dao.UserDao;
import com.bysj.fy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;


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
        String userName = "1111";
        String password = "222";
        int count = userDao.isLogin(userName,password);
        System.out.println("count"+count);
        return false;
    }
}
