package com.bysj.fy.service;


import javax.servlet.http.HttpServletRequest;

public interface UserService {

    boolean isLogin(HttpServletRequest request) throws Exception;

    boolean logOut(HttpServletRequest request) throws  Exception;
}
