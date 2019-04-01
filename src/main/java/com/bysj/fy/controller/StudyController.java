package com.bysj.fy.controller;

import com.bysj.fy.bean.User;
import com.bysj.fy.service.StudyService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/study")
public class StudyController {
    @Autowired
    StudyService studyService;

    @RequestMapping("/goToStudyWord")
    public String goToStudyWord(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if(user == null){
            return "login";
        }
        return "word_study";
    }

    @PostMapping("/tanslate")
    public void tanslateWordAndGrammar(HttpServletRequest request, HttpServletResponse response, String inputValue,String type){
        response.setCharacterEncoding("UTF-8");
        PrintWriter pw = null;
        try {
            pw = response.getWriter();
            try {
                String result = studyService.tanslateWordAndGrammar(request,inputValue,type);
                Map<String,Object> resultMap = new HashMap<String,Object>();
                resultMap.put("result",result);
                JSONObject jsonObject = JSONObject.fromObject(resultMap);
                pw.write(jsonObject.toString());
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            pw.flush();
            pw.close();
        }

    }

    @RequestMapping("/goToStudyGrammar")
    public String goToStudyGrammar(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if(user == null){
            return "login";
        }
        return "grammar_study";
    }
}
