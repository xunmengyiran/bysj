package com.bysj.fy.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserDao {

int isLogin(@Param("userName") String userName,@Param("password") String password) throws Exception;
}
