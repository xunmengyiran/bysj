package com.bysj.fy.service.impl;

import com.bysj.fy.bean.User;
import com.bysj.fy.dao.StudyDao;
import com.bysj.fy.dao.UserDao;
import com.bysj.fy.service.StudyService;
import com.bysj.fy.service.UserService;
import com.bysj.fy.utils.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;


@Service
public class StudyServiceImpl implements StudyService {

    @Autowired
    private StudyDao studyDao;

    @Override
    public String tanslateWordAndGrammar(HttpServletRequest request, String inputValue, String type) throws Exception {
        String tableName = "";
        String result = "";
        if ("1".equals(type)) {
            result = studyDao.tanslateWord(inputValue);
        }
        if ("2".equals(type)) {
            result = studyDao.tanslateGrammar(inputValue);
        }
        if (result == null) {
            result = Util.Trans("en", "zh", inputValue);
        }
        return result;
    }
}
