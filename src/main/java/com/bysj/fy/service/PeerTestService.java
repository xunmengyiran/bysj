package com.bysj.fy.service;

import com.bysj.fy.bean.En2Ch;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface PeerTestService {

    List<En2Ch> getEn2ChList() throws Exception;

    int getGrade(HttpServletRequest request,int id) throws Exception;

    void getGrade(HttpServletRequest request) throws Exception;
}
