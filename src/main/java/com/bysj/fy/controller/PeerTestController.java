package com.bysj.fy.controller;

import com.bysj.fy.bean.En2Ch;
import com.bysj.fy.bean.User;
import com.bysj.fy.service.PeerTestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/test")
public class PeerTestController {
    @Autowired
    private PeerTestService peerTestService;

    @RequestMapping("/goToTestPage.do")
    public String goToTestPage(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if(user == null){
            return "login";
        }
        try {
            List<En2Ch> en2ChList = peerTestService.getEn2ChList();
            session.setAttribute("en2ChList",en2ChList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "test_page";
    }

    @RequestMapping("/getGrade.do")
    public String getGrade(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if(user == null){
            return "login";
        }
        try {
            peerTestService.getGrade(request);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "result";
    }

    @RequestMapping("/goToGradePage.do")
    public String goToGradePage(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        if(user == null){
            return "login";
        }
        try {
            peerTestService.getGrade(request,user.getId());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "result";
    }
}
