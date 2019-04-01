package com.bysj.fy.dao;

import com.bysj.fy.bean.En2Ch;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PeerTestDao {

    List<En2Ch> getEn2ChList() throws Exception;

    String getChByEn(String en) throws Exception;
}
