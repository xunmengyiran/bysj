package com.bysj.fy.service;


import javax.servlet.http.HttpServletRequest;

public interface StudyService {

    String tanslateWordAndGrammar(HttpServletRequest request,String inputValue,String type) throws Exception;
}
