package com.bysj.fy.dao;

import com.bysj.fy.bean.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.Date;

@Mapper
public interface UserDao {

    User isLogin(@Param("userName") String userName, @Param("password") String password) throws Exception;

    int regist(@Param("userName") String userName, @Param("password") String password, @Param("telPhone") String telPhone, @Param("createDate") String createDate) throws Exception;

    int saveGrade(@Param("id") int id, @Param("grade") int grade) throws Exception;

    int getGrade(int id) throws Exception;
}
