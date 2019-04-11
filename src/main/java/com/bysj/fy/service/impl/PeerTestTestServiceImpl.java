package com.bysj.fy.service.impl;

import com.bysj.fy.bean.En2Ch;
import com.bysj.fy.bean.User;
import com.bysj.fy.dao.PeerTestDao;
import com.bysj.fy.dao.UserDao;
import com.bysj.fy.service.PeerTestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class PeerTestTestServiceImpl implements PeerTestService {
    @Autowired
    private PeerTestDao peerTestDao;
    @Autowired
    private UserDao userDao;

    @Override
    public List<En2Ch> getEn2ChList() throws Exception {
        return peerTestDao.getEn2ChList();
    }

    @Override
    public int getGrade(HttpServletRequest request,int id) throws Exception {
        int grade = userDao.getGrade(id);
        request.getSession().setAttribute("grade",grade);
        return grade;

    }

    @Override
    public void getGrade(HttpServletRequest request) throws Exception {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        int grade = 0;
        String q1 = request.getParameter("q1");
        String trueA1 = peerTestDao.getChByEn(q1);
        String userA1 = request.getParameter("a1");
        if (trueA1.equals(userA1)) {
            grade++;
        }

        String q2 = request.getParameter("q2");
        String trueA2 = peerTestDao.getChByEn(q2);
        String userA2 = request.getParameter("a2");
        if (trueA2.equals(userA2)) {
            grade++;
        }

        String q3 = request.getParameter("q3");
        String trueA3 = peerTestDao.getChByEn(q3);
        String userA3 = request.getParameter("a3");
        if (trueA3.equals(userA3)) {
            grade++;
        }

        String q4 = request.getParameter("q4");
        String trueA4 = peerTestDao.getChByEn(q4);
        String userA4 = request.getParameter("a4");
        if (trueA4.equals(userA4)) {
            grade++;
        }

        String q5 = request.getParameter("q5");
        String trueA5 = peerTestDao.getChByEn(q5);
        String userA5 = request.getParameter("a5");
        if (trueA5.equals(userA5)) {
            grade++;
        }

        String q6 = request.getParameter("q6");
        String trueA6 = peerTestDao.getChByEn(q6);
        String userA6 = request.getParameter("a6");
        if (trueA6.equals(userA6)) {
            grade++;
        }

        String q7 = request.getParameter("q7");
        String trueA7 = peerTestDao.getChByEn(q7);
        String userA7 = request.getParameter("a7");
        if (trueA7.equals(userA7)) {
            grade++;
        }

        String q8 = request.getParameter("q8");
        String trueA8 = peerTestDao.getChByEn(q8);
        String userA8 = request.getParameter("a8");
        if (trueA8.equals(userA8)) {
            grade++;
        }

        String q9 = request.getParameter("q9");
        String trueA9 = peerTestDao.getChByEn(q9);
        String userA9 = request.getParameter("a9");
        if (trueA9.equals(userA9)) {
            grade++;
        }

        String q10 = request.getParameter("q10");
        String trueA10 = peerTestDao.getChByEn(q10);
        String userA10 = request.getParameter("a10");
        if (trueA10.equals(userA10)) {
            grade++;
        }
        userDao.saveGrade(user.getId(), grade);

        session.setAttribute("grade", grade);


    }
}
