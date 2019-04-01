package com.bysj.fy.dao;

import com.bysj.fy.bean.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface StudyDao {
    String tanslateWord(String inputValue) throws Exception;
    String tanslateGrammar(String inputValue) throws Exception;
}
