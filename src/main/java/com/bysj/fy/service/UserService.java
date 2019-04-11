package com.bysj.fy.service;


import javax.servlet.http.HttpServletRequest;

public interface UserService {

    boolean isLogin(HttpServletRequest request,String userName,String password) throws Exception;

    boolean regist(HttpServletRequest request) throws  Exception;
}
